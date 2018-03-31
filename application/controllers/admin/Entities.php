<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Entities extends Admin_controller
{
    function __construct()
    {
        parent::__construct();

        /** Load Entities Model */
        $this->load->model('entities_model');
    }


    /** List all entities */
    public function index()
    {
        if (!has_permission('echelon', '', 'view') && !has_permission('echelon', '', 'view_own')) {
            access_denied('echelon');
        }

        if ($this->input->is_ajax_request()) {
            $this->echelon_base->get_table_data('entities');
        }

        $data['title'] = _l('entities');
        $this->load->view('admin/entities/manage', $data);
    }

    public function entity($id = "")
    {
        if ($this->input->post()) {

            // Get Post Data
            $data = $this->input->post(NULL, FALSE);

            if ($id == '') {
                if (!has_permission('echelon', '', 'create')) {
                    access_denied('echelon');
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

    public function parse_entities()
    {
        if ($this->input->post() && $this->input->is_ajax_request())
        {
            $data = $this->input->post(NULL, FALSE);

            $words = explode(" ",$data['string']);

            $find = array();
            $replace = array();

            foreach ($words as $word)
            {
                if (Echelon_Helper::wordToNumber($word)) {

                    $find[] = $word;
                    $replace[] = Echelon_Helper::wordToNumber($word);
                }
            }

            $string = str_replace($find,$replace,$data['string']);

            $pattern_entities = Echelon_Helper::parse_entities(trim($string)," ");
            echo json_encode($pattern_entities);
            die();
        }

        return false;
    }
}
