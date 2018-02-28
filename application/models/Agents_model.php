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

        $this->db->insert('tblagents', $data);
        $id = $this->db->insert_id();
        if($id){

            $publicIntents = getPublicIntents();

            if ($publicIntents){

                foreach ($publicIntents as $publicIntent)
                {
                    $agentPublicIntentData = array(
                        "agentid"=>$id,
                        "userid"=>get_client_user_id(),
                        "intent_name"=>$publicIntent['intent_name'],
                        "is_default"=>$publicIntent['is_default'],
                        "is_system"=>0,
                        "status"=>1
                    );

                    $this->db->insert('tblintents',$agentPublicIntentData);
                    $agentDefaultIntentId = $this->db->insert_id();

                    $agentPublicIntentResponses = getPublicIntentResponses($agentDefaultIntentId);

                    if ($agentPublicIntentResponses){

                        foreach ($agentPublicIntentResponses as $agentPublicIntentResponse)
                        {
                            $agentPublicIntentResponseData = array(
                                "intentid"=>$agentDefaultIntentId,
                                "response"=>$agentPublicIntentResponse['response']
                            );

                            $this->db->insert('tblintentresponses',$agentPublicIntentResponseData);
                        }
                    }
                }
            }
            logActivity('New Agent Created [ID:'.$id.']');
            return $id;
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


            /** Get All intents belongs to the agent */
            $this->db->where('agentid',$id);
            $intents = $this->db->get('tblintents')->result_array();

            $this->db->where('agentid',$id);
            $this->db->delete('tblintents');

            if ($intents){

                foreach ($intents as$intent){

                    $this->db->where('intentid',$intent['id']);
                    $this->db->delete('tblintentusersays');

                    $this->db->where('intentid',$intent['id']);
                    $this->db->delete('tblintentresponses');
                }
            }

            logActivity('Agent Delete [ID:'.$id.']');
            return true;
        }

        return false;
    }
}