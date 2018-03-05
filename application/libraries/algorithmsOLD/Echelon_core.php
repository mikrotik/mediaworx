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

    /** @var array $request */
    public $request = [];

    /** @var array $intent */
    public $intent = [];

    /** @var array $action_parameters */
    public $action_parameters = [];

    /** @var array $required_action_parameters */
    public $required_action_parameters = [];

    /** @var array $requested_action_parameters */
    public $requested_action_parameters = [];

    /** @var array  */
    public $currentConversationData = [];

    /** @var bool  */
    public $has_prompt = false;

    public $prompt;

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

    public function _setIntentActionParameters($key,$value){

        if (empty($this->action_parameters[$key])) {
            $this->action_parameters[$key] = $value;
        }
    }

    public function UserSays($usersay)
    {
        $CI = & get_instance();

        $ddTextCompare = new DDTextCompare\Comparator\Cosine();

        $clientUserSays = array();
        $mergedUserSays = array();

        $userSaysList = array();

        $sqlClientUserSays = "SELECT i.id,i.is_end,i.userid,i.intent_name,i.action,i.action_parameters,ius.usersay,ius.parameters,i.input_contexts,i.output_contexts,iur.response FROM tblintents i
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
                        "input_contexts"=>null,
                        "output_contexts"=>null,
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
                    "input_contexts"=>$pattern['input_contexts'],
                    "output_contexts"=>$pattern['output_contexts'],
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
                    "input_contexts"=>$data['input_contexts'],
                    "output_contexts"=>$data['output_contexts'],
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
            "pattern"=>trim($data['pattern']),
            "response"=>$data['fulfillment']['speech'],
            "timestamp"=>date("Y-m-d H:i:s"),
            "parameters"=>json_encode($this->action_parameters),
            "is_end"=>$this->intent["is_end"]
        );


        $log_id = $CI->db->insert("tblconversation_log",$conversationData);


        /**
         * Get intent input contexts
         */
        $input_contexts = json_decode($this->intent["input_contexts"]);

        foreach ($input_contexts as $input_context){

            $CI->db->where("context_name",$input_context);
            $CI->db->update("tblcontexts",array("parameters"=>json_encode($this->action_parameters)));
        }

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

    public function getRequestedParameters($usersay)
    {
        $CI = & get_instance();

        $requestedParameters = array();

        $CI->db->select('tblentities.entity_name,tblentityreferences.reference,tblentityreferences.synonyms');
        $CI->db->from('tblentityreferences');
        $CI->db->join('tblentities', 'tblentities.id = tblentityreferences.entityid');
        $CI->db->where('tblentities.agentid',$this->agent->agentid);
        $synonyms = $CI->db->get()->result_array();

        if (!$synonyms){

            $CI->db->select('tblentities.entity_name,tblentityreferences.reference,tblentityreferences.synonyms');
            $CI->db->from('tblentityreferences');
            $CI->db->join('tblentities', 'tblentities.id = tblentityreferences.entityid');
            $CI->db->where('tblentities.agentid',0);
            $synonyms = $CI->db->get()->result_array();
        }

        $parameters=array();
        foreach ($synonyms as $synonym){

            $words = explode(',',$synonym['synonyms']);

            foreach ($words as $word){

                if (strstr(strtolower($usersay), strtolower($word))){

                    $parameters[] = array(
                        'parameter_name' => $synonym['entity_name'],
                        'entity' => '@'.$synonym['entity_name'],
                        'resolved_value' => $word,
                    );
                }
            }
        }

        if ($parameters){

            foreach ($parameters as $parameter)
            {
                $requestedParameters[$parameter['parameter_name']] = $parameter['resolved_value'];
            }
        }
        return $requestedParameters;
    }

    public function _fillParameters()
    {
        $CI = &get_instance();

        $sql = "SELECT * FROM tblconversation_log WHERE session_id='".$this->request["session"]."' AND is_end = 0 order by timestamp desc";

        $last_conversation_data = $CI->db->query($sql)->row();

        /**
         * TODO
         * Set intent parameter values
         */
        $conversation_parameters = json_decode($last_conversation_data->parameters);

        foreach ($conversation_parameters as $key=>$parameter){
            $this->_setIntentActionParameters($key,$parameter);
        }

        foreach ($this->requested_action_parameters as $key=>$params){
            $this->_setIntentActionParameters($key,$this->requested_action_parameters[$key]);
        }
    }

    public function _intentActionPrompt()
    {

        $CI = & get_instance();

        /**
         * Check parameters
         */
        $intent_parameters = json_decode($this->intent["action_parameters"]);

        foreach ($intent_parameters as $intent_parameter){

            if ($intent_parameter->is_required && empty($this->action_parameters[$intent_parameter->parameter_name])){

                $sql = "SELECT i.id,i.action,e.entity_name,iap.prompt FROM tblintents i
          LEFT JOIN tblintentactionprompts iap ON (i.id = iap.intentid)
          LEFT JOIN tblentities e ON(e.id = iap.entityid) WHERE i.agentid = '".$this->agent->agentid."' AND i.userid = '".$this->agent->userid."' AND e.entity_name = '".$intent_parameter->parameter_name."'";

                $prompt = $CI->db->query($sql)->row();

                $this->has_prompt = true;
                $this->prompt = $prompt->prompt;

                return $this->_echelonResponse($this->intent["id"]);
            }
        }
    }

    public function _intentFollowup()
    {
        /**
         * TODO
         * load intent follow ups
         */

        return $this->_echelonResponse($this->intent["id"]);
    }

    public function _echelonResponse($id)
    {

        $CI = &get_instance();

        if (is_numeric($id)) {

            $CI->db->where('intentid', $id);
            $intentResponses = $CI->db->get('tblintentresponses')->result_array();

            if (!$intentResponses && $this->agent->small_talk) {

                $CI->db->where('id', $id);
                $intentResponses = $CI->db->get('tblsmalltalkreferences')->row();

                return array("response" => $intentResponses->answer);
            }
        }

        /**
         * TODO
         * If no response try suggestions
         * and if still no response
         * return Default Fallback
         */
        if (!$this->has_prompt) {

            if ($intentResponses) {

                    $speech = $this->_stringMatch($intentResponses);

            } else {
                $speech = $this->getDefaultFallbackResponse();
            }
        } else {
            $speech = $this->prompt;
        }

        /** Prepare response Data */
        $this->currentConversationData['session'] = $this->request['session'];
        $this->currentConversationData['pattern'] = $this->request['usersay'];
        $this->currentConversationData['action'] = $this->intent['action'];
        $this->currentConversationData['score'] = $this->intent['score'];
        $this->currentConversationData['intent'] = $this->intent;
        $this->currentConversationData['parameters'] = $this->action_parameters;
        $this->currentConversationData['actionIncomplete'] = ($this->intent['is_end'] ? false : true);
        $this->currentConversationData['fulfillment']['suggestions'] = $this->getKeywordSuggestionsFromGoogle($this->request['usersay']);
        $this->currentConversationData['fulfillment']['speech'] = ucfirst($speech);
        $this->currentConversationData['session_data'] = $CI->session->userdata('parameters');

        /** Set Conversation Log */
        $this->setCoversationLog($this->currentConversationData);

        return $this->currentConversationData;

    }

    public function _stringMatch($responses)
    {

        $CI = & get_instance();

        $predictions = array();

        $conversationParameters = array();
        foreach ($this->action_parameters as $key=>$parameter){
            $conversationParameters['@'.$key] = $this->action_parameters[$key];
        }

        $target = array();
        foreach ($conversationParameters as $parameters){

            $target[] = $this->getParameterOriginal($parameters);

        }

        $targets = implode(" ",$target);

        foreach ($responses as $response){

            $distance = Echelon_Core::LevenshteinDistance($response["response"],'$'.$targets);
            $predictions[$distance] = array(
                "distance"=>$distance,
                "response"=>$response["response"]
            );
        }

        /**
         * TODO
         * try to find the exact match response
         * #of variables of response and parameters passed has to match
         */
        $score = array_column($predictions, 'distance');
        return strtr(str_replace('$','@',$predictions[min($score)]["response"]),$conversationParameters);
    }

    public function getParameterOriginal($value){

        $CI = & get_instance();

        $ddTextCompare = new DDTextCompare\Comparator\Cosine();

        if ($value) {
            $CI->db->like('synonyms', strtolower($value), 'both');
            $entities = $CI->db->get('tblentityreferences')->result_array();

            foreach ($entities as $entity){

                $scored = round($ddTextCompare->compare($entity['reference'],$value) , 1, PHP_ROUND_HALF_UP);
                $entitiesArray[$scored] = array(
                    "score"=>$scored,
                    "reference"=>$entity['reference'],
                    "entity"=>strtolower($this->getEntity($entity["entityid"])->entity_name)
                );
            }
            $score = array_column($entitiesArray, 'score');
            return $entitiesArray[max($score)]['entity'];
        }

        return false;
    }

    public function getEntity($id)
    {
        $CI = & get_instance();

        $CI->db->where("id",$id);
        $entity = $CI->db->get("tblentities")->row();

        return $entity;
    }

    public function getDefaultFallbackResponse(){

        $CI = & get_instance();


        $CI->db->where('intent_name','Default Fallback Intent');
        $CI->db->where('agentid',$this->agent->agentid);
        $defaultFallbackIntent = $CI->db->get('tblintents')->row();



        $CI->db->where('intentid', $defaultFallbackIntent->id);
        $CI->db->order_by('id', 'RANDOM');
        $CI->db->limit(1);
        $defaultFallback = $CI->db->get('tblintentresponses')->row();

        $this->intent['action']=$defaultFallbackIntent->action;
        $this->intent['is_end']=$defaultFallbackIntent->is_end;
        $this->intent['score']=0;

        return $defaultFallback->response;

    }
}