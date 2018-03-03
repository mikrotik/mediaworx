<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mediaworx_Hybird
{
    /**
     * @var CI
     * This is Framework Instance aliens
     *
     */
    private $CI;

    /** @var array $agent */
    private $agent = [];

    /** @var array $request */
    private $request = [];

    /** @var array  */
    private $sessionData = [];

    protected $echelon;


    public function __construct($request)
    {
        /** @var  CI - Load our instance */
        $this->CI = & get_instance();

        /*
         * Set our $request
         */
        $this->request = $request;

        /*
         * TODO
         * load our algorithm Echelon
         */
        $this->CI->load->library('algorithms/echelon_core');
        $this->CI->load->library('algorithms/echelon');
        $this->echelon = new Echelon($request);

        /**
         *  Set Echelon @debug_mode
         *  (true / false)
         */
        $this->echelon->_setDebugMode(true);
        $this->echelon->_setAccessToken($this->request['access_token']);
        $this->echelon->_setAgent();
    }

    public function listen()
    {

        return $this->echelon->_process();
    }





}