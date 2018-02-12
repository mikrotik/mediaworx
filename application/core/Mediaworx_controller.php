<?php
defined('BASEPATH') OR exit('No direct script access allowed');
abstract class Mediaworx_controller extends CRM_Controller
{
    public $_api;
    public $_format = 'json';

    function __construct()
    {
        parent::__construct();

        $this->load->library('mediaworx/rest');
        $this->load->library('mediaworx/api');

        $this->_api = new Api();

    }
}