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

    public function get_patterns($id="")
    {
        if (is_numeric($id)){

            $this->db->where('object', 'intent');
            $this->db->where('object_id', $id);
            $patterns = $this->db->get('tblpatterns')->result_array();
            return $patterns;

        }

        return false;
    }

    public function get_responses($id="")
    {
        if (is_numeric($id)){

            $this->db->where('intent_id', $id);
            $intent_responses = $this->db->get('tblintents_responses')->result_array();
            return $intent_responses;

        }

        return false;
    }

    public function add($data=array())
    {

        if (isset($data['context_input'])) {
            $data['context_input'] = json_encode($data['context_input']);
        } else {
            $data['context_input'] = json_encode([]);
        }

        if (isset($data['context_output'])) {
            $data['context_output'] = json_encode($data['context_output']);
        } else {
            $data['context_output'] = json_encode([]);
        }

        if (isset($data['events'])) {
            $data['events'] = json_encode($data['events']);
        } else {
            $data['events'] = json_encode([]);
        }

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

        if (!isset($data['is_end'])){
            $data['is_end'] = 0;
        }

        if (isset($data['context_input'])) {
            $data['context_input'] = json_encode($data['context_input']);
        } else {
            $data['context_input'] = json_encode([]);
        }

        if (isset($data['context_output'])) {
            $data['context_output'] = json_encode($data['context_output']);
        } else {
            $data['context_output'] = json_encode([]);
        }

        if (isset($data['events'])) {
            $data['events'] = json_encode($data['events']);
        } else {
            $data['events'] = json_encode([]);
        }

        unset($data['pattern']);
        unset($data['response']);

        if (isset($data["intent"]["user_exp"]))
        {
            $user_expressions = $data["intent"]["user_exp"];
        }

        if (isset($data["intent"]["action_parameters"]))
        {
            $data['action_parameters'] = json_encode($data["intent"]["action_parameters"]);
        }

        if (isset($data["intent"]["responses"]))
        {
            $responses = $data["intent"]["responses"];
        }

        unset($data['intent']);

        $this->db->where('id', $id);
        $this->db->update('tblintents', $data);

        $this->db->where('intent_id', $id);
        $this->db->delete('tblintents_responses');

        foreach ($responses as $response)
        {
            $responseData = array(
                'intent_id'=>$id,
                'response'=>$response
            );

            $this->db->insert('tblintents_responses', $responseData);
        }

        $this->db->where('object', 'intent');
        $this->db->where('object_id',$id);
        $this->db->delete('tblpatterns');

        foreach ($user_expressions as $user_expression)
        {
            $patternData = array(
                'object'=>'intent',
                'object_id'=>$id,
                'pattern'=>$user_expression['pattern'],
                'stanford'=>$user_expression['stanford'],
                'parameters'=>json_encode($user_expression['parameters'])
            );

            $this->db->insert('tblpatterns', $patternData);
        }

        if ($this->db->affected_rows() > 0) {

            return true;
        }

        return false;
    }

    public function delete($id="")
    {

        if (is_numeric($id))
        {

            $this->db->where('id',$id);
            $this->db->delete('tblintents');

            $this->db->where('object', 'intent');
            $this->db->where('object_id',$id);
            $this->db->delete('tblpatterns');

            $this->db->where('intent_id',$id);
            $this->db->delete('tblintents_responses');

            if($this->db->affected_rows() > 0){
                logActivity('Intent Delete [ID:'.$id.']');
                return true;
            }

            return false;

        }

        return false;
    }
}