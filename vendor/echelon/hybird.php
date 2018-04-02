<?php

use Echelon_Helper;

class Echelon_Hybird
{

    const ENV_TEST = 'development';
    const ENV_LIVE = 'production';

    private $agent = [];
    private $request = [];

    protected $_environment = [];

    public function __construct($environment = self::ENV_TEST,$agent,$request)
    {
        $this->_environment = $environment;

        $this->agent = $agent;
        $this->request = $request;

        if (! function_exists('curl_init')){

            throw new Echelon_Exception('cURL library is required to run this library');
        }
    }

    public function _call()
    {

        try{

            /**
             * Set Sleep wait time to process the argument(s)
             */
            sleep(0.5);

            /**
             * TODO - List or array keys on response
             * Return the response
             */

            /** Set our request to Helper */
            Echelon_Helper::_setRequest($this->request);

            /** Set our agent to Helper */
            Echelon_Helper::_setAgent($this->agent);

            /**
             * Initiate bot
             */
            Echelon_Helper::_process();

            /**
             * Return the response array
             */
            return Echelon_Helper::response();

        }catch(Echelon_Exception $e){

            return array("speech"=>$e->getMessage());
        }
    }
}