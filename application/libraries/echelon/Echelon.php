<?php
defined('BASEPATH') OR exit('No direct script access allowed');

const DEBUG_MODE = false;

class Echelon extends Echelon_Core
{

    public $request = [];
    public $agent = [];

    function __construct($request,$agent)
    {
        $CI = & get_instance();
        $this->request = $request;
        $this->agent = $agent;

        $CI->session->set_userdata($request["session"],array());
        $this->_addResponseData("debug",DEBUG_MODE);
    }

    public function _call()
    {

        /**
         * TODO - Intent Prediction
         * Here wew ill try to predict the intent
         * of conversation
         */
        $this->_intentPrediction();
    }

    public function _process()
    {

    }
}