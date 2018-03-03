<?php

defined('BASEPATH') OR exit('No direct script access allowed');
class Echelon extends  Echelon_Core
{
    private $debug_mode = false;

    /** @var array $request */
    private $request = [];

    /** @var array $intent */
    private $intent = [];

    /** @var array $action_parameters */
    private $action_parameters = [];

    /** @var array CI */
    private $CI = [];

    public function __construct($request)
    {
        $this->CI = & get_instance();
        $this->request = $request;

        $this->CI->load->library('session');
    }

    public function _setDebugMode($mode){

        $this->debug_mode = $mode;
    }

    public function _getDebugMode()
    {
        return $this->debug_mode;
    }

    public function _process()
    {
        /** Get Intent
         * @id - intent id
         * @action - intent action
         * @pattern - intent predefined pattern
         * @action_parameters - (json) intent action parameters
         * @score - similarity score
         * @is_end - (true/false) shows that if this intent is the end of the coversation
         */
        $this->intent = $this->UserSays($this->request['usersay']);

        /** Get intent action parameters */
        $this->action_parameters = $this->getIntentParameters($this->intent['action_parameters']);



        return $this->_response();
    }
    public function _response()
    {

        /** Prepare response Data */
        $this->currentConversationData['session'] = $this->request['session'];
        $this->currentConversationData['pattern'] = $this->request['usersay'];
        $this->currentConversationData['action'] = $this->intent['action'];
        $this->currentConversationData['score'] = $this->intent['score'];
        $this->currentConversationData['parameters'] = $this->action_parameters;
        $this->currentConversationData['actionIncomplete'] = ($this->intent['is_end'] ? false : true);
        $this->currentConversationData['fulfillment']['suggestions'] = $this->getKeywordSuggestionsFromGoogle($this->request['usersay']);
        $this->currentConversationData['fulfillment']['speech'] = __METHOD__;

        /** Set Conversation Log */
        $this->setCoversationLog($this->currentConversationData);

        return $this->currentConversationData;

    }
}