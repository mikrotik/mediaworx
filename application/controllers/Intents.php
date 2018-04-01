<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents extends Clients_controller
{
    function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        $data['title'] = _l('intents');
        $this->data    = $data;
        $this->view    = 'intents/manage';
        $this->layout();
    }
}