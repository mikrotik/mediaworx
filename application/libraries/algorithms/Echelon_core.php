<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once VENDOR_FOLDER.'/matcher/autoload.php';
require_once VENDOR_FOLDER.'/stringfy/autoload.php';

class Echelon_Core
{
    /**
     * TODO - Echelon Core
     * Later change all standard MySql Queries
     * into CI
     */
    private $_access_token;
    private $agent;
    private $confidence = 20;

    /** @var array  */
    public $currentConversationData = [];

    public function _setAccessToken($token){

        $this->_access_token = $token;
    }

    public function _getGetAccessToken()
    {
        return $this->_access_token;
    }

    public function _setAgent(){

        $CI = & get_instance();

        $CI->db->where('client_access_token',$this->_getGetAccessToken());
        $agent = $CI->db->get('tblagents')->row();

        $this->agent = $agent;
    }

    public function _getAgent()
    {
        return $this->agent;
    }

    public function UserSays($usersay)
    {
        $CI = & get_instance();

        $ddTextCompare = new DDTextCompare\Comparator\Cosine();

        $clientUserSays = array();
        $mergedUserSays = array();

        $userSaysList = array();

        $sqlClientUserSays = "SELECT i.id,i.is_end,i.userid,i.intent_name,i.action,i.action_parameters,ius.usersay,ius.parameters,iur.response FROM tblintents i
            LEFT JOIN tblintentusersays ius ON(i.id = ius.intentid)
            LEFT JOIN tblintentresponses iur ON(i.id = iur.intentid)
            WHERE i.agentid = '".$this->agent->agentid."' AND i.parentid = 0 AND i.status = 1 AND i.is_default = 0 AND i.userid = '".$this->agent->userid."'";

        $clientUserSays = $CI->db->query($sqlClientUserSays)->result_array();

        $sqlMergedUserSays = "SELECT i.id,i.is_end,i.userid,i.intent_name,i.action,i.action_parameters,ius.usersay,ius.parameters,iur.response FROM tblintents i
                LEFT JOIN tblintentusersays ius ON(i.id = ius.intentid)
                LEFT JOIN tblintentresponses iur ON(i.id = iur.intentid)
                WHERE i.parentid = 0 AND i.status = 1 AND i.userid = 0 AND i.is_default = 0 AND i.merge = 1";

        $clientMergeSays = $CI->db->query($sqlMergedUserSays)->result_array();

        $userSaysList = array_merge($clientUserSays,$clientMergeSays);

        /**
         * Check if Small Talks are enabled
         * if so override the response
         */

        if ($this->agent->small_talk){

            $sqlClientSmallTalk = "SELECT st.id,st.small_talk_name,st.action,str.id AS smalltalk,str.question,str.answer FROM tblsmalltalks st
            LEFT JOIN tblsmalltalkreferences str ON (st.id = str.smalltalkid)
            WHERE st.agentid = '".$this->agent->agentid."' AND st.userid = '".$this->agent->userid."'";

            $agentSmallTalks = $CI->db->query($sqlClientSmallTalk)->result_array();

            foreach ($agentSmallTalks as $agentSmallTalk) {

                if (!empty($agentSmallTalk['answer'])) {
                    $smallTalk = array(
                        "id" => $agentSmallTalk['smalltalk'],
                        "userid" => $this->agent->userid,
                        "intent_name" => $agentSmallTalk['small_talk_name'],
                        "action" => $agentSmallTalk['action'],
                        "usersay" => $agentSmallTalk['question'],
                        "action_parameters" => null,
                        "response" => $agentSmallTalk['answer'],
                        'is_end'=>0
                    );

                    array_push($userSaysList, $smallTalk);
                }
            }
        }

        /**
         * TODO - Echelon Confidence
         * Improve the confidence of Echelon
         */

        $confidentData = array();

        foreach ($userSaysList as $pattern){

            $distance = Echelon_Core::LevenshteinDistance($pattern['usersay'],$usersay);
            if ($distance <= $this->confidence) {

                $score = round($ddTextCompare->compare($pattern['usersay'],$usersay) , 1, PHP_ROUND_HALF_UP);

                $confidentData[$distance] = array(
                    "id"=>$pattern["id"],
                    "action"=>$pattern["action"],
                    "requested_pattern"=>$usersay,
                    "pattern"=>$pattern['usersay'],
                    "tags"=>explode(" ",$pattern['usersay']),
                    "action_parameters"=>$pattern['action_parameters'],
                    "distance" => $distance,
                    "score"=>$score,
                    "is_end"=>$pattern['is_end']
                );
            }
        }

        $standardData = array();

        foreach ($confidentData as $data){

            $patternThreshold = round($data['score'], 2) + $data['score'];
            if (round($patternThreshold, 2) >= $this->agent->threshold) {
                $standardData[$patternThreshold] = array(
                    "id" => $data["id"],
                    "action" => $data["action"],
                    "pattern" => $data['pattern'],
                    "action_parameters" => $data['action_parameters'],
                    "score" => $patternThreshold,
                    "is_end"=>$data['is_end']
                );
            }
        }
        $score = array_column($standardData, 'score');
        return $standardData[max($score)];
    }

    public function setCoversationLog($data){

        $CI = & get_instance();

        $conversationData = array(
            "session_id"=>$data['session'],
            "agentid"=>$this->agent->agentid,
            "pattern"=>$data['pattern'],
            "response"=>$data['fulfillment']['speech'],
            "timestamp"=>date("Y-m-d H:i:s")
        );

        $CI->db->insert("tblconversation_log",$conversationData);

    }

    public static function LevenshteinDistance($s1, $s2)
    {
        $sLeft = (strlen($s1) > strlen($s2)) ? $s1 : $s2;
        $sRight = (strlen($s1) > strlen($s2)) ? $s2 : $s1;
        $nLeftLength = strlen($sLeft);
        $nRightLength = strlen($sRight);
        if ($nLeftLength == 0)
            return $nRightLength;
        else if ($nRightLength == 0)
            return $nLeftLength;
        else if ($sLeft === $sRight)
            return 0;
        else if (($nLeftLength < $nRightLength) && (strpos($sRight, $sLeft) !== FALSE))
            return $nRightLength - $nLeftLength;
        else if (($nRightLength < $nLeftLength) && (strpos($sLeft, $sRight) !== FALSE))
            return $nLeftLength - $nRightLength;
        else {
            $nsDistance = range(1, $nRightLength + 1);
            for ($nLeftPos = 1; $nLeftPos <= $nLeftLength; ++$nLeftPos)
            {
                $cLeft = $sLeft[$nLeftPos - 1];
                $nDiagonal = $nLeftPos - 1;
                $nsDistance[0] = $nLeftPos;
                for ($nRightPos = 1; $nRightPos <= $nRightLength; ++$nRightPos)
                {
                    $cRight = $sRight[$nRightPos - 1];
                    $nCost = ($cRight == $cLeft) ? 0 : 1;
                    $nNewDiagonal = $nsDistance[$nRightPos];
                    $nsDistance[$nRightPos] =
                        min($nsDistance[$nRightPos] + 1,
                            $nsDistance[$nRightPos - 1] + 1,
                            $nDiagonal + $nCost);
                    $nDiagonal = $nNewDiagonal;
                }
            }
            return $nsDistance[$nRightLength];
        }
    }

    /**
     *  Pattern Compare Algorithm Starts
     */

    public function _compare($articles,$target){

        $tags = $this->tags_to_point($articles);
        $target = explode(" ",$target);
        $compare = array_fill_keys($target, 1) + $tags;

        foreach($articles as $article) {
            $ak = array_fill_keys($article['tags'], 1) + $tags;
            $score =  $this->cosine($compare, $ak);
        }

        return $score;
    }

    public function tags_to_point($articles) {
        $tags = array();
        foreach($articles as $article) {
            $tags = array_merge($tags, $article['tags']);
        }
        $tags = array_unique($tags);

        $tags = array_fill_keys($tags, 0);
        ksort($tags);
        return $tags;
    }

    protected function dot_product($a, $b) {
        $products = array_map(function($a, $b) {
            return $a * $b;
        }, $a, $b);
        return array_reduce($products, function($a, $b) {
            return $a + $b;
        });
    }

    protected function magnitude($point) {
        $squares = array_map(function($x) {
            return pow($x, 2);
        }, $point);
        return sqrt(array_reduce($squares, function($a, $b) {
            return $a + $b;
        }));
    }

    public function cosine($a, $b) {
        ksort($a);
        ksort($b);
        return $this->dot_product($a, $b) / ($this->magnitude($a) * $this->magnitude($b));
    }
    /**
     * ./Pattern Compare Algorithm Ends
     */

    public function getKeywordSuggestionsFromGoogle($keyword) {
        $keywords = array();
        $data = file_get_contents('http://suggestqueries.google.com/complete/search?output=firefox&client=firefox&hl=en-US&q='.urlencode($keyword));
        if (($data = json_decode($data, true)) !== null) {
            $keywords = $data[1];
        }

        return array_slice($keywords, 0, 3);
    }

    public function getIntentParameters($action_parameters)
    {
        $parameters = json_decode($action_parameters);
        $actionParameters = array();

        if ($parameters)
        {
            foreach ($parameters as $parameter){
                $actionParameters[$parameter->parameter_name] = "";
            }

            return $actionParameters;
        }

        return false;
    }
}