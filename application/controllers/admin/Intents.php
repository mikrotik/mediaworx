<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents extends Admin_controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('intents_model');
    }

    public function index(){

        if (!has_permission('dialogflow', '', 'view')) {
            access_denied('dialogflow');
        }
        if ($this->input->is_ajax_request()) {
            $this->perfex_base->get_table_data('intents');
        }
        $data['intents'] = $this->intents_model->get('',1);
        $data['title'] = _l('intents');
        $this->load->view('admin/intents/manage', $data);
    }

    public function intent($id=""){

        if ($this->input->post()) {
            $data = $this->input->post();

            $data['agentid']=0;
            $data['userid']=0;

            if ($id == '') {
                if (!has_permission('dialogflow', '', 'create')) {
                    access_denied('dialogflow');
                }
                $id = $this->intents_model->add($data);
                if ($id) {
                    set_alert('success', _l('added_successfuly', _l('intents')));
                    redirect(admin_url('intents/intent/' . $id));
                }
            } else {
                if (!has_permission('dialogflow', '', 'edit')) {
                    access_denied('dialogflow');
                }

                $success = $this->intents_model->update($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfuly', _l('intents')));
                }
                redirect(admin_url('intents/intent/'.$id));
            }
        }

        if ($id == '') {
            $title                  = _l('clients_entity_create');
        } else {
            $entity = $this->intents_model->get($id);

            $data['entity'] = $entity;
            $title = _l('edit_intent');
        }

        $data['title']       = $title;
        $this->load->view('admin/intents/intent', $data);
    }
}