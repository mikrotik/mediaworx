<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents_model extends CRM_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function get($id = '')
    {

        if (is_numeric($id)) {
            $this->db->where('id', $id);
            $intents = $this->db->get('tblintents')->row();
            return $intents;
        }

        return $this->db->get('tblintents')->result_array();
    }

    public function get_usersays($id = ''){

        if (is_numeric($id)){

            $this->db->where('intentid',$id);
            $intentusersays = $this->db->get('tblintentsusersays')->result_array();

            return $intentusersays;
        }

        return false;
    }

    public function get_intentsusersaysparameters($id = ''){

        if (is_numeric($id)){

            $this->db->where('usersayid',$id);
            $intentsusersaysparameters = $this->db->get('tblintentsusersaysparameters')->result_array();

            return $intentsusersaysparameters;
        }

        return false;
    }

    public function add($data=array()){

        // First check for all cases if the email exists.
        $this->db->where('intent_name', $data['intent_name']);
        $intent = $this->db->get('tblintents')->row();
        if ($intent) {
            return false;
        }

        if (!$data['action']){
            $data['action'] = $data['intent_name'];
        }

        $this->db->insert('tblintents', $data);
        $intentid = $this->db->insert_id();

        if (isset($data['intent'])){

            foreach ($data['intent'] as $key=>$usersay){
                $usersayData = array(
                    'intentid'=>$intentid,
                    'agentid'=>$this->wt_agent,
                    'usersay'=>$usersay['usersay'],
                    'action'=>($data['action'] ? $data['action'] : $data['intent_name'])
                );
                $this->db->insert('tblintentsusersays',$usersayData);
                $usersayid = $this->db->insert_id();
                $this->setParameters($data['parameters'][$key],$data['action'],$usersayid,$intentid);
            }
        }

        if (isset($data['actions'])){

            foreach ($data['actions'] as $action) {

                $actionData = array(
                    'action'=>$data['action'],
                    'agentid'=>$this->wt_agent,
                    'value'=>'$'.$action['parameter_name'],
                    'is_required'=>(isset($action['_is_required']) ? $action['is_requires'] : 0),
                    'is_list'=>(isset($action['is_list']) ? $action['is_list'] : 0),
                    'prompt'=>(isset($action['prompt']) ? serialize($action['prompt']) : null)
                );

                $this->db->insert('tblintentsaction',$actionData);

            }
        }

        if($intentid){

            logActivity('New Intent Created [ID:'.$intentid.']');

            return true;
        }

        return false;

    }

    public function update($data = array(),$id = ""){


        unset($data['events']);

        $this->db->where('id', $id);
        $this->db->update('tblintents', $data);

        $this->db->where('intentid', $id);
        $this->db->delete('tblintentsusersays');

        $this->db->where('intentid', $id);
        $this->db->delete('tblintentsusersaysparameters');

        $this->db->where('action', $data['action']);
        $this->db->delete('tblintentsaction');

        if (isset($data['intent'])){
            foreach ($data['intent'] as $key=>$usersay){
                $usersayData = array(
                    'intentid'=>$id,
                    'agentid'=>$this->wt_agent,
                    'usersay'=>$usersay['usersay'],
                    'action'=>($data['action'] ? $data['action'] : $data['intent_name'])
                );
                $this->db->insert('tblintentsusersays',$usersayData);
                $usersayid = $this->db->insert_id();
                $this->setParameters($data['parameters'][$key],$data['action'],$usersayid,$id);
            }
        }

        if (isset($data['actions'])){

            foreach ($data['actions'] as $action) {

                $actionData = array(
                    'action'=>$data['action'],
                    'agentid'=>$this->wt_agent,
                    'value'=>'$'.$action['parameter_name'],
                    'is_required'=>(isset($action['is_required']) ? $action['is_required'] : 0),
                    'is_list'=>(isset($action['is_list']) ? $action['is_list'] : 0),
                    'prompt'=>(isset($action['prompt']) ? serialize($action['prompt']) : null)
                );



                $this->db->insert('tblintentsaction',$actionData);

            }
        }

        if ($this->db->affected_rows() > 0) {

            return true;
        }

        return false;

    }

    private function setParameters($data,$action,$usersayid,$id){

        if (isset($data)){

            foreach ($data as $parameter){
                    $parameterData = array(
                        'usersayid'=>$usersayid,
                        'intentid'=>$id,
                        'agentid'=>$this->wt_agent,
                        'parameter_name'=>$parameter['parameter_name'],
                        'entity'=>$parameter['entity'],
                        'resolved_value'=>$parameter['resolved_value'],
                    );
                    $this->db->insert('tblintentsusersaysparameters',$parameterData);
            }

        }
    }

    public function delete($id){

        $this->db->where('id',$id);
        $this->db->delete('tblintents');

        if($this->db->affected_rows() > 0){

            // Delete all entities of agent
            $this->db->where('intentid',$id);
            $this->db->delete('tblintentsusersays');

            logActivity('Intent Delete [ID:'.$id.']');

            return true;
        }

        return false;
    }
}