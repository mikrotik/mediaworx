<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once VENDOR_FOLDER.'echelon/echelon_autoload.php';

use Echelon_Hybird;

class Mediaworx_Hybird
{
    /**
     * @var CI
     * This is Framework Instance aliens
     *
     */
    private $CI;

    /** @var array $request */
    public $request = [];
    public $agent = [];


    public function __construct($request,$agent)
    {
        /** @var  CI - Load our instance */
        $this->CI = & get_instance();

        /*
         * Set our $request
         */
        $this->request = $request;

        /*
         * Set our $agent
         */
        $this->agent = $agent;

    }

    public function listen()
    {
        try {

            $echelon = new Echelon_Hybird(Echelon_Hybird::ENV_TEST,$this->agent,$this->request);

            return $echelon->_call();

        } catch(Echelon_Exception $e){

            return array("speech"=>$e->getMessage());
        }

    }





}