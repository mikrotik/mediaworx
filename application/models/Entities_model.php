<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Entities_model extends CRM_Model
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
            $entity = $this->db->get('tblentities')->row();
            return $entity;

        }

        return $this->db->get('tblentities')->result_array();
    }

    public function get_references($id = ''){

        if (is_numeric($id)) {
            $this->db->where('entityid',$id);
            $entity = $this->db->get('tblentityreferences')->result_array();
            return $entity;
        }

        return false;
    }

    public function add($data=array())
    {
        if ($data){

            /** @var $entity
             * Set $entity and exclude array
             * from @var $data
             */
            if (isset($data['entity'])) {
                $entity = $data['entity'];
                unset($data['entity']);
            }

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

            $this->db->insert('tblentities',$data);
            $entityid = $this->db->insert_id();

            if ($this->db->affected_rows() > 0) {

                /** Set new references tp an Entity */
                if ($entity){

                    foreach ($entity as $reference){

                        $referenceData = array(
                            'entityid'=>$entityid,
                            'reference'=>strtolower($reference['reference']),
                            'synonyms'=>strtolower($reference['synonym'])
                        );

                        $this->db->insert('tblentityreferences',$referenceData);
                    }
                }
                return true;
            }


        }

        return false;
    }

    public function update($data = array(),$id = ""){

        if (is_numeric($id))
        {
            /** Delete all references of entity
             * We will insert new ones
             */
            $this->db->where('entityid',$id);
            $this->db->delete('tblentityreferences');

            /** @var $entity
             * Set $entity and exclude array
             * from @var $data
             */
            if (isset($data['entity'])) {
                $entity = $data['entity'];
                unset($data['entity']);
            }

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
                        'entityid'=>$id,
                        'reference'=>strtolower($reference['reference']),
                        'synonyms'=>strtolower($reference['synonym'])
                    );

                    $this->db->insert('tblentityreferences',$referenceData);
                }
            }

            $this->db->where('id', $id);
            $this->db->update('tblentities', $data);

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
            /** Delete Entity all references */
            $this->db->where('id',$id);
            $this->db->delete('tblentityreferences');

            /** Delete Entity */
            $this->db->where('id',$id);
            $this->db->delete('tblentities');

            if($this->db->affected_rows() > 0){
                logActivity('Entity Delete [ID:'.$id.']');

                return true;
            }

            return false;

        }

        return false;
    }
}