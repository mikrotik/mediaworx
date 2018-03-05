<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Entities extends Admin_controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('entities_model');
        if (!is_admin()) {
            access_denied('Entities');
        }
    }

    /**
     *  List all @entities
     */
    public function index()
    {

        if ($this->input->is_ajax_request()) {
            $this->perfex_base->get_table_data('entities');
        }

        $data['title'] = _l('entities');
        $this->load->view('admin/entities/manage', $data);
    }

    public function entity($id = "")
    {

        if ($this->input->post()) {
            /** Validate Entity Form */

            $data = $this->input->post(NULL, FALSE);

            /**
             * Exclude some variables from
             * post data
             */
            unset($data['reference']);
            unset($data['synonym']);

            if ($id == '') {
                if (!has_permission('entities', '', 'create')) {
                    access_denied('entities');
                }
                $id = $this->entities_model->add($data);
                if ($id) {
                    set_alert('success', _l('added_successfuly', _l('entities')));
                    redirect(admin_url('entities'));
                }
            } else {
                if (!has_permission('entities', '', 'edit')) {
                    access_denied('entities');
                }

                $success = $this->entities_model->update($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfuly', _l('entities')));
                }
                redirect(admin_url('entities/'));
            }
        }

        if ($id == '') {
            $title                  = _l('new_entity');
        } else {
            $entity = $this->entities_model->get($id);
            $entity_references = $this->entities_model->get_references($id);

            $data['entity'] = $entity;
            $data['entity_references'] = $entity_references;
            $title = _l('update_entity');
        }

        $data['title'] = $title;
        $this->load->view('admin/entities/entity', $data);
    }

    public function delete($id = ""){

        if (!has_permission('entities', '', 'delete')) {
            access_denied('entities');
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