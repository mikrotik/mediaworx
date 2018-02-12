<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Entities extends Clients_controller
{
    function __construct()
    {
        parent::__construct();
        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');

        $this->load->model("entities_model");
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
        $data['title'] = get_option('entities');
        $this->data    = $data;
        $this->view    = 'entities/manage';
        $this->layout();
    }

    public function list_entities(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->is_ajax_request()) {

            $aColumns = array('entity_name');

            $sIndexColumn = "id";
            $sTable = 'tblentities';

            $where = array();
            array_push($where,' AND agentid = '.$this->wt_agent.' AND userid ='.get_client_user_id());

            $result = data_tables_init($aColumns,$sIndexColumn,$sTable,array(),$where,array('id','userid'));
            $output = $result['output'];
            $rResult = $result['rResult'];

            foreach ( $rResult as $aRow ) {
                $row = array();
                for ( $i=0 ; $i<count($aColumns) ; $i++ )
                {
                    $_data = '@'.$aRow[ $aColumns[$i] ];

                    $row[] = $_data;
                }

                $options = icon_btn(site_url().'entities/entity/'.$aRow['id'],'pencil-square-o','btn-default');
                $options .= ' '.icon_btn('#','remove','btn-danger',array('data-id'=>$aRow['id'],'data-url'=>site_url('entities/delete'),'onclick'=>'deleteEntity(this)'));
                $row[]  = $options;

                $output['aaData'][] = $row;
            }
            echo json_encode( $output );
            die();
        }
    }

    public function entity($id=""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->post()) {
            $this->form_validation->set_rules('entity_name', _l('entity_name'), 'required');

            if ($this->form_validation->run() !== FALSE) {

                $data = $this->input->post(NULL, FALSE);

                $data['agentid']=$this->wt_agent;
                $data['userid']=get_client_user_id();

                if ($id == '') {
                    $success = $this->entities_model->add($data);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('entities')));
                        redirect(site_url('entities/'));

                    } else {
                        set_alert('warning', _l('agent_exist'));
                    }
                } else {

                    $success = $this->entities_model->update($data, $id);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('entities')));
                    }
                    redirect(site_url('entities/'));
                }
            }
        }

        if ($id == '') {
            $data['title']                  = _l('clients_entity_create');
        } else {
            $entity = $this->entities_model->get($id);
            $entity_values = $this->entities_model->get_values($id);

            $data['entity'] = $entity;
            $data['entity_values'] = $entity_values;
            $data['title'] = _l('edit_entity');
        }

        $data['bodyclass'] = 'sidebar-mini skin-blue-light';
        $this->data    = $data;
        $this->view    = 'entities/entity';
        $this->layout();
    }

    public function delete($id = ""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
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