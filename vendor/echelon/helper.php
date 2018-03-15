<?php

require_once VENDOR_FOLDER . 'ml/autoload.php';
require_once VENDOR_FOLDER . 'stringfy/autoload.php';

use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WhitespaceTokenizer;
use Phpml\Classification\MLPClassifier;
use Phpml\NeuralNetwork\ActivationFunction\PReLU;
use Phpml\NeuralNetwork\ActivationFunction\Sigmoid;
use Phpml\NeuralNetwork\Layer;
use Phpml\NeuralNetwork\Node\Neuron;

class Echelon_Helper
{
    private static $_response = [];
    private static $_agent = [];

    private static function _addResponse($key,$value)
    {

        self::$_response[$key] = $value;
    }

    private static function _getResponseByKey($key)
    {
        return self::$_response[$key];
    }

    public static function _getResponse(){

        return self::$_response;
    }

    private static function _setAgent($agent)
    {
        self::$_agent = $agent;
    }

    private static function _getAgent()
    {
        return self::$_agent;
    }

    private static function _getIntent($action)
    {
        $CI = & get_instance();

        if (is_string($action))
        {
            $CI->db->where("action",$action);
            $intent = $CI->db->get("tblintents")->row();

            return $intent;
        }

        return false;
    }

    private static function _predictIntent($pattern = "")
    {

        $CI = & get_instance();
        $stringfy = new \DDTextCompare\DDTextCompare();

        /**
         * TODO
         * Predict the intent
         */

        $patterns = [];
        $agent = self::_getAgent();

        /** Get all User Says */
        $CI->db->select('tblintentusersays.id,tblintentusersays.intentid,tblintentusersays.usersay');
        $CI->db->from('tblintentusersays');
        $CI->db->join('tblintents', 'tblintents.id = tblintentusersays.intentid');
        $CI->db->where('tblintents.parentid',0);
        $user_says = $CI->db->get()->result_array();

        if ($user_says)
        {
            foreach ($user_says as $user_say)
            {
                $score = $stringfy->compare($pattern,$user_say["usersay"]);
                if ($score >= $agent->threshold) {
                    $patterns["tblintents-" . $user_say["intentid"] . '-' . $user_say["id"]] = array(
                        "id" => "tblintents-" . $user_say["intentid"] . '-' . $user_say["id"],
                        "pattern" => $user_say["usersay"],
                        "score" => round($score, 5)
                    );
                }
            }
        }

        if ($agent->small_talk) {
            /** Get all Small Talks */
            $small_talks = $CI->db->get("tblsmalltalkreferences")->result_array();

            if ($small_talks) {
                foreach ($small_talks as $small_talk) {
                    $score = $stringfy->compare($pattern, $small_talk["pattern"]);

                    if ($score >= $agent->threshold) {
                        $patterns["tblsmalltalks-" . $small_talk["smalltalkid"] . '-' . $small_talk["id"]] = array(
                            "id" => "tblsmalltalks-" . $small_talk["smalltalkid"] . '-' . $small_talk["id"],
                            "pattern" => $small_talk["pattern"],
                            "score" => round($score, 5)
                        );
                    }
                }
            }
        }

        if ($agent->echelon) {
            /** Get all Echelon Patterns */
            $echelon_patterns = $CI->db->get("tblecheloncategorypatterns")->result_array();

            if ($echelon_patterns) {
                foreach ($echelon_patterns as $echelon_pattern) {
                    $score = $stringfy->compare($pattern, $echelon_pattern["pattern"]);

                    if ($score >= $agent->threshold) {
                        $patterns["tblechelon-" . $echelon_pattern["categoryid"] . '-' . $echelon_pattern["id"]] = array(
                            "id" => "tblechelon-" . $echelon_pattern["categoryid"] . '-' . $echelon_pattern["id"],
                            "pattern" => $echelon_pattern["pattern"],
                            "score" => round($score, 5)
                        );
                    }
                }
            }
        }

        /** Add google suggestion to final response */
        self::_addResponse("pattern",$pattern);
        self::_addResponse("textToSpeech",self::getKeywordSuggestionsFromGoogle($pattern));

        /** Sort first 5 possible patterns */
        $scores = array_column($patterns, 'score','id');
        arsort($scores);

        self::_log($scores);
        /**
         * @var  $intent
         * Get the highest scored pattern
         */
        $targetIntent = ($patterns[key($scores)]);
        self::_addResponse("score",$targetIntent["score"]);
        return $targetIntent["id"];

    }

    private static function _log($data)
    {
        /**
         * TODO
         */
        require_once (VENDOR_FOLDER."echelon/log.php");

        $filepath = TEMP_FOLDER."echelon/log.txt";

        // Logging class initialization
        $log = new Echelon_Logging();

        // set path and name of log file (optional)
        $log->lfile($filepath);

        // write message to the log file
        $log->lwrite(json_encode($data));

        // close log file
        $log->lclose();


    }

    private static function _getPrompts($intent)
    {

        $CI = & get_instance();

        /**
         * TODO - Change query to CI standard
         */
        $sql = "SELECT i.id,i.action,e.entity_name,iap.prompt FROM tblintents i
          LEFT JOIN tblintentactionprompts iap ON (i.id = iap.intentid)
          LEFT JOIN tblentities e ON(e.id = iap.entityid) WHERE i.agentid = '".$intent->agentid."' AND i.userid = '".$intent->userid."' AND e.entity_name = 'drink'";

        $prompt = $CI->db->query($sql)->row();

        if ($prompt) {
            return $prompt;
        }

        return false;
    }

    private static function _predictResponse($targetSource)
    {
        $CI = & get_instance();

        /**
         * Parse the Target Source
         */
        $target = explode("-",$targetSource);
        $table = $target[0]; // target table name
        $row = $target[1]; // @id of the row
        $targetRow = $target[2]; //target row

        if ($table == "tblintents")
        {
            $CI->db->where("id",$row);
            $intent = $CI->db->get($table)->row();
            /**
             * Add to final response
             */
            self::_addResponse("action",$intent->action);
            self::_addResponse("actionIncomplete",($intent->is_end ? false : true));

            $responses = self::_prepareResponse("intent", $row);

        } else if ($table == "tblsmalltalks")
        {
            $CI->db->where("id",$row);
            $smalltalk = $CI->db->get($table)->row();

            $responses = self::_prepareResponse("smalltalk",$row,$targetRow);

        }else if ($table == "tblechelon")
        {
            $CI->db->where("id",$row);
            $echelon = $CI->db->get($table)->row();

            $responses = self::_prepareResponse("echelon",$row,$targetRow);
        }

        return $responses;
    }

    private static function _prepareResponse($source,$target,$row="")
    {
        $CI = & get_instance();

        if (is_numeric($target))
        {
            if ($source == "intent"){

                $CI->db->where("intentid",$target);
                $responses = $CI->db->get("tblintentresponses")->result_array();

                if ($responses) {
                    return $responses;
                }

                return false;
            } elseif ($source == "smalltalk"){

                $CI->db->where("id",$row);
                $CI->db->where("smalltalkid",$target);
                $responses = $CI->db->get("tblsmalltalkreferences")->result_array();

                if ($responses) {

                    return $responses;
                }

                return false;
            } elseif ($source == "echelon"){

                $CI->db->where("categoryid",$target);
                $CI->db->where("patternid",$row);
                $responses = $CI->db->get("tblecheloncategoryresponses")->result_array();

                if ($responses) {
                    return $responses;
                }

                return false;
            }
        }

        return false;
    }

    public static function __getFinalResponse()
    {


        return self::_getResponse();
    }

    private static function _getRequiredParameters($agent,$parameters)
    {

        $CI = & get_instance();
        $stringfy = new \DDTextCompare\DDTextCompare();
        $requestedParameters = self::getRequestedParameters($agent);

        $parameters = json_decode($parameters);

            foreach ($parameters as $parameter)
            {
                if ($parameter->is_required) {
                    $requiredParameters[$parameter->parameter_name] = $requestedParameters[$parameter->parameter_name];
                    $requiredParameters[$parameter->parameter_name . '.original'] = self::_getParameterOriginal($stringfy,$requestedParameters[$parameter->parameter_name]);
                }
            }

        return $requiredParameters;
    }

    private static function _getParameters($agent,$parameters)
    {

        $CI = & get_instance();
        $requiredParameters = self::_getRequiredParameters($agent,$parameters);

        $parameters = json_decode($parameters);

        foreach ($parameters as $parameter)
        {
            $intent_parameters[$parameter->parameter_name] = $requiredParameters[$parameter->parameter_name.'.original'];
        }

        return $intent_parameters;
    }

    private static function _getParameterOriginal($stringfy,$value){

        $CI = & get_instance();

        if ($value) {
            $CI->db->like('synonyms', strtolower($value), 'both');
            $entities = $CI->db->get('tblentityreferences')->result_array();

            foreach ($entities as $entity){

                $scored = round($stringfy->compare($entity['reference'],$value) , 1, PHP_ROUND_HALF_UP);
                $entitiesArray[$scored] = array(
                    "score"=>$scored,
                    "reference"=>$entity['reference']
                );
            }
            $score = array_column($entitiesArray, 'score');
            return $entitiesArray[max($score)]['reference'];
        }

        return false;
    }

    private static function getRequestedParameters($agent)
    {
        $CI = & get_instance();

        $requestedParameters = array();

        $CI->db->select('tblentities.entity_name,tblentityreferences.reference,tblentityreferences.synonyms');
        $CI->db->from('tblentityreferences');
        $CI->db->join('tblentities', 'tblentities.id = tblentityreferences.entityid');
        $CI->db->where('tblentities.agentid',$agent);
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

                if (strstr(strtolower(self::_getResponseByKey("pattern")), strtolower($word))){

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


    public static function _train()
    {
        return __METHOD__;
    }

    public static function _hybird($agent,$request)
    {

        self::_setAgent($agent);

        $predictedSource = self::_predictIntent($request["usersay"]);

        $predictedResponses = self::_predictResponse($predictedSource);

        return self::_process($agent,$request,$predictedSource,$predictedResponses);
    }

    public static function _process($agent,$request,$predicted_source,$predicted_response)
    {
        $CI = & get_instance();

        $intent = self::_getIntent(self::_getResponseByKey("action"));

        $requiredParameters = self::_getRequiredParameters($intent->agentid,$intent->action_parameters);

        $parameters = self::_getParameters($intent->agentid,$intent->action_parameters);

        /** Add required parameters to final response */
        self::_addResponse("parameters",$parameters);
        self::_addResponse("requiredParameters",$requiredParameters);

        /** Set intent context & parameters */

        self::_setContext($request,$intent,$parameters);



        /**
         * TODO
         * Check if Intent has prompt(s)
         */
        $prompt = self::_getPrompts($intent);

        if ($predicted_source && !$prompt) {

            self::_addResponse("source",$agent->agent_name);
            self::_addResponse("speech",$predicted_response[array_rand($predicted_response)]['response']);

            return self::__getFinalResponse();
        } elseif ($predicted_source && $prompt) {

            self::_addResponse("source",$agent->agent_name);
            self::_addResponse("speech",$prompt->prompt);

            return self::__getFinalResponse();
        } else {
            return self::_getDefaultFallbackResponse($agent);
        }

    }

    private static function _setContext($request,$intent,$parameters)
    {
        $CI = & get_instance();

        $intent_output_contexts = json_decode($intent->output_contexts);

        foreach ($intent_output_contexts as $intent_output_context)
        {
            $CI->db->where("session_id",$request["session"]);
            $CI->db->where("context_name",$intent_output_context);

            $context = $CI->db->get("tblcontexts")->row();

            if ($context){

                $contextParameters = json_decode($context->parameters);

                foreach ($contextParameters as $key=>$contextParameter){

                    if (empty($newContextParameters[$key]) || $newContextParameters[$key] == false) {
                        $newContextParameters[$key] = $parameters[$key];
                    } else {
                        $newContextParameters[$key] = $contextParameter;
                    }
                }
                $CI->db->where("id",$context->id);
                $CI->db->update("tblcontexts",array("parameters"=>json_encode($newContextParameters)));

            } else {
                $contextData = array(
                    "session_id"=>$request["session"],
                    "context_name"=>$intent_output_context,
                    "parameters"=>json_encode($parameters)
                );

                $CI->db->insert("tblcontexts",$contextData);
            }

            self::_addResponse("parameters",$newContextParameters);
        }
    }

    private static function _getDefaultFallbackResponse($agent){

        $CI = & get_instance();

        $CI->db->where('intent_name','Default Fallback Intent');
        $CI->db->where('agentid',$agent->agentid);
        $defaultFallbackIntent = $CI->db->get('tblintents')->row();

        $CI->db->where('intentid', $defaultFallbackIntent->id);
        $CI->db->order_by('id', 'RANDOM');
        $CI->db->limit(1);
        $defaultFallback = $CI->db->get('tblintentresponses')->row();

        self::_addResponse("action",$defaultFallbackIntent->action);
        self::_addResponse("source",$agent->agent_name);
        self::_addResponse("speech",$defaultFallback->response);

        return self::__getFinalResponse();
    }

    public static function _testBot()
    {


        $vectorizer = new TokenCountVectorizer(new WhitespaceTokenizer());

        $patterns = [
            'Who are you?',
            "How old are you?",
            "How old is she?"
        ];

        $vectorizer = new TokenCountVectorizer(new WhitespaceTokenizer());

        // Build the dictionary.
        $vectorizer->fit($patterns);

        // Transform the provided text samples into a vectorized list.
        $vectorizer->transform($patterns);


        $layer1 = new Layer(2, Neuron::class, new PReLU);
        $layer2 = new Layer(2, Neuron::class, new Sigmoid);

        $mlp = new MLPClassifier(7, [$layer1, $layer2], ['i am fine', 'i am 30yo','she is 24']);

        $mlp->train(
            $samples = $patterns,
            $targets = ['i am fine', 'i am 30yo','she is 24']
        );

        $mlp->setLearningRate(0.75);

        $predicted = $mlp->predict([[0,1,1,1,1,0,0],[1,1,1,0,0,0,0]]);

        print_r(array("Predictions"=>$predicted));
    }

    private static function LevenshteinDistance($s1, $s2)
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

    public static function getKeywordSuggestionsFromGoogle($keyword) {
        $keywords = array();
        $data = file_get_contents('http://suggestqueries.google.com/complete/search?output=firefox&client=firefox&hl=en-US&q='.urlencode($keyword));
        if (($data = json_decode($data, true)) !== null) {
            $keywords = $data[1];
        }

        return $keywords;
    }
}