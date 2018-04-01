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
            logActivity('Agent Delete [ID:'.$id.']');
            return true;
        }

        return false;
    }
}