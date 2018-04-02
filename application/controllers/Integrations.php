<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Integrations extends Clients_controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model("integrations_model");

        if (!$this->agent_scope){
            redirect(site_url('agents/agent'));
        }
    }

    public function index()
    {
        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        $data['title'] = _l('integrations');
        $this->data    = $data;
        $this->view    = 'integrations/manage';
        $this->layout();
    }
}