<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once VENDOR_FOLDER.'/matcher/autoload.php';
require_once VENDOR_FOLDER.'/stringfy/autoload.php';

class Mediaworx_Hybird
{
    /** @var  @var Event Collection */
    protected $event;

    /** @var  Action */
    protected $action;

    /** @var Command */
    protected $command;

    /** @var Message */
    protected $message;

    /** @var array/null */
    protected $currentConversationData;

    /**
     * IncomingMessage service events
     * @var array
     */
    protected $events = [];

    /** @var array  */
    protected $parameters = [];

    /**
     * IncomingMessage service contexts
     * @var array
     */
    protected $contexts = [];

    /**
     * The fallback message to use, if no match
     * could be heard.
     * @var callable|null
     */
    protected $fallbackMessage;

    /** @var array */
    protected $groupAttributes = [];

    /** @var array */
    protected $matches = [];

    /** @var array */
    protected $config = [];

    /** @var array */
    protected $request = [];

    /** @var array  */
    protected $agent = [];

    /** @var array  */
    protected $usersays = [];

    /** @var array  */
    protected $intent = [];

    /** @var array  */
    protected $intentResponses = [];

    /** @var  Instance of Codeigniter */
    protected $CI;

    /** @var int  */
    protected $score = 0;

    /** @var array|bool  */
    protected $defaultIntents = [];

    /** @var array  */
    protected $chatBot = [];

    /** @var array  */
    protected $requiredParameters = [];

    /** @var array  */
    protected $stringfy = [];

    /** @var array  */
    protected $requestedParameters = [];

    /** @var bool  */
    protected $actionInComplete = false;

    /** @var bool  */
    protected $hasFolloup = false;

    /**
     * Mediaworx Hybird constructor.
     * @param array $request
     */

    public function __construct($agent,$request)
    {

        /** @var  CI */
        $this->CI = &get_instance();

        $this->stringfy = new DDTextCompare\Comparator\Cosine();

        /** @var  request */
        $this->request = $request;

        /** @var  agent */
        $this->agent= $agent;

        /**
         *  standardize the usersay from the request
         */

        $this->request['usersay'] = ucfirst($this->request['usersay']);

        /**
         *  Set default intents
         */

        $this->defaultIntents = $this->getDefaultIntents();

        /**
         *  check if chatbot is already engaged
         *  if so gather all data and continue chat
         */

        $this->chatBot = $this->invokeChatBot();

    }

    public function listen()
    {

        /** @var  usersays
         *  get usersay list which has no paramenters @false
         *  or usersau list which has parameters @true
         */
        $this->usersays = $this->getUsersay($this->agent->agentid);

        if ($this->chatBot){
            $this->request['usersay'] = $this->chatBot->usersay. ' '.$this->request['usersay'];
        }

        /*
         * resolve intent id by usersay
         */
        $predictions = array();
        foreach ($this->usersays as $usersay) {
            $distance = LevenshteinDistance($usersay['usersay'],$this->request['usersay']);

            $predictions[$distance] = array(
                "intentid"=>$usersay['intentid'],
                "action"=>$usersay['action'],
                "usersay"=>$usersay['usersay'],
                "score"=>$distance
            );
        }

        $score = array_column($predictions, 'score');
        $intentid = $predictions[min($score)]['intentid'];

        /** @var  parameters
         *  get parameters from usersay that matches
         *  with Agent Entity References
         */
        $this->requestedParameters = checkSpeechContentParameters($this->request['usersay'],$this->agent->agentid);
        $this->parameters = $this->getParameters($predictions[min($score)]['action'],false,true);

        /**
         *  get required parameters
         */

        $this->requiredParameters = $this->getParameters($predictions[min($score)]['action'],true,false);

        /**
         * get intent responses
         */

        $this->score = round($this->stringfy->compare($predictions[min($score)]['usersay'],$this->request['usersay']) , 1, PHP_ROUND_HALF_UP); // append here


        if ($this->score >= $this->agent->threshold) {

            if ($this->getIntentResponses($intentid)) {
                $this->intentResponses = $this->getIntentResponses($intentid);

                /** @var  action
                 *  set current action
                 */
                $this->action = $predictions[min($score)]['action'];

            } else {

                $this->intentResponses['response'] = $this->getDefaultFallbackResponse()['response']->response;
                $this->action = $this->getDefaultFallbackResponse()['intent']->action;
            }

        } else {

            $this->intentResponses['response'] = $this->getDefaultFallbackResponse()['response']->response;
            $this->action = $this->getDefaultFallbackResponse()['intent']->action;
        }

        $this->actionInComplete = $this->isActionComplete();

        /**
         * Check if prompt is needed
         */

        $prompt = $this->getPrompt();

        if ($prompt){

            return $this->process(true,$prompt,false);
        }

        /**
         * TODO
         * Check for intent follow up
         */
        $followup = $this->checkIntentFollowupContext();

        if ($followup){

            return $this->process(false,array(),true);
        }

        /**
         *  Check if conversation is complete.
         *  if so disengaged bot
         */
        if ($this->isActionComplete()){

            $this->disEngagedBot();
        }


        return $this->process();
    }

    protected function process($is_prompt = false,$data = array(),$is_followup=false)
    {

        $this->currentConversationData['actionIncomplete'] = $this->actionInComplete;
        $this->currentConversationData['source'] = strtolower($this->agent->agent_name);
        $this->currentConversationData['action'] = $this->action;
        $this->currentConversationData['parameters'] = $this->parameters;
        $this->currentConversationData['score'] = $this->score;
        $this->currentConversationData['requiredParameters'] = $this->requiredParameters;
        $this->currentConversationData['requestedParameters'] = $this->requestedParameters;


        /**
         * TODO
         * Context follow up
         */
        if (!$is_prompt) {


            $this->currentConversationData['fulfillment']['speech'] = $this->intentResponses['response'].$is_followup;

        } else {

            /**
             *  get prompt
             */

            $this->currentConversationData['fulfillment']['speech'] = $data->prompt;

        }

        /**
         *  if action is not DefaultFallback or Default Welcome
         *  then engage the chatbot
         */
        if (!in_array($this->action,$this->defaultIntents) ){

            /** Engage Bot */
            $this->engageBot();

        }

        return $this->currentConversationData;
    }

    protected function checkIntentFollowupContext($action)
    {
        /**
         * get active intent
         */

        $this->CI->db->where('action',$action);
        $intent = $this->CI->db->get("tblintents")->row();

        if ($intent) {
            /**
             * get all intents has the parent intent of active intent
             */

            $this->CI->db->where("parentid", $intent->id);
            $followups = $this->CI->db->get("tblintents")->result_array();

            if ($followups){
                return true;
            }

            return false;

        }

        return false;


    }

    protected function isActionComplete()
    {

        foreach ($this->requiredParameters as $parameter){

            if (empty($parameter)){
                return false;
            }
        }
        return true;
    }

    protected function getPrompt(){

        if ($this->requiredParameters){

            foreach ($this->requiredParameters as $key=>$requiredParameter){

                if (array_key_exists($key,$this->parameters) && empty($this->parameters[$key])){

                    $this->CI->db->where('value','$'.$key);
                    $action = $this->CI->db->get('tblintentsaction')->row();

                    /*
                     * get Prompt
                     */
                    $this->CI->db->where('actionid',$action->id);
                    $prompt = $this->CI->db->get('tblintentactionprompts')->row();

                    return $prompt;
                }
            }

        }

        return false;
    }

    protected function getIntentResponses($intentid)
    {

        if (is_numeric($intentid)){

            $this->CI->db->where('intentid',$intentid);
            $intentResponses = $this->CI->db->get('tblintentsresponses')->result_array();

            $count = 0;
            $rpc = 0;

            foreach ($this->parameters as $param){

                if (!empty($param)){

                    $rpc++;
                }
            }


            foreach ($this->requestedParameters as $parameter){

                if (isset($this->requiredParameters[$parameter['parameter_name']]) && !empty($this->requiredParameters[$parameter['parameter_name']])){

                    $count++;
                }
            }

            if ($rpc > 0) {
                if ($rpc == $count) {

                    foreach ($intentResponses as $intentResponse){

                        $countFindings = 0;

                        $string = $intentResponse['response'];
                        $countParamaeters = 0;

                        $regex = '~(:\w+)~';
                        if (preg_match_all($regex, str_replace("$",":",$string), $matches, PREG_PATTERN_ORDER)) {
                            foreach ($matches[1] as $word) {
                                $countParamaeters++;
                            }
                        }

                        foreach ($this->parameters as $key=>$parameter){
                            if (strpos($string, '$'.$key)!==false) {

                                $stringParameters["@".$key] = $parameter;

                                $countFindings++;

                                if ($countFindings == $countParamaeters){

                                    /**
                                     * TODO
                                     * check if this intent has context followup
                                     */
                                    return array("response"=>strtr(str_replace('$','@',$string),$stringParameters));
                                }
                            }
                        };

                    }

                }
            }


            
            if ($intentResponses) {
                return $intentResponses[array_rand($intentResponses)];
            }

            return false;
        }

        return false;
    }

    protected function generateParameters($parameters)
    {
        $generatedParameters = array();

        foreach ($parameters as $parameter) {

            $generatedParameters[$parameter['parameter_name']] = $parameter['resolved_value'];
        }

        if ($generatedParameters){
            return $generatedParameters;
        }

        return false;
    }

    protected function disEngagedBot()
    {
        $this->CI->db->where('sessionid',$this->request['session']);
        $this->CI->db->delete("tblchatlog");
    }

    protected function engageBot(){

        $chatLog = array(
            "sessionid"=>$this->request['session'],
            "usersay"=>$this->request['usersay'],
            "response"=>$this->currentConversationData['fulfillment']['speech'],
            "parameters"=>serialize($this->currentConversationData['parameters']),
            "is_complete"=>$this->currentConversationData['actionIncomplete'],
            "is_engaged"=>1,
            "has_followup"=>0,
            'datetime'=>date('Y-m-d H:s:i')
        );

        $this->CI->db->insert("tblchatlog",$chatLog);

    }

    protected function invokeChatBot()
    {
        $this->CI->db->where('sessionid',$this->request['session']);
        $this->CI->db->where('is_complete',0);
        $this->CI->db->where('is_engaged',1);
        $this->CI->db->limit(1);
        $this->CI->db->order_by('id','DESC');
        $chatBot = $this->CI->db->get('tblchatlog')->row();

        if ($chatBot){
            return $chatBot;
        }

        return false;
    }

    protected function getUsersay($agentid,$is_null = false)
    {

        $this->CI->db->select('tblintentsusersays.id,tblintentsusersays.intentid,tblintentsusersays.usersay,tblintentsusersays.action');
        $this->CI->db->from('tblintentsusersays');

//        if ($is_null) {
//            $this->CI->db->join('tblintentsusersaysparameters', 'tblintentsusersays.id = tblintentsusersaysparameters.usersayid');
//        } else {
//            $this->CI->db->join('tblintentsusersaysparameters', 'tblintentsusersays.id <> tblintentsusersaysparameters.usersayid');
//        }

        $this->CI->db->where('tblintentsusersays.agentid',$agentid);

        return $this->CI->db->get()->result_array();


    }

    protected function getDefaultIntents(){

        $this->CI->db->where('is_default',1);
        $defaultIntents = $this->CI->db->get('tblintents')->result_array();

        if ($defaultIntents){

            foreach ($defaultIntents as $defaultIntent){

                $intents[] = $defaultIntent['action'];

            }

            return $intents;
        }

        return false;
    }

    protected function getDefaultFallbackResponse(){

        $this->CI->db->where('intent_name','Default Fallback Intent');
        $defaultFallbackIntent = $this->CI->db->get('tblintents')->row();

        $this->CI->db->where('intentid', $defaultFallbackIntent->id);
        $this->CI->db->order_by('id', 'RANDOM');
        $this->CI->db->limit(1);
        $defaultFallback = $this->CI->db->get('tblintentsresponses')->row();

        return array(
            'intent'=>$defaultFallbackIntent,
            'response'=>$defaultFallback
        );

    }

    protected function getParameters($action,$required = false,$simple = true){

        $parameters = array();

        if ($required){
            $this->CI->db->where('is_required',1);
        }
        $this->CI->db->where('action',$action);
        $actionParameters = $this->CI->db->get('tblintentsaction')->result_array();

        if ($actionParameters){

                    if ($simple) {
                        foreach ($actionParameters as $actionParameter) {
                            $parameters[trim($actionParameter['value'], "$")] =$this->getRequestedParameterValues(trim($actionParameter['value'], "$"));
                        }

                    } else {
                        foreach ($actionParameters as $actionParameter) {
                                $parameters[trim($actionParameter['value'], "$")] = $this->getParameterEntity($this->getRequestedParameterValues(trim($actionParameter['value'], "$")));
                                $parameters[trim($actionParameter['value'], "$") . '.original'] = $this->getRequestedParameterValues(trim($actionParameter['value'], "$"));
                        }
                    }

                return $parameters;

        }

        return false;
    }

    protected function getRequestedParameterValues($parameter_name){

        foreach ($this->requestedParameters as $parameters){

            if ($parameter_name == $parameters['parameter_name']){

                return $parameters['resolved_value'];
            }

        }
    }

    protected function getParameterEntity($value){

        if ($value) {
            $this->CI->db->like('synonym', strtolower($value), 'both');
            $entities = $this->CI->db->get('tblentitiesreferences')->result_array();

            foreach ($entities as $entity){

                $scored = round($this->stringfy->compare($entity['reference'],$value) , 1, PHP_ROUND_HALF_UP);
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
}