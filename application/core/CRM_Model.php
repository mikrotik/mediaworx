<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CRM_Model extends CI_Model {

    public $wt_agent;

	function __construct(){
       parent::__construct();
          $this->db->reconnect();
          $timezone = get_option('default_timezone');
          date_default_timezone_set($timezone);

        $session = $this->session->get_userdata();

        $this->wt_agent = $session['wt_agent'];
  }
}
