<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Smalltalk extends Clients_controller
{
    public $bodyclass= "skin-blue sidebar-mini";

    function __construct()
    {
        parent::__construct();
        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');

        $this->load->model("smalltalk_model");
        do_action('after_clients_area_init');

        if (!$this->agent_scope){
            redirect(site_url('agents/agent'));
        }
    }

    public function index(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        $data['bodyclass'] = $this->bodyclass;
        $data['title'] = _l('small_talks');
        $this->data    = $data;
        $this->view    = 'smalltalk/manage';
        $this->layout();
    }

    /** List all small talks */
    public function list_smalltalks(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->is_ajax_request()) {

            $aColumns = array('small_talk_name');

            $sIndexColumn = "id";
            $sTable = 'tblsmalltalks';

            $where = array();
            array_push($where,' AND agentid = '.$this->agent_scope.' AND userid ='.get_client_user_id());

            $result = data_tables_init($aColumns,$sIndexColumn,$sTable,array(),$where,array('id','userid'));
            $output = $result['output'];
            $rResult = $result['rResult'];

            foreach ( $rResult as $aRow ) {
                $row = array();
                for ( $i=0 ; $i<count($aColumns) ; $i++ )
                {
                    $_data = '<i class="fa fa-comments-o"></i> '.$aRow[ $aColumns[$i] ];

                    $row[] = $_data;
                }

                $options = icon_btn(site_url().'smalltalk/small_talk/'.$aRow['id'],'pencil-square-o','btn-default');
                $options .= ' '.icon_btn('#','remove','btn-danger',array('data-id'=>$aRow['id'],'data-url'=>site_url('smalltalk/delete'),'onclick'=>'deleteSmalltalk(this)'));
                $row[]  = $options;

                $output['aaData'][] = $row;
            }
            echo json_encode( $output );
            die();
        }
    }

    public function small_talk($id = ""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->post()) {
            $this->form_validation->set_rules('small_talk_name', _l('small_talk_name'), 'required');

            if ($this->form_validation->run() !== FALSE) {

                $data = $this->input->post(NULL, FALSE);

                if ($id == '') {
                    $success = $this->smalltalk_model->add($data);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('small_talks')));
                        redirect(site_url('smalltalk/'));

                    }
                } else {

                    $success = $this->smalltalk_model->update($data, $id);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('small_talks')));
                    }
                    redirect(site_url('smalltalk/small_talk/'.$id));
                }
            }
        }

        if ($id == '') {
            $data['title']                  = _l('new_small_talk');
        } else {
            $small_talk = $this->smalltalk_model->get($id);
            $small_talk_references = $this->smalltalk_model->get_references($id);

            $data['small_talk'] = $small_talk;
            $data['small_talk_references'] = $small_talk_references;
            $data['title'] = _l('update_small_talk');
        }

        $data['bodyclass'] = $this->bodyclass;
        $this->data    = $data;
        $this->view    = 'smalltalk/smalltalk';
        $this->layout();
    }

    public function delete($id = ""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->is_ajax_request()) {

            if (is_numeric($id)){

                $success = $this->smalltalk_model->delete($id);
                $message = '';
                if ($success == true) {
                    $message = _l('deleted', _l('small_talks'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                } else {
                    $message =  _l('problem_deleting', _l('small_talks'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                }
            }

        }
    }
}