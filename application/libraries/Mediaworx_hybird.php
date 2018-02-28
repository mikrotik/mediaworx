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

        $this->usersays = getUserSays();

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
        $distance = array_column($predictions, 'distance');
        $predicted = $predictions[min($distance)];

        /** @var  action */
        $this->action = $predicted['action'];
        /** @var  score */
        $this->score = $predicted['score'];

        $this->intentResponses['response'] = intentResponse($predicted['intentid'],'Echelon')['response'];


        /** Returns the final response */
        return $this->getResponse();
    }

    private function getResponse()
    {
        $this->currentConversationData['source'] = strtolower($this->agent->agent_name);
        $this->currentConversationData['action'] = $this->action;
        $this->currentConversationData['parameters'] = $this->parameters;
        $this->currentConversationData['score'] = $this->score;
        $this->currentConversationData['fulfillment']['speech'] = $this->intentResponses['response'];
        return $this->currentConversationData;
    }
}