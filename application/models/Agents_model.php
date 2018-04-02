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
            $this->db->where('id', $id);
            $agent = $this->db->get('tblagents')->row();
            return $agent;
        }

        return $this->db->get('tblagents')->result_array();
    }

    public function add($data=array()){

        $this->db->insert('tblagents', $data);
        $id = $this->db->insert_id();
        if($id){

            logActivity('New Agent Created [ID:'.$id.']');
            return $id;
        }

        return false;

    }

    public function update($data = array(),$id = ""){

        $this->db->where('id', $id);
        $this->db->update('tblagents', $data);

        if ($this->db->affected_rows() > 0) {
            return true;
        }

        return false;

    }

    public function delete($id){

        $this->db->where('id',$id);
        $this->db->delete('tblagents');

        if($this->db->affected_rows() > 0){

            /** Delete all corresponding data of Agent */
            $this->db->select('id');
            $this->db->where('agent_id',$id);
            $entities = $this->db->get('tblentities')->result_array();

            foreach ($entities as $entity)
            {
                $this->db->where('entity_id',$entity['id']);
                $this->db->delete('tblentityreferences');
            }

            $this->db->where('agent_id',$id);
            $this->db->delete('tblentities');

            $this->db->select('id');
            $this->db->where('agent_id',$id);
            $intents = $this->db->get('tblintents')->result_array();

            foreach ($intents as $intent)
            {
                $this->db->where('intent_id',$intent['id']);
                $this->db->delete('tblintents_responses');

                $this->db->where('object','intent');
                $this->db->where('object_id',$intent['id']);
                $this->db->delete('tblpatterns');
            }

            $this->db->where('agent_id',$id);
            $this->db->delete('tblintents');


            logActivity('Agent Delete [ID:'.$id.']');
            return true;
        }

        return false;
    }
}