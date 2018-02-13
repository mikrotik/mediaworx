<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Entities_model extends CRM_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function get($id = '',$system = '',$where = array())
    {

        if (is_int($system)) {
            $this->db->where('is_system', $system);
        }

        $this->db->where($where);

        if (is_numeric($id)) {
            $this->db->where('id', $id);
            $agents = $this->db->get('tblentities')->row();
            return $agents;
        }

        return $this->db->get('tblentities')->result_array();
    }

    public function get_values($id = ''){

        if (is_numeric($id)) {
            $this->db->where('entityid',$id);
            $entity = $this->db->get('tblentitiesreferences')->result_array();
            return $entity;
        }

        return false;
    }

    public function add($data=array()){

        if (isset($data['entity'])) {
            $entityreferences = $data['entity'];
            unset($data['entity']);
        }

        unset($data['synonyms']);
        unset($data['reference']);

        // First check for all cases if the email exists.
        $this->db->where('entity_name', $data['entity_name']);
        $entity = $this->db->get('tblentities')->row();
        if ($entity) {
            return false;
        }

        $this->db->insert('tblentities', $data);
        $entityid = $this->db->insert_id();

        foreach ($entityreferences as $reference){
            $referenceData = array(
                'entityid'=>$entityid,
                'agentid'=>$this->wt_agent,
                'reference'=>$reference['reference'],
                'synonym'=>$reference['synonym']
            );
            $this->db->insert('tblentitiesreferences', $referenceData);
        }

        if($entityid){
            logActivity('New Entity Created [ID:'.$entityid.']');
            return $entityid;
        }

        return false;

    }

    public function update($data = array(),$id = ""){

        $this->db->where('entityid',$id);
        $this->db->delete('tblentitiesreferences');

        if (isset($data['entity'])) {
            $entityreferences = $data['entity'];
            unset($data['entity']);
        }

        unset($data['synonyms']);
        unset($data['reference']);

        if (!isset($data['automatedExpansion'])){
            $data['automatedExpansion'] = 0;
        }

        if (!isset($data['isOverridable'])){
            $data['isOverridable'] = 0;
        }


        $this->db->where('id', $id);
        $this->db->update('tblentities', $data);

        foreach ($entityreferences as $reference){
            $referenceData = array(
                'entityid'=>$id,
                'agentid'=>(isset($this->wt_agent) ? $this->wt_agent : 0),
                'reference'=>$reference['reference'],
                'synonym'=>$reference['synonym']
            );
            $this->db->insert('tblentitiesreferences', $referenceData);
        }

        if ($this->db->affected_rows() > 0) {
            return true;
        }

        return false;

    }

    public function delete($id){

        $this->db->where('id',$id);
        $this->db->delete('tblentities');

        if($this->db->affected_rows() > 0){
            logActivity('Entity Delete [ID:'.$id.']');

            return true;
        }

        return false;
    }
}