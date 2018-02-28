<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents extends Clients_controller
{
    public $bodyclass= "skin-blue sidebar-mini";

    function __construct()
    {
        parent::__construct();
        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');

        $this->load->model("intents_model");
        do_action('after_clients_area_init');

        if (!isset($this->agent_scope) || empty($this->agent_scope)){
            redirect(site_url('agents/agent'));
        }
    }

    public function index(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        $data['bodyclass'] = $this->bodyclass;
        $data['title'] = _l('agents');
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
            array_push($where, ' AND agentid = ' . $this->agent_scope .' AND parentid = 0');

            $result = data_tables_init($aColumns, $sIndexColumn, $sTable, array(), $where, array('id', 'status', 'is_default', 'agentid'));
            $output = $result['output'];
            $rResult = $result['rResult'];

            foreach ($rResult as $aRow) {
                $row = array();
                $followup = '';
                for ($i = 0; $i < count($aColumns); $i++) {
                    $total_parents = total_rows('tblintents',array('parentid'=>$aRow['id'],'userid'=>get_client_user_id(),'agentid'=>$this->agent_scope));

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
            $intentresponses = $this->intents_model->get_responses($id);
            $intentusersays = $this->intents_model->get_usersays($id);

            $data['intent'] = $intent;
            $data['intentresponses'] = $intentresponses;
            $data['intentusersays'] = $intentusersays;
            $data['title'] = _l('update_intent');
        }

        if ($id) {
            $data['bodyclass'] = $this->bodyclass;
            $this->data = $data;
            $this->view = 'intents/intent';
            $this->layout();
        } else {
            redirect(site_url('intents'));
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

    public function getfollowupintent($id){

        if (is_numeric($id) && $this->input->is_ajax_request()){

            $followup = $this->intents_model->get_followupintent($id);

            echo json_encode($followup);
        }
    }

    public function get_prompts($entity){

        if ($this->input->is_ajax_request()){

            $prompts = $this->intents_model->get_prompts($entity);

            echo json_encode($prompts);
        }
    }

    public function delete_prompt($id){

        if ($this->input->is_ajax_request()){

            $this->intents_model->delete_prompt($id);

        }
    }

    public function update_prompts(){

        if($this->input->is_ajax_request()) {

            $data = $this->input->post(NULL, FALSE);

            $this->intents_model->update_prompts($data);

        }
    }

    public function parse_string()
    {
        if ($this->input->is_ajax_request()){

            $data = $this->input->post(NULL, FALSE);

            $parse = parseString($data['string']);

            echo json_encode($parse);
        }
    }
}