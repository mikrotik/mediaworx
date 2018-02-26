<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents_model extends CRM_Model
{
    private $is_admin;

    function __construct()
    {
        parent::__construct();
        $this->is_admin = is_admin();
    }

    public function get($id="")
    {
        if (is_numeric($id)){

            $this->db->where('id', $id);
            $intent = $this->db->get('tblintents')->row();
            return $intent;

        }

        return $this->db->get('tblintents')->result_array();
    }

    public function get_usersays($id="")
    {
        if (is_numeric($id)){

            $this->db->where('intentid', $id);
            $usersays = $this->db->get('tblintentusersays')->result_array();

            return $usersays;

        }
        return false;
    }

    public function get_responses($id="")
    {
        if (is_numeric($id)){

            $this->db->where('intentid', $id);
            $responses = $this->db->get('tblintentresponses')->result_array();

            return $responses;

        }
        return false;
    }

    public function add($data=array())
    {
        if ($data){

            /**
             * TODO - Assign AgentID and UserID for entries from Portal
             * Add some additional variables
             * regarding to admin or client
             * @userid
             * @agentid
             */
            if ($this->is_admin){

                $data['userid'] = 0;
                $data['agentid'] = 0;
            }

            $data['is_system'] = $this->is_admin;
            $data['status'] = 1;

            $this->db->insert('tblintents',$data);
            $intentid = $this->db->insert_id();

            if ($this->db->affected_rows() > 0) {

                return $intentid;
            }


        }

        return false;
    }

    public function update($data = array(),$id = ""){

        if (is_numeric($id))
        {
            /** Delete all intent related information
             * We will insert new ones
             */
            $this->db->where('intentid',$id);
            $this->db->delete('tblintentusersays');

            $this->db->where('intentid',$id);
            $this->db->delete('tblintentresponses');

            /** @var $usersays
             * Set $usersays and exclude array
             * from @var $data
             */
            if (isset($data['usersays'])) {
                $usersays = $data['usersays'];
                unset($data['usersays']);
            }

            /** @var $responses
             * Set $responses and exclude array
             * from @var $data
             */
            if (isset($data['responses'])) {
                $responses = $data['responses'];
                unset($data['responses']);
            }

            /** @var $parameters
             * Set $parameters and exclude array
             * from @var $data
             */
            if (isset($data['parameters'])) {
                $parameters = $data['parameters'];
                unset($data['parameters']);
            }

            if ($usersays)
            {
                foreach ($usersays as $key=>$usersay)
                {
                    $usersayData = array(
                        'intentid'=>$id,
                        'usersay'=>strtolower($usersay['usersay']),
                        'parameters'=>($parameters ? json_encode($parameters[$key]) : NULL)
                    );

                    $this->db->insert('tblintentusersays',$usersayData);
                }
            }

            if ($responses)
            {
                foreach ($responses as $response)
                {
                    $responseData = array(
                        'intentid'=>$id,
                        'response'=>strtolower($response['response'])
                    );

                    $this->db->insert('tblintentresponses',$responseData);
                }
            }

            $this->db->where('id', $id);
            $this->db->update('tblintents', $data);

            if ($this->db->affected_rows() > 0) {

                return true;
            }

            return false;
        }

        return false;
    }

    public function delete($id)
    {
        if (is_numeric($id))
        {

            /** Delete all intent related information */
            $this->db->where('intentid',$id);
            $this->db->delete('tblintentusersays');

            $this->db->where('intentid',$id);
            $this->db->delete('tblintentresponses');

            /** Delete Intent */
            $this->db->where('id',$id);
            $this->db->delete('tblintents');

            if($this->db->affected_rows() > 0){
                logActivity('Intent Delete [ID:'.$id.']');

                return true;
            }

            return false;

        }

        return false;
    }
}