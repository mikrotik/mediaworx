<?php

defined('BASEPATH') OR exit('No direct script access allowed');
class Echelon extends  Echelon_Core
{
    private $debug_mode = false;

    /** @var array CI */
    private $CI = [];

    public function __construct($request)
    {
        $this->CI = & get_instance();
        $this->request = $request;

        $this->CI->load->library('session');
        $this->CI->session->set_userdata('session_id',$this->request['session']);
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
        $this->intent = $this->UserSays(trim($this->request['usersay']));

        /** Get intent action parameters */
        $this->action_parameters = $this->getIntentParameters($this->intent['action_parameters']);

        /** Get action required parameters */
        $this->required_action_parameters = $this->getRequiredParameters($this->intent['action']);

        /** Get action requested parameters */
        $this->requested_action_parameters = $this->getRequestedParameters($this->request['usersay']);

        return $this->_response();
    }
    public function _response()
    {
        /**
         * TODO
         * Check if intent capture all required parameter.
         * if not, continue with intent action prompts
         */

        /**
         * TODO
         * We fill up the parameters
         */
        $this->_fillParameters();

        /**
         * TODO
         * we check if all parameters are ok
         */
        $this->_intentActionPrompt();

        /**
         * TODO
         * If intent is not end of conversation
         * continue with followups
         */
        if (!$this->intent['is_end']){

            return $this->_intentFollowup();
        }

        return $this->_echelonResponse($this->intent["id"]);

    }
}