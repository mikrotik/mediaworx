<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Chatbot extends Api_controller
{
    function __construct()
    {
        parent::__construct();
    }
/*
 * @API Webhook/Fallback
 * All request will go through by init() method
 * and will trigger the actual method(s)
 */
    public function init()
    {
        if (!is_client_logged_in()) {
            echo json_encode(array('Status Code'=>'200','Message'=>'Welcome to MediaWorx Chatbot Project v1.0'));
            die();
        }
    }
}