<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Smalltalk_model extends CRM_Model
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
            $entity = $this->db->get('tblsmalltalks')->row();
            return $entity;

        }

        return $this->db->get('tblsmalltalks')->result_array();
    }

    public function get_references($id = ''){

        if (is_numeric($id)) {
            $this->db->where('smalltalkid',$id);
            $entity = $this->db->get('tblsmalltalkreferences')->result_array();
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
            if (isset($data['dialog'])) {
                $dialog = $data['dialog'];
                unset($data['dialog']);
            }

            unset($data['question']);
            unset($data['answer']);

            if (!isset($data['is_public'])){
                $data['is_public'] = 0;
            }

            if (!isset($data['is_default'])){
                $data['is_default'] = 0;
            }

            if (!isset($data['merge'])){
                $data['merge'] = 0;
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
            } else {
                $data['userid'] = get_client_user_id();
                $data['agentid'] = $this->agent_scope;
            }

            $data['is_system'] = $this->is_admin;

            $this->db->insert('tblsmalltalks',$data);
            $smalltalkid = $this->db->insert_id();

            if ($this->db->affected_rows() > 0) {

                /** Set new references tp an Small talk */
                if ($dialog){

                    foreach ($dialog as $reference){

                        $referenceData = array(
                            'smalltalkid'=>$smalltalkid,
                            'question'=>strtolower($reference['question']),
                            'answer'=>strtolower($reference['answer'])
                        );

                        $this->db->insert('tblsmalltalkreferences',$referenceData);
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
            $this->db->where('smalltalkid',$id);
            $this->db->delete('tblsmalltalkreferences');


            /** @var $entity
             * Set $entity and exclude array
             * from @var $data
             */
            if (isset($data['dialog'])) {
                $dialog = $data['dialog'];
                unset($data['dialog']);
            }

            unset($data['question']);
            unset($data['answer']);

            if (!isset($data['is_public'])){
                $data['is_public'] = 0;
            }

            if (!isset($data['is_default'])){
                $data['is_default'] = 0;
            }

            if (!isset($data['merge'])){
                $data['merge'] = 0;
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
            } else {
                $data['userid'] = get_client_user_id();
                $data['agentid'] = $this->agent_scope;
            }

            $data['is_system'] = $this->is_admin;

            /** Set new references tp an Small talk */
            if ($dialog){

                foreach ($dialog as $reference){

                    $referenceData = array(
                        'smalltalkid'=>$id,
                        'question'=>strtolower($reference['question']),
                        'answer'=>strtolower($reference['answer'])
                    );

                    $this->db->insert('tblsmalltalkreferences',$referenceData);
                }
            }

            $this->db->where('id', $id);
            $this->db->update('tblsmalltalks', $data);

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
            $this->db->where('smalltalkid',$id);
            $this->db->delete('tblsmalltalkreferences');

            /** Delete Entity */
            $this->db->where('id',$id);
            $this->db->delete('tblsmalltalks');

            if($this->db->affected_rows() > 0){
                logActivity('Entity Delete [ID:'.$id.']');

                return true;
            }

            return false;

        }

        return false;
    }
}