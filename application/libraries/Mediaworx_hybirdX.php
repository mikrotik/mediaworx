<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once VENDOR_FOLDER.'/matcher/autoload.php';
require_once VENDOR_FOLDER.'/stringfy/autoload.php';

class Mediaworx_Hybird
{


    /** @var array  */
    private $currentConversationData = [];

    /** @var array */
    private $request = [];

    /** @var array  */
    private $agent = [];

    /** @var array  */
    private $stringfy = [];

    /** @var array  */
    private $usersays = [];

    /** @var array  */
    private $action = "";

    /** @var array  */
    private $score = 0;

    /** @var array  */
    private $suggestions = [];

    /** @var array  */
    public $session = [];

    /** @var array  */
    private $parameters = [];

    /** @var string  */
    private $prompt = "";

    /** @var string  */
    private $sessionUserSay = "";

    /** @var  Instance of Codeigniter */
    protected $CI;

    public function __construct($agent,$request)
    {

        $this->CI = &get_instance();

        $this->CI->load->helper('perfex_api');

        //Start session
        $this->CI->load->library('session');

        /** @var  request */
        $this->request = $request;

        /** @var  agent */
        $this->agent = $agent;

        $this->stringfy = new DDTextCompare\Comparator\Cosine();

        /**
         *  standardize the userSay from the request
         */
        $this->sessionUserSay = getUserSay($this->request['session']);

        if (!$this->sessionUserSay) {
            $this->request['usersay'] = strtolower($this->request['usersay']);
        } else {
            $this->request['usersay'] = $this->request['usersay'].' '.$this->sessionUserSay;
        }



        /**
         * Get all predefined user says
         * that matches with the request
         */

        $this->usersays = getUserSays($this->agent);

    }

    public function listen()
    {
        return $this->process();
    }

    private function process()
    {
        $this->parameters = getParameters($this->request['session']);
        /**
         * Trigger string matcher to find the
         * predicted intent and
         * check if predicted match is correct and applies the confidence of bot
         */
        $predictions = getIntentPredictions($this->agent,$this->usersays,$this->request['usersay'],$this->stringfy);

        /**
         * TODO
         *  Remove these outputs later
         */
//        $this->currentConversationData['predictions'] = $predictions;
//        $this->currentConversationData['usersays'] = $this->usersays;
//        $this->currentConversationData['predictions'] = $predictions;

        /**
         * TODO
         * if no predictions
         * give a last try with suggestions
         */

        $this->suggestions = getKeywordSuggestionsFromGoogle($this->request['usersay']);

        if (!$predictions){

            $predictions = getIntentPredictions($this->agent,$this->usersays,$this->suggestions[0],$this->stringfy);
        }

        if ($predictions) {
            $distance = array_column($predictions, 'distance');
            $predicted = $predictions[min($distance)];

            /** @var  action */
            $this->action = $predicted['action'];
            /** @var  score */
            $this->score = $predicted['score'];


            /**
             * check if any parameter is required
             */
            $session_parameters = getParameters($this->request['session']);

            if (!$session_parameters) {
                $this->parameters = $requestedParameters = $this->currentConversationData['requested_parameters'] = getRequestedParameters($this->request['usersay'], $this->agent);
            } else {
                array_push($session_parameters,$requestedParameters);
                $this->parameters = $session_parameters;
            }

            /**
             * check if any parameter is required
             */
            $requiredParameters = $this->currentConversationData['required_parameters'] = getRequiredParameters($this->stringfy,$predicted['parameters'],$requestedParameters);

            /**
             *  TODO
             *  check if this intents requires parameter(s)
             *  to continue the conversation. Show the Intent action
             *  prompt if necessary
             */

            if ($requiredParameters){

                foreach ($requiredParameters as $key=>$requiredParameter){
                    /**
                     * if parameter is empty
                     * get prompt
                     */
                    if (empty($requiredParameters[$key]) && $key != trim($key,'.original').'.original') {

                        $this->prompt = getIntentPrompt($this->agent,$key);

                        /** Returns the final response */
                        return $this->getResponse();
                    }
                }

            }

            /**
             *  Check if conversation ended
             */
            if ($predicted['is_end']) {

                $this->intentResponses['response'] = ucfirst(intentResponse($predicted['intentid'], $this->agent)['response']);
            } else {

                /**
                 *  Check Intent Followups
                 */

                $this->intentResponses['response'] = ucfirst(intentResponse($predicted['intentid'], $this->agent)['response']);
            }
        } else {


            $this->intentResponses['response'] = ucfirst(getDefaultFallbackResponse()['response']->response);
        }

        /** Returns the final response */
        return $this->getResponse();
    }

    private function getResponse()
    {
        $this->currentConversationData['source'] = strtolower($this->agent->agent_name);
        $this->currentConversationData['action'] = $this->action;
        $this->currentConversationData['parameters'] = $this->parameters;
        $this->currentConversationData['fulfillment']['suggestions'] = $this->suggestions;
        $this->currentConversationData['score'] = $this->score;
        $this->currentConversationData['session'] = $this->request['session'];
        if (empty($this->prompt)) {
            $this->currentConversationData['fulfillment']['speech'] = $this->intentResponses['response'];
        } else {
            $this->currentConversationData['fulfillment']['speech'] = $this->prompt;
        }
        $this->currentConversationData['pattern'] = str_replace($this->sessionUserSay,"",$this->request['usersay']);
        $this->currentConversationData['agentid'] = $this->agent->agentid;

        /**
         * TODO
         *  save to conversation_log
         */

        addConversationLog($this->currentConversationData);


        return $this->currentConversationData;
    }
}