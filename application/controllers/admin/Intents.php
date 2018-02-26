<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents extends Admin_controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('intents_model');
        if (!is_admin()) {
            access_denied('Intents');
        }
    }

    /**
     *  List all @intents
     */
    public function index()
    {

        if ($this->input->is_ajax_request()) {
            $this->perfex_base->get_table_data('intents');
        }

        $data['title'] = _l('intents');
        $this->load->view('admin/intents/manage', $data);
    }

    public function intent($id = "")
    {

        if ($this->input->post()) {
            /** Validate Entity Form */

            $data = $this->input->post(NULL, FALSE);

            /**
             * Exclude some variables from
             * post data
             */

            if ($id == '') {
                if (!has_permission('intents', '', 'create')) {
                    access_denied('intents');
                }
                $id = $this->intents_model->add($data);
                if ($id) {
                    set_alert('success', _l('added_successfuly', _l('intents')));
                    redirect(admin_url('intents/intent/'.$id));
                }
            } else {
                if (!has_permission('intents', '', 'edit')) {
                    access_denied('intents');
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
            $intentresponses = $this->intents_model->get_responses($id);
            $intentusersays = $this->intents_model->get_usersays($id);

            $data['intent'] = $intent;
            $data['intentresponses'] = $intentresponses;
            $data['intentusersays'] = $intentusersays;
            $title = _l('update_intent');
        }

        $data['title'] = $title;
        $this->load->view('admin/intents/intent', $data);
    }

    public function delete($id = ""){

        if (!has_permission('intents', '', 'delete')) {
            access_denied('intents');
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

    public function usersayparameters(){

        if($this->input->is_ajax_request()) {

            $usersay = $this->input->post(NULL, FALSE);

            $parameters = checkParameters($usersay['usersay']);

            echo json_encode(array(
                    'usersay'=>$usersay['usersay'],
                    'parameters'=>$parameters
                )
            );
        }
    }
}
