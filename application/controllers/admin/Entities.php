<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Entities extends Admin_controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('entities_model');
    }

    public function index(){

        if (!has_permission('dialogflow', '', 'view')) {
            access_denied('dialogflow');
        }
        if ($this->input->is_ajax_request()) {
            $this->perfex_base->get_table_data('entities');
        }
        $data['entities'] = $this->entities_model->get('',1);
        $data['title'] = _l('entities');
        $this->load->view('admin/entities/manage', $data);
    }

    public function entity($id=""){

        if ($this->input->post()) {
            $data = $this->input->post();

            $data['agentid']=0;
            $data['userid']=0;

            if ($id == '') {
                if (!has_permission('dialogflow', '', 'create')) {
                    access_denied('dialogflow');
                }
                $id = $this->entities_model->add($data);
                if ($id) {
                    set_alert('success', _l('added_successfuly', _l('entities')));
                    redirect(admin_url('entities/entity/' . $id));
                }
            } else {
                if (!has_permission('dialogflow', '', 'edit')) {
                    access_denied('dialogflow');
                }

                $success = $this->entities_model->update($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfuly', _l('entities')));
                }
                redirect(admin_url('entities/entity/'.$id));
            }
        }

        if ($id == '') {
            $title                  = _l('clients_entity_create');
        } else {
            $entity = $this->entities_model->get($id);
            $entity_values = $this->entities_model->get_values($id);

            $data['entity'] = $entity;
            $data['entity_values'] = $entity_values;
            $title = _l('edit_entity');
        }

        $data['title']       = $title;
        $this->load->view('admin/entities/entity', $data);
    }

    public function delete($id = ""){

        if (!has_permission('dialogflow', '', 'delete')) {
            access_denied('dialogflow');
        }

        if ($this->input->is_ajax_request()) {

            if (is_numeric($id)){

                $success = $this->entities_model->delete($id);
                $message = '';
                if ($success == true) {
                    $message = _l('deleted', _l('entities'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                } else {
                    $message =  _l('problem_deleting', _l('entities'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                }
            }

        }
    }
}