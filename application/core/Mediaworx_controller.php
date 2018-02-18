<?php
defined('BASEPATH') OR exit('No direct script access allowed');
abstract class Mediaworx_controller extends CRM_Controller
{
    public $_api;
    public $_format = 'json';

    function __construct()
    {
        parent::__construct();

        $format = $this->input->get('format');

        $this->load->library('mediaworx/arraytoxml');
        $this->load->library('mediaworx/rest');
        $this->load->library('mediaworx/api');

        $this->_api = new Api();

        $this->load->helper('xml_value_prep');

        if (isset($format)){
            $this->_format = $this->input->get('format');
        }

    }
}