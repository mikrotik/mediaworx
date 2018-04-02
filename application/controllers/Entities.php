<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Entities extends Clients_controller
{
    function __construct()
    {
        parent::__construct();
        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');

        $this->load->model("entities_model");

        if (!$this->agent_scope){
            redirect(site_url('agents/agent'));
        }
    }

    public function index()
    {
        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        $data['title'] = _l('entities');
        $this->data    = $data;
        $this->view    = 'entities/manage';
        $this->layout();
    }

    /** List all entities */
    public function list_entities(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->is_ajax_request()) {

            $aColumns = array('entity_name');

            $sIndexColumn = "id";
            $sTable = 'tblentities';

            $where = array();
            array_push($where,' AND agent_id = '.$this->agent_scope);

            $result = data_tables_init($aColumns,$sIndexColumn,$sTable,array(),$where,array('id','user_id'));
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

                if ($id == '') {
                    $success = $this->entities_model->add($data);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('entities')));
                        redirect(site_url('entities/'));

                    }
                } else {

                    $success = $this->entities_model->update($data, $id);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('entities')));
                    }
                    redirect(site_url('entities/entity/'.$id));
                }
            }
        }

        if ($id == '') {
            $data['title']                  = _l('new_entity');
        } else {
            $entity = $this->entities_model->get($id);
            $entity_references = $this->entities_model->get_references($id);

            $data['entity'] = $entity;
            $data['entity_references'] = $entity_references;

            $data['title'] = _l('update_entity');
        }

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

    /**
     * TODO
     * Not fully accurate
     * ex: coffee can not be found
     */
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