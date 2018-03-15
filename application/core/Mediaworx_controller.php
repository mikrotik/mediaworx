<?php
defined('BASEPATH') OR exit('No direct script access allowed');
abstract class Mediaworx_controller extends CRM_Controller
{
    public $_api;
    public $_format = 'json';
    public $wt_agent;
    public $_arraytoxml;
    public $redis;


    function __construct()
    {
        parent::__construct();

        $format = $this->input->get('format');

        if (isset($_COOKIE['agent']) && !empty($_COOKIE['agent']))
        {
            $this->agent_scope = $_COOKIE['agent'];
        } else {
            $this->agent_scope = 1;
        }


        $this->load->library('mediaworx/arraytoxml');
        $this->load->library('mediaworx/rest');
        $this->load->library('mediaworx/api');

        $this->_arraytoxml = new ArrayToXML();
        $this->_api = new Api();

        $this->load->helper('xml_value_prep');
        $this->load->helper('perfex_string_compare');
        $this->load->helper('perfex_api');

        if (isset($format)){
            $this->_format = $this->input->get('format');
        }

    }
}