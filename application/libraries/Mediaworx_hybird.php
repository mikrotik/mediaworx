<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once VENDOR_FOLDER.'/matcher/autoload.php';
require_once VENDOR_FOLDER.'/stringfy/autoload.php';

class Mediaworx_Hybird
{
    /** @var array  */
    protected $intent = [];

    /** @var array  */
    protected $contexts = [];

    /** @var array  */
    protected $events = [];

    /** @var   */
    protected $action;

    /** @var array  */
    protected $currentConversationData = [];

    /** @var array  */
    protected $parameters = [];

    /**
     * The fallback message to use, if no match
     * could be heard.
     * @var callable|null
     */
    protected $fallbackMessage;

    /** @var array */
    protected $matches = [];

    /** @var array */
    protected $request = [];

    /** @var array  */
    protected $agent = [];

    /** @var array  */
    protected $usersays = [];

    /** @var  Instance of Codeigniter */
    protected $CI;

    /** @var int  */
    protected $score = 0;

    /** @var array|bool  */
    protected $defaultIntents = [];

    /** @var array  */
    protected $stringfy = [];

    /** @var array  */
    protected $intentResponses = [];

    /** @var bool  */
    protected $actionInComplete = false;

    /** @var array  */
    protected $chatBot = [];

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
         *  standardize the userSay from the request
         */

        $this->request['usersay'] = strtolower($this->request['usersay']);

        /**
         *  Set default intents
         */

        $this->defaultIntents = getDefaultIntents();

    }

    public function listen()
    {
        /**
         * Get all predefined user says
         * that matches with the request
         */

        $this->usersays = getUserSays($this->request['usersay']);

        $this->chatBot = $this->retriveChatBot();

        return $this->process();
    }

    /** ChatBot processing all information */
    protected function process()
    {
            /**
         * Trigger string matcher to find the
         * predicted intent and
         * check if predicted match is correct and applies the confidence of bot
         */
        $predictions = getIntentPredictions($this->usersays,$this->request['usersay']);
        $score = array_column($predictions, 'score');
        $predicted = $predictions[min($score)];

        $this->score = round($this->stringfy->compare($predicted['usersay'],$this->request['usersay']) , 1, PHP_ROUND_HALF_UP);

        if ($this->score >= $this->agent->threshold)
        {
            $this->action = $predicted['action'];


            $chatBotParameters = unserialize($this->chatBot->parameters);
            
            /**
             * check forrequest parameters
             */
            $requestedParameters = checkSpeechContentParameters($this->request['usersay'],$this->agent->agentid);

            // TODO - Remove this later
            $this->currentConversationData['requestedParameters'] = $requestedParameters;

            /**
             * check if action has required parameters
             */
            $requiredParameters = getParameters($this->action,true,false,$requestedParameters,$this->stringfy,$chatBotParameters);

            // TODO - Remove this later
            $this->currentConversationData['requiredParameters'] = $requiredParameters;

            if ($requiredParameters && !$requestedParameters)
            {
                $this->actionInComplete = true;
            }
            /** @var  parameters
             * list of parameters passed
             */

            $this->parameters = getParameters($this->action, false, true, $requestedParameters, $this->stringfy,$chatBotParameters);

            if ($requiredParameters) {

                /**
                 * TODO
                 * predicted response and check for prompt and check if all requirements a filled
                 */

                $prompt = getIntentActionPrompt($this->action, $predicted['intentid'], $this->parameters);
            }

            if ($prompt){

                $this->intentResponses['response'] = $prompt;

            } else {

                $this->intentResponses['response'] = getIntentResponses($predicted['intentid'], $this->parameters, $requestedParameters, $requiredParameters)['response'];
            }

        } else {
            $this->intentResponses['response'] = $this->getDefaultFallbackResponse()['response']->response;
        }

        /** Returns the final response */
        return $this->getResponse();
    }

    protected function getResponse()
    {
        $this->currentConversationData['actionIncomplete'] = $this->actionInComplete;
        $this->currentConversationData['source'] = strtolower($this->agent->agent_name);
        $this->currentConversationData['action'] = $this->action;
        $this->currentConversationData['parameters'] = $this->parameters;

        $this->currentConversationData['fulfillment']['speech'] = $this->intentResponses['response'];

        /**
         * TODO- Save it to chatlog
         */

        $this->invokeChatBot();

        return $this->currentConversationData;
    }

    protected function invokeChatBot()
    {
        if (!empty($this->currentConversationData['fulfillment']['speech'])) {

            $chatLog = array(
                "sessionid" => $this->request['session'],
                "usersay" => $this->request['usersay'],
                "response" => $this->currentConversationData['fulfillment']['speech'],
                "parameters" => serialize($this->currentConversationData['parameters']),
                "is_complete" => $this->currentConversationData['actionIncomplete'],
                "is_engaged" => 1,
                "has_followup" => 0,
                'datetime' => date('Y-m-d H:s:i')
            );

            $this->CI->db->insert("tblchatlog", $chatLog);
        }

        return false;
    }

    protected function retriveChatBot()
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
}