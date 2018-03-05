<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Integrations extends Clients_controller
{
    public $bodyclass= "skin-blue sidebar-mini";

    function __construct()
    {
        parent::__construct();
        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');

        $this->load->model("integrations_model");
        do_action('after_clients_area_init');

        if (!$this->agent_scope){
            redirect(site_url('agents/agent'));
        }
    }
}