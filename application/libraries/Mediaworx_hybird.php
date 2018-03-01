<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once VENDOR_FOLDER.'/matcher/autoload.php';
require_once VENDOR_FOLDER.'/stringfy/autoload.php';

class Mediaworx_Hybird extends Mediaworx_Core
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

    public function __construct($agent,$request)
    {

        /** @var  request */
        $this->request = $request;

        /** @var  agent */
        $this->agent = $agent;

        $this->stringfy = new DDTextCompare\Comparator\Cosine();

        /**
         *  standardize the userSay from the request
         */

        $this->request['usersay'] = strtolower($this->request['usersay']);

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
        $this->currentConversationData['predictions'] = $predictions;

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
            $requestedParameters = $this->currentConversationData['requested_parameters'] = getRequestedParameters($this->request['usersay'],$this->agent);


            /**
             * check if any parameter is required
             */
            $requiredParameters = $this->currentConversationData['required_parameters'] = getRequiredParameters($predicted['parameters'],$requestedParameters);

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
        $this->currentConversationData['fulfillment']['speech'] = $this->intentResponses['response'];
        return $this->currentConversationData;
    }
}