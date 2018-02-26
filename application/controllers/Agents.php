<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Agents extends Clients_controller
{
    public $bodyclass= "skin-blue sidebar-mini";

    function __construct()
    {
        parent::__construct();
        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');

        $this->load->model("agents_model");
        do_action('after_clients_area_init');
    }

    public function index(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        $data['bodyclass'] = $this->bodyclass;
        $data['title'] = _l('agents');
        $this->data    = $data;
        $this->view    = 'agents/manage';
        $this->layout();
    }

    public function list_agents(){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->is_ajax_request()) {

            $aColumns = array('agent_name');

            $sIndexColumn = "agentid";
            $sTable = 'tblagents';

            $where = array();
            array_push($where,' AND userid ='.get_client_user_id());

            $result = data_tables_init($aColumns,$sIndexColumn,$sTable,array(),$where,array('agentid','userid'));
            $output = $result['output'];
            $rResult = $result['rResult'];

            foreach ( $rResult as $aRow ) {
                $row = array();
                for ( $i=0 ; $i<count($aColumns) ; $i++ )
                {
                    $_data = $aRow[ $aColumns[$i] ];

                    $row[] = $_data;
                }

                $options = icon_btn(site_url().'agents/agent/'.$aRow['agentid'],'pencil-square-o','btn-default');
                $options .= ' '.icon_btn('#','remove','btn-danger',array('data-id'=>$aRow['agentid'],'data-url'=>site_url('agents/delete'),'onclick'=>'deleteAgent(this)'));
                $row[]  = $options;

                $output['aaData'][] = $row;
            }
            echo json_encode( $output );
            die();
        }
    }

    public function agent($id=""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->post()) {
            $this->form_validation->set_rules('agent_name', _l('agents_name'), 'required');
            $this->form_validation->set_rules('default_timezone', _l('settings_localization_default_timezone'), 'required');

            if ($this->form_validation->run() !== FALSE) {
                handle_agent_image_upload($id);
                $data = $this->input->post(NULL, FALSE);

                if ($id == '') {
                    $this->form_validation->set_rules('default_language', _l('localization_default_language'), 'required');

                    $data['client_access_token'] = UUID::v5(APP_ENC_KEY,UUID::trxid(16));
                    $data['developer_access_token'] = UUID::v5(APP_ENC_KEY,UUID::trxid(8));


                    $success = $this->agents_model->add($data);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('agents')));
                        redirect(site_url('intents/'));

                    } else {
                        set_alert('warning', _l('agent_exist'));
                    }
                } else {

                    $success = $this->agents_model->update($data, $id);
                    if ($success) {
                        set_alert('success', _l('updated_successfuly', _l('agents')));
                    }
                    redirect(site_url('agents/agent/'.$id));
                }
            }
        }

        if ($id == '') {
            $data['title']                  = _l('new_agent');
        } else {
            $agent = $this->agents_model->get($id);

            $data['agent'] = $agent;
            $data['title'] = _l('update_agent');
        }

        $data['bodyclass'] = $this->bodyclass;
        $this->data    = $data;
        $this->view    = 'agents/agent';
        $this->layout();

    }

    public function delete($id = ""){

        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        if ($this->input->is_ajax_request()) {

            if (is_numeric($id)){

                $success = $this->agents_model->delete($id);
                $message = '';
                if ($success == true) {
                    $message = _l('deleted', _l('agents'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                } else {
                    $message =  _l('problem_deleting', _l('agents'));
                    echo json_encode(array(
                        'success' => $success,
                        'message' => $message
                    ));
                }
            }

        }
    }

    public function remove_agent_image($agentid)
    {
        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }
        do_action('before_remove_agent_image');
        if (file_exists(get_upload_path_by_type('agent_images') .$agentid)) {
            delete_dir(get_upload_path_by_type('agent_images') . $agentid);
        }
        $this->db->where('agentid', $agentid);
        $this->db->update('tblagents', array(
            'agent_image' => NULL
        ));
        if ($this->db->affected_rows() > 0) {
            redirect(site_url('agents'));
        }
    }
}