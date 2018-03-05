<?php
defined('BASEPATH') OR exit('No direct script access allowed');

const DEBUG_MODE = false;

class Echelon extends Echelon_Core
{

    public $request = [];

    function __construct($request)
    {
        $this->request = $request;

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