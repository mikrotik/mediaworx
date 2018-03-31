<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Intents extends Admin_controller
{
    function __construct()
    {
        parent::__construct();

        /** Load Intents Model */
        $this->load->model('intents_model');

    }

    /** List all intents */
    public function index()
    {
        if (!has_permission('echelon', '', 'view') && !has_permission('echelon', '', 'view_own')) {
            access_denied('echelon');
        }

        if ($this->input->is_ajax_request()) {
            $this->echelon_base->get_table_data('intents');
        }

        $data['title'] = _l('intents');
        $this->load->view('admin/intents/manage', $data);
    }

    public function intent($id = "")
    {

        if ($this->input->post()) {
            /** Validate Entity Form */

            $data = $this->input->post(NULL, FALSE);

            if ($id == '') {
                if (!has_permission('echelon', '', 'create')) {
                    access_denied('echelon');
                }
                $id = $this->intents_model->add($data);
                if ($id) {
                    set_alert('success', _l('added_successfuly', _l('intents')));
                    redirect(admin_url('intents/intent/'.$id));
                }
            } else {
                if (!has_permission('echelon', '', 'edit')) {
                    access_denied('echelon');
                }

                $success = $this->intents_model->update($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfuly', _l('intents')));
                }
                redirect(admin_url('intents/intent/'.$id));
            }
        }

        if ($id == '') {
            $title                  = _l('new_intent');

        } else {

            $intent = $this->intents_model->get($id);
            $intent_responses = $this->intents_model->get_responses($id);
            $patterns = $this->intents_model->get_patterns($id);
            $contexts = [];
            $events = [];

            $intents = $this->intents_model->get();
            foreach ($intents as $context)
            {
                $contexts[] = $context['intent_name'].'-followup';
            }

            $data['intent'] = $intent;
            $data['intent_responses'] = $intent_responses;
            $data['patterns'] = $patterns;
            $data['contexts'] = $contexts;
            $data['events'] = $events;

            $title = _l('update_intent');
        }

        if ($id) {
            $data['title'] = $title;
            $this->load->view('admin/intents/intent', $data);
        } else {
            redirect(admin_url('intents'));
        }
    }

    public function delete($id = "")
    {
        if (!has_permission('echelon', '', 'delete')) {
            access_denied('echelon');
        }

        if ($this->input->is_ajax_request()) {

            if (is_numeric($id)){

                $success = $this->intents_model->delete($id);
                $message = '';
                if ($success == true) {
                    $message = _l('deleted', _l('intents'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                } else {
                    $message =  _l('problem_deleting', _l('intents'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                }
            }

        }
    }

    public function string_parser()
    {
        if ($this->input->post() && $this->input->is_ajax_request())
        {
            $data = $this->input->post(NULL, FALSE);

            $nlp_tags = Echelon_Helper::stanford_string_parser($data['string']);
            echo json_encode($nlp_tags);
            die();
        }

        return false;
    }
}