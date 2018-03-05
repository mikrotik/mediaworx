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

    /** @var array $request */
    private $request = [];

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
        $this->CI->load->library('echelon/echelon_core');
        $this->CI->load->library('echelon/echelon_exception');
        $this->CI->load->library('echelon/echelon');

    }

    public function listen()
    {
        try {

            $echelon = new Echelon($this->request);

            $echelon->_call();

            $echelon->_process();
            return $echelon->_getResponse();

        } catch(Echelon_Exception $e){

            return $e;
        }

    }





}