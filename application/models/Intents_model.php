<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents_model extends CRM_Model
{
    function __construct()
    {
        parent::__construct();
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

    public function add($data=array())
    {

        $this->db->insert('tblintents',$data);
        $intent_id = $this->db->insert_id();

        if ($this->db->affected_rows() > 0) {

            return $intent_id;
        }

        return false;

    }

    public function update($data=array(),$id="")
    {

        if (!isset($data['status'])){
            $data['status'] = 0;
        }

        if (!isset($data['parent_id'])){
            $data['parent_id'] = 0;
        }

        if (!isset($data['is_default'])){
            $data['is_default'] = 0;
        }

        if (isset($data['context_input'])) {
            $data['context_input'] = json_encode($data['context_input']);
        } else {
            $data['context_input'] = null;
        }

        if (isset($data['context_output'])) {
            $data['context_output'] = json_encode($data['context_output']);
        } else {
            $data['context_output'] = null;
        }

        if (isset($data['events'])) {
            $data['events'] = json_encode($data['events']);
        } else {
            $data['events'] = null;
        }


        $this->db->where('id', $id);
        $this->db->update('tblintents', $data);

        if ($this->db->affected_rows() > 0) {

            return true;
        }

        return false;
    }

    public function delete($id="")
    {

    }
}