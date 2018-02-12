<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents extends Clients_controller
{
    function __construct()
    {
        parent::__construct();

        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');

        $this->load->model("intents_model");
        do_action('after_clients_area_init');

        if (!isset($this->wt_agent) || empty($this->wt_agent)){
            redirect(site_url('agents/agent'));
        }
    }

    public function index(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        $data['bodyclass'] = 'sidebar-mini skin-blue-light';
        $data['title'] = get_option('intents');
        $this->data    = $data;
        $this->view    = 'intents/manage';
        $this->layout();
    }

    public function list_intents(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->is_ajax_request()) {

            $aColumns = array('intent_name');

            $sIndexColumn = "id";
            $sTable = 'tblintents';

            $where = array();
            array_push($where,' AND agentid = '.$this->wt_agent.' AND userid ='.get_client_user_id());

            $result = data_tables_init($aColumns,$sIndexColumn,$sTable,array(),$where,array('id','userid','is_default'));
            $output = $result['output'];
            $rResult = $result['rResult'];

            foreach ( $rResult as $aRow ) {
                $row = array();
                for ( $i=0 ; $i<count($aColumns) ; $i++ )
                {

                        if ($aRow['is_default'] == 1 ) {
                            $_data = '<i class="fa fa-bookmark-o text-success"></i>&nbsp;&nbsp;'.$aRow[ $aColumns[$i] ];
                        } else {
                            $_data = '<i class="fa fa-circle-thin text-info"></i>&nbsp;&nbsp;'.$aRow[ $aColumns[$i] ];
                        }

                    $row[] = $_data;
                }

                $options = icon_btn(site_url().'intents/intent/'.$aRow['id'],'pencil-square-o','btn-default');
                $options .= ' '.icon_btn('#','remove','btn-danger',array('data-id'=>$aRow['id'],'data-url'=>site_url('intents/delete'),'onclick'=>'deleteIntent(this)'));
                $row[]  = $options;

                $output['aaData'][] = $row;
            }
            echo json_encode( $output );
            die();
        }
    }

    public function intent($id=""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->post()) {
            $this->form_validation->set_rules('intent_name', _l('intent_name'), 'required');
            $this->form_validation->set_rules('action', _l('action'), 'required');

            if ($this->form_validation->run() !== FALSE) {

                $data = $this->input->post(NULL, FALSE);

                $data['agentid']=$this->wt_agent;
                $data['userid']=get_client_user_id();

                unset($data['usersays']);

                if ($id == '') {
                    $success = $this->intents_model->add($data);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('intents')));
                        redirect(site_url('intents/'));

                    } else {
                        set_alert('warning', _l('agent_exist'));
                    }
                } else {

                    $success = $this->intents_model->update($data, $id);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('intents')));
                    }
                    redirect(site_url('intents/'));
                }
            }
        }

        if ($id == '') {
            $data['title']                  = _l('clients_intent_create');
        } else {
            $intent = $this->intents_model->get($id);
            $intentusersays = $this->intents_model->get_usersays($id);
            $intentsusersaysparameters = $this->intents_model->get_intentsusersaysparameters($id);

            $data['intent'] = $intent;
            $data['intentusersays'] = $intentusersays;
            $data['intentsusersaysparameters'] = $intentsusersaysparameters;
            $data['title'] = _l('edit_intent');
        }

        $data['bodyclass'] = 'sidebar-mini skin-blue-light';
        $this->data    = $data;
        $this->view    = 'intents/intent';
        $this->layout();
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

    public function addusersay(){

        if($this->input->is_ajax_request()) {

            $usersay = $this->input->post(NULL, FALSE);

            $parameters = checkSpeechContentParameters($usersay['speech'],$this->wt_agent);

            echo json_encode(array(
                    'usersay'=>$usersay['speech'],
                    'parameters'=>$parameters
                )
            );
        }
    }
}