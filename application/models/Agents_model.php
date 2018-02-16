<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Agents_model extends CRM_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function get($id = '')
    {

        if (is_numeric($id)) {
            $this->db->where('agentid', $id);
            $agents = $this->db->get('tblagents')->row();
            return $agents;
        }

        return $this->db->get('tblagents')->result_array();
    }

    public function add($data=array()){

        // First check for all cases if the email exists.
        $this->db->where('agent_name', $data['agent_name']);
        $agent = $this->db->get('tblagents')->row();
        if ($agent) {
            return false;
        }

        $this->db->insert('tblagents', $data);
        $agentid = $this->db->insert_id();
        if($agentid){

            logActivity('New Agent Created [ID:'.$agentid.']');
            $this->session->set_userdata(array('wt_agent'=>$agentid));
            setDefaultFallbackIntentsResponses($agentid,get_client_user_id());
            setDefaultWelcomIntentsResponses($agentid,get_client_user_id());

            return true;
        }

        return false;

    }

    public function update($data = array(),$id = ""){

        $this->db->where('agentid', $id);
        $this->db->update('tblagents', $data);

        if ($this->db->affected_rows() > 0) {
            return true;
        }

        return false;

    }

    public function delete($id){

        $this->db->where('agentid',$id);
        $this->db->delete('tblagents');

        if($this->db->affected_rows() > 0){

            // Delete all entities of agent
            $this->db->where('agentid',$id);
            $this->db->delete('tblentities');

            // Delete all entities references of agent
            $this->db->where('agentid',$id);
            $this->db->delete('tblentitiesreferences');

            // Delete all intents of agent
            $this->db->where('agentid',$id);
            $this->db->delete('tblintents');

            // Delete all intents responses of agent
            $this->db->where('agentid',$id);
            $this->db->delete('tblintentsresponses');

            // Delete all intents usersays of agent
            $this->db->where('agentid',$id);
            $this->db->delete('tblintentsusersays');

            // Delete all intents parameters of agent
            $this->db->where('agentid', $id);
            $this->db->delete('tblintentsusersaysparameters');

            // Delete all intents parameters of actions
            $this->db->where('agentid', $id);
            $this->db->delete('tblintentsaction');

            // Delete all intents prompts of actions
            $this->db->where('agentid', $id);
            $this->db->delete('tblintentactionprompts');

            logActivity('Agent Delete [ID:'.$id.']');

            $this->session->unset_userdata('wt_agent');

            return true;
        }

        return false;
    }
}