<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CRM_Model extends CI_Model {

    public $agent_scope = '';

	function __construct(){
       parent::__construct();
        if ($_COOKIE['agent'])
        {
            $this->agent_scope = $_COOKIE['agent'];
        }
          $this->db->reconnect();
          $timezone = get_option('default_timezone');
          date_default_timezone_set($timezone);
  }
}
