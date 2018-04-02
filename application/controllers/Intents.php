<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents extends Clients_controller
{
    function __construct()
    {
        parent::__construct();

        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');

        $this->load->model("intents_model");

        if (!$this->agent_scope){
            redirect(site_url('agents/agent'));
        }
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

    /** List all intents */
    public function list_intents(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->is_ajax_request()) {
            $aColumns = array(
                'intent_name'
            );
            $sIndexColumn = "id";
            $sTable = 'tblintents';

            $where = array();
            array_push($where, ' AND agent_id = ' . $this->agent_scope .' AND parent_id = 0');

            $result = data_tables_init($aColumns, $sIndexColumn, $sTable, array(), $where, array('id', 'status', 'is_default', 'agent_id'));
            $output = $result['output'];
            $rResult = $result['rResult'];

            foreach ($rResult as $aRow) {
                $row = array();
                $followup = '';
                for ($i = 0; $i < count($aColumns); $i++) {
                    $total_parents = total_rows('tblintents',array('parent_id'=>$aRow['id'],'agent_id'=>$this->agent_scope));

                    if ($total_parents){
                        $followup = '<i class="fa fa-plus-square-o row-details" data-id="'.$aRow['id'].'"></i>&nbsp;&nbsp;';
                    } else {
                        $followup = '';
                    }

                    $_data = $followup.'<i class="fa fa-' . ($aRow["is_default"] ? "bookmark" : "circle-thin") . ' text-' . ($aRow["status"] ? "info" : "danger") . '"></i>&nbsp;&nbsp;' . $aRow[$aColumns[$i]];
                    $row[] = $_data;
                }

                $options =  '<button type="button" data-url="'.site_url() . 'intents/followup/' . $aRow['id'].'" class="fa fa-plus btn-link" data-toggle="modal" data-target="#new-intent"> '._l('link_followup').'</button>';
                $options .= ' ' .icon_btn(site_url() . 'intents/intent/' . $aRow['id'], 'pencil-square-o', 'btn-default');
                $options .= ' ' . icon_btn('#', 'remove', 'btn-danger', array('data-id' => $aRow['id'], 'data-url' => site_url('intents/delete'), 'onclick' => 'deleteIntent(this)'));

                $row[] = $options;
                $output['aaData'][] = $row;
            }
            echo json_encode($output);
            die();
        }
    }

    public function intent($id="")
    {

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->post()) {
            $this->form_validation->set_rules('intent_name', _l('intent_name'), 'required');

            if ($this->form_validation->run() !== FALSE) {

                $data = $this->input->post(NULL, FALSE);

                if ($id == '') {

                    $id = $this->intents_model->add($data);
                    if ($id) {
                        set_alert('success', _l('updated_successfuly', _l('intents')));
                        redirect(site_url('intents/intent/' . $id));

                    }

                } else {
                    handle_agent_image_upload($id);
                    $success = $this->intents_model->update($data, $id);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('intents')));
                    }
                    redirect(site_url('intents/intent/'.$id));
                }
            }
        }

        if ($id == '') {
            $data['title']                  = _l('new_intent');
        } else {
            $intent = $this->intents_model->get($id);
            $intent_responses = $this->intents_model->get_responses($id);
            $patterns = $this->intents_model->get_patterns($id);
            $contexts = [];
            $events = [];

            $intents = $this->intents_model->get();
            foreach ($intents as $context)
            {
                if ($context['agent_id'] == $this->agent_scope) {
                    $contexts[] = $context['intent_name'] . '-followup';
                }
            }

            $data['intent'] = $intent;
            $data['intent_responses'] = $intent_responses;
            $data['patterns'] = $patterns;
            $data['contexts'] = $contexts;
            $data['events'] = $events;
            $data['title'] = _l('update_intent');
        }

        if ($id) {
            $this->data = $data;
            $this->view = 'intents/intent';
            $this->layout();
        } else {
            redirect(site_url('intents'));
        }
    }

    public function delete($id = ""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
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

    public function followup($id=""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->post()) {

            $data = $this->input->post(NULL, FALSE);

            $id = $this->intents_model->add($data,$id);
            if ($id) {
                set_alert('success', _l('updated_successfuly', _l('intents')));
                redirect(site_url('intents/intent/' . $id));

            }
        }
    }

    public function getfollowupintent($id){

        if (is_numeric($id) && $this->input->is_ajax_request()){

            $followup = $this->intents_model->get_followupintent($id);

            echo json_encode($followup);
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