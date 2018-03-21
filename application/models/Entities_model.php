<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Entities_model extends CRM_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function get($id="")
    {
        if (is_numeric($id)){

            $this->db->where('id', $id);
            $entity = $this->db->get('tblentities')->row();
            return $entity;

        }

        return $this->db->get('tblentities')->result_array();
    }

    public function get_references($id = "")
    {
        if (is_numeric($id)) {
            $this->db->where('entity_id',$id);
            $entityreferences = $this->db->get('tblentityreferences')->result_array();
            return $entityreferences;
        }

        return $this->db->get('tblentityreferences')->result_array();
    }

    public function add($data=array())
    {

        /** @var $entity
         * Set $entity and exclude array
         * from @var $data
         */
        if (isset($data['entity'])) {
            $entity = $data['entity'];
            unset($data['entity']);
        }

        unset($data['reference']);
        unset($data['synonym']);

        if (!isset($data['automatedExpansion'])){
            $data['automatedExpansion'] = 0;
        }

        if (!isset($data['isOverridable'])){
            $data['isOverridable'] = 0;
        }

        $this->db->insert('tblentities',$data);
        $entity_id = $this->db->insert_id();

        if ($this->db->affected_rows() > 0) {

            /** Set new references tp an Entity */
            if ($entity_id && $entity){

                foreach ($entity as $reference){

                    $referenceData = array(
                        'entity_id'=>$entity_id,
                        'reference'=>strtolower($reference['reference']),
                        'synonym'=>strtolower($reference['synonym'])
                    );

                    $this->db->insert('tblentityreferences',$referenceData);
                }
            }
            return true;
        }

        return false;

    }

    public function update($data=array(),$id="")
    {
        if (is_numeric($id))
        {
            /** Delete all references of entity
             * We will insert new ones
             */
            $this->db->where('entity_id',$id);
            $this->db->delete('tblentityreferences');


            /** @var $entity
             * Set $entity and exclude array
             * from @var $data
             */
            if (isset($data['entity'])) {
                $entity = $data['entity'];
                unset($data['entity']);
            }

            unset($data['reference']);
            unset($data['synonym']);

            if (!isset($data['automatedExpansion'])){
                $data['automatedExpansion'] = 0;
            }

            if (!isset($data['isOverridable'])){
                $data['isOverridable'] = 0;
            }

            /** Set new references tp an Entity */
            if ($entity){

                foreach ($entity as $reference){

                    $referenceData = array(
                        'entity_id'=>$id,
                        'reference'=>strtolower($reference['reference']),
                        'synonym'=>strtolower($reference['synonym'])
                    );

                    $this->db->insert('tblentityreferences',$referenceData);
                }
            }

            $this->db->where('id', $id);
            $this->db->update('tblentities', $data);

            if ($this->db->affected_rows() > 0) {
                logActivity('Entity Update [ID:'.$id.']');
                return true;
            }

            return false;
        }

        return false;
    }

    public function delete($id="")
    {
        if (is_numeric($id))
        {
            /** Delete Entity */
            $this->db->where('id',$id);
            $this->db->delete('tblentities');

            if($this->db->affected_rows() > 0){
                logActivity('Entity Delete [ID:'.$id.']');

                /** Delete Entities references */
                $this->db->where('entity_id',$id);
                $this->db->delete('tblentityreferences');

                return true;
            }

            return false;

        }

        return false;
    }

}