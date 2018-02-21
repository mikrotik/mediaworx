<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Dialog extends Mediaworx_controller
{

    private $_request = array();
    private $_agent = array();
    private $_MLSettings;

    protected $_objDateTime;

    function __construct()
    {
        parent::__construct();
        $this->_objDateTime = new DateTime('NOW');

        $this->_format='json';
    }

    public function index($action){

        print_r($action);
        exit();

        // grab the request
        $this->_request = array();
        parse_str(file_get_contents('php://input'), $this->_request);

        if (is_array($this->_request) && isset($this->_request['session'])) {
            $this->_format = $this->_request['format'];

            if (!$this->_request) {
                $this->_api->process(array(), 412, true, $this->_format);
            }

            $accessToken = $this->_request['access_token'];
            $accessType = $this->_request['type'];

            // Validate Access Token
            if (!UUID::is_valid($accessToken)){
                $this->_api->process(array(), 403, true, $this->_format);
            }

            // Check Access Token & Access Type are matched
            if (!apiAccess($accessToken,$accessType)){
                $this->_api->process(array(), 401, true, $this->_format);
            } else {
                $this->_agent = apiAccess($accessToken,$accessType);
            }

            $this->load->library('mediaworx_'.$this->_agent->matchmode);
            $matchmode = 'Mediaworx_'.ucfirst($this->_agent->matchmode);

            $this->_MLSettings = new $matchmode($this->_agent,$this->_request);

            // Perform Request
            $this->$action($this->_request);

        } else {

            $this->_api->process(array(), 412, true, $this->_format);
        }
    }

    public function speech($data){

        /*
         * check ongoing dialog
         */

        $dialog = $this->checkDialogflow($data);

        if (!$dialog){

            $this->setDialog($data);

        } else {

            $data['usersay'] = $dialog->usersay.' '.$data['usersay'];
            $this->setDialog($data);
        }

        $data[] = $this->_MLSettings->process();

        return $this->_api->process($data,200,false,$this->_format);
    }

    protected function checkDialogflow($data){

        if ($data){

            $this->db->where('client_session_id',$data['session']);
            $this->db->order_by('id','desc');
            $this->db->limit(1);
            $dialog = $this->db->get('tbldialogsessions')->row();

            if ($dialog){

                return $dialog;
            }

            return false;
        }
    }

    protected function setDialog($data){

        if ($data){

            $this->db->where('client_session_id',$data['session']);
            $this->db->delete('tbldialogsessions');

            $dialogData = array(

                'client_session_id'=>$data['session'],
                'usersay'=>$data['usersay'],
            );

            $this->db->insert('tbldialogsessions',$dialogData);
        }
    }
}