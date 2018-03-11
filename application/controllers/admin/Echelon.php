<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Echelon extends Admin_controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('echelon_model');
        if (!is_admin()) {
            access_denied('Echelon');
        }
    }

    /**
     *  List all @categories
     */
    public function index()
    {

        if ($this->input->is_ajax_request()) {
            $this->perfex_base->get_table_data('echelon');
        }

        $data['title'] = _l('echelon');
        $this->load->view('admin/echelon/manage', $data);
    }

    public function category($id = "")
    {

        if ($this->input->post()) {
            /** Validate Entity Form */

            $data = $this->input->post(NULL, FALSE);

            /**
             * Exclude some variables from
             * post data
             */

            if ($id == '') {
                if (!has_permission('echelon', '', 'create')) {
                    access_denied('echelon');
                }
                $id = $this->echelon_model->add($data);
                if ($id) {
                    set_alert('success', _l('added_successfuly', _l('categories')));
                    redirect(admin_url('echelon/category/'.$id));
                }
            } else {
                if (!has_permission('intents', '', 'edit')) {
                    access_denied('intents');
                }

                $success = $this->echelon_model->update($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfuly', _l('categories')));
                }
                redirect(admin_url('echelon/category/'.$id));
            }
        }

        if ($id == '') {
            $title                  = _l('new_category');
        } else {
            $category = $this->echelon_model->get($id);
            $echelonpatterns = $this->echelon_model->get_patterns($id);
            $echelonresponses = $this->echelon_model->get_responses($id);

            $data['category'] = $category;
            $data['echelonpatterns'] = $echelonpatterns;
            $data['echelonresponses'] = $echelonresponses;

            $title = _l('update_category');
        }

        if ($id) {
            $data['title'] = $title;
            $this->load->view('admin/echelon/category', $data);
        } else {
            redirect(admin_url('echelon'));
        }
    }

    public function add_pattern($id="")
    {
        if (is_numeric($id)) {
            if ($this->input->is_ajax_request() && $this->input->post()) {
                /** Validate Entity Form */

                $data = $this->input->post(NULL, FALSE);

                $pattern = $this->echelon_model->add_pattern($id,$data);
                echo json_encode(array(
                    'id' => $pattern["id"],
                    'pattern'=>$pattern["pattern"]
                ));
            }
        }
    }

    public function edit_pattern($id="")
    {
        if (is_numeric($id)) {
            if ($this->input->is_ajax_request()) {
                /** Validate Entity Form */


                $pattern = $this->echelon_model->get_pattern($id);
                echo json_encode($pattern);
            }
        }
    }

    public function remove_pattern($id="")
    {
        if (is_numeric($id)) {
            if ($this->input->is_ajax_request()) {
                /** Validate Entity Form */


                $pattern = $this->echelon_model->remove_pattern($id);
                echo json_encode($pattern);
            }
        }
    }

    public function remove_response($id="")
    {
        if (is_numeric($id)) {
            if ($this->input->is_ajax_request()) {
                /** Validate Entity Form */


                $response = $this->echelon_model->remove_response($id);
                echo json_encode($response);
            }
        }
    }

    public function delete($id = ""){

        if (!has_permission('echelon', '', 'delete')) {
            access_denied('echelon');
        }

        if ($this->input->is_ajax_request()) {

            if (is_numeric($id)){

                $success = $this->echelon_model->delete($id);
                $message = '';
                if ($success == true) {
                    $message = _l('deleted', _l('category'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                } else {
                    $message =  _l('problem_deleting', _l('category'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                }
            }

        }
    }


}