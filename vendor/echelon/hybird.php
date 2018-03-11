<?php

require_once VENDOR_FOLDER . '/ml/autoload.php';

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

            return array("speech"=>Echelon_Helper::_hybird($this->agent,$this->request));

        }catch(Echelon_Exception $e){

            return array("speech"=>$e->getMessage());
        }
    }
}