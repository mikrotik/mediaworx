<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Api_controller extends CRM_Controller
{
    function __construct()
    {
        parent::__construct();
        header("Content-Type:application/json");
    }
}
