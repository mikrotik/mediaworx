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

    public function get_responses($id = ''){

        if (is_numeric($id)){

            $this->db->where('intentid',$id);
            $intentresponses = $this->db->get('tblintentsresponses')->result_array();

            return $intentresponses;
        }

        return false;
    }

    public function get_followupintent($id = ''){

        if (is_numeric($id)){

            $this->db->where('parentid',$id);
            $intentfollowup = $this->db->get('tblintents')->result_array();

            return $intentfollowup;
        }

        return false;
    }

    public function get_followups(){

        $this->db->where('parentid >', 0);
        $followups = $this->db->get('tblintents')->result_array();

        if ($followups) {
            return $followups;
        }

        return false;
    }

    public function get_actionprompts($id = ''){

        $this->db->where('actionid', $id);
        $prompts = $this->db->get('tblintentactionprompts')->result_array();

        if ($prompts) {
            return $prompts;
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

    public function add($data=array(),$parentid = 0){

        unset($data['events']);
        unset($data['response']);
        unset($data['prompt']);
        unset($data['id']);
        unset($data['actionid']);

        $dataIntent = '';
        $dataParameters = '';
        $dataActions = '';
        $dataTextresponse = '';
        $dataPrompts = '';

        if (isset($data['intent'])){
            $dataIntent = $data['intent'];
            unset($data['intent']);
        }

        if (isset($data['parameters'])){
            $dataParameters = $data['parameters'];
            unset($data['parameters']);
        }

        if (isset($data['actions'])){
            $dataActions = $data['actions'];
            unset($data['actions']);
        }

        if (isset($data['textresponse'])){
            $dataTextresponse = $data['textresponse'];
            unset($data['textresponse']);
        }

        if (isset($data['prompts'])){
            $dataPrompts = $data['prompts'];
            unset($data['prompts']);
        }

        // First check for all cases if the email exists.
        $this->db->where('intent_name', $data['intent_name']);
        $intent = $this->db->get('tblintents')->row();
        if ($intent) {
            return false;
        }

        if (!$data['action']){
            $data['action'] = $data['intent_name'];
        }

        $data['parentid'] = $parentid;

        if (!empty($data['context'])){
            $data['context'] = implode(',',$data['context']);
        } else {
            $data['context'] = null;
        }

        if ($parentid > 0){
            $this->db->where('id',$parentid);
            $this->db->update('tblintents', array('has_followup'=>1));
        } else {
            $data['has_followup'] = 0;
        }

        $data['active'] = 0;


        $this->db->insert('tblintents', $data);
        $intentid = $this->db->insert_id();

        if (isset($dataIntent)){

            foreach ($dataIntent as $key=>$usersay){
                $usersayData = array(
                    'intentid'=>$intentid,
                    'agentid'=>$this->wt_agent,
                    'usersay'=>$usersay['usersay'],
                    'action'=>($data['action'] ? $data['action'] : $data['intent_name'])
                );
                $this->db->insert('tblintentsusersays',$usersayData);
                $usersayid = $this->db->insert_id();
                $this->setParameters($dataParameters[$key],$usersayid,$intentid);
            }
        }

        if (isset($dataActions)){

            foreach ($dataActions as $action) {

                $actionData = array(
                    'action'=>$data['action'],
                    'agentid'=>$this->wt_agent,
                    'value'=>'$'.$action['parameter_name'],
                    'is_required'=>(isset($action['_is_required']) ? $action['is_required'] : 0),
                    'is_list'=>(isset($action['is_list']) ? $action['is_list'] : 0),
                );

                $this->db->insert('tblintentsaction',$actionData);
                $actionid = $this->db->insert_id();

                if (isset($dataPrompts)) {
                    foreach ($dataPrompts as $key=>$dataPrompt) {

                        if ($action['parameter_name'] == $key){

                            foreach ($dataPrompt as $prompt) {
                                $promptData = array(
                                    'intentid' => $intentid,
                                    'agentid' => $this->wt_agent,
                                    'userid' => get_client_user_id(),
                                    'actionid' => $actionid,
                                    'prompt' => $prompt
                                );

                                $this->db->insert('tblintentactionprompts', $promptData);
                            }
                        }
                    }
                }

            }
        }

        if (isset($dataTextresponse)){

            foreach ($dataTextresponse as $reponse) {

                $responseData = array(
                    'userid'=>get_client_user_id(),
                    'agentid'=>$this->wt_agent,
                    'intentid'=>$intentid,
                    'response'=>$reponse,
                );



                $this->db->insert('tblintentsresponses',$responseData);

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
        unset($data['response']);
        unset($data['prompt']);
        unset($data['id']);
        unset($data['actionid']);

        $dataIntent = '';
        $dataParameters = '';
        $dataActions = '';
        $dataTextresponse = '';
        $dataPrompts = '';


        if (isset($data['intent'])){
            $dataIntent = $data['intent'];
            unset($data['intent']);
        }

        if (isset($data['parameters'])){
            $dataParameters = $data['parameters'];
            unset($data['parameters']);
        }

        if (isset($data['actions'])){
            $dataActions = $data['actions'];
            unset($data['actions']);
        }

        if (isset($data['textresponse'])){
            $dataTextresponse = $data['textresponse'];
            unset($data['textresponse']);
        }

        if (isset($data['prompts'])){
            $dataPrompts = $data['prompts'];
            unset($data['prompts']);
        }

        if (!empty($data['context'])){
            $data['context'] = implode(',',$data['context']);
        } else {
            $data['context'] = null;
        }

        $this->db->where('id', $id);
        $this->db->update('tblintents', $data);

        $this->db->where('intentid', $id);
        $this->db->delete('tblintentsusersays');

        $this->db->where('intentid', $id);
        $this->db->delete('tblintentsusersaysparameters');

        $this->db->where('intentid', $id);
        $this->db->delete('tblintentsresponses');

        $this->db->where('intentid', $id);
        $this->db->delete('tblintentactionprompts');

        $this->db->where('action', $data['action']);
        $this->db->delete('tblintentsaction');

        if (isset($dataIntent)){
            foreach ($dataIntent as $key=>$usersay){
                $usersayData = array(
                    'intentid'=>$id,
                    'agentid'=>$this->wt_agent,
                    'usersay'=>$usersay['usersay'],
                    'action'=>($data['action'] ? $data['action'] : $data['intent_name'])
                );
                $this->db->insert('tblintentsusersays',$usersayData);
                $usersayid = $this->db->insert_id();
                $this->setParameters($dataParameters[$key],$usersayid,$id);
            }
        }

        if (isset($dataActions)){

            foreach ($dataActions as $action) {

                $actionData = array(
                    'action'=>$data['action'],
                    'agentid'=>$this->wt_agent,
                    'value'=>'$'.$action['parameter_name'],
                    'is_required'=>(isset($action['is_required']) ? $action['is_required'] : 0),
                    'is_list'=>(isset($action['is_list']) ? $action['is_list'] : 0),
                );

                $this->db->insert('tblintentsaction',$actionData);
                $actionid = $this->db->insert_id();

                if (isset($dataPrompts)) {
                    foreach ($dataPrompts as $key=>$dataPrompt) {

                        if ($action['parameter_name'] == $key){

                            foreach ($dataPrompt as $prompt) {
                                $promptData = array(
                                    'intentid' => $id,
                                    'agentid' => $this->wt_agent,
                                    'userid' => get_client_user_id(),
                                    'actionid' => $actionid,
                                    'prompt' => $prompt
                                );

                                $this->db->insert('tblintentactionprompts', $promptData);
                            }
                        }
                    }
                }

            }
        }

        if (isset($dataTextresponse)){

            foreach ($dataTextresponse as $reponse) {

                $responseData = array(
                    'userid'=>get_client_user_id(),
                    'agentid'=>$this->wt_agent,
                    'intentid'=>$id,
                    'response'=>$reponse,
                );



                $this->db->insert('tblintentsresponses',$responseData);

            }
        }

        if ($this->db->affected_rows() > 0) {

            return true;
        }

        return false;

    }

    private function setParameters($data,$usersayid,$id){


        if (isset($data)){
            $parameterData = array();

            foreach ($data as $parameter){
                    $parameterData = array(
                        'usersayid'=>$usersayid,
                        'intentid'=>$id,
                        'agentid'=>$this->wt_agent,
                        'parameter_name'=>$parameter['parameter_name'],
                        'entity'=>$parameter['entity'],
                        'resolved_value'=>trim($parameter['resolved_value']),
                    );

                    $this->db->insert('tblintentsusersaysparameters',$parameterData);
            }

        }
    }

    public function delete($id){

        // Get intent
        $this->db->where('id',$id);
        $intent = $this->db->get('tblintents')->row();

        $this->db->where('id',$id);
        $this->db->delete('tblintents');

        if($this->db->affected_rows() > 0){

            // Delete all usersays of intent
            $this->db->where('intentid',$id);
            $this->db->delete('tblintentsusersays');

            // Delete all responses of intent
            $this->db->where('intentid',$id);
            $this->db->delete('tblintentsresponses');

            // Delete all parameters of intent
            $this->db->where('intentid',$id);
            $this->db->delete('tblintentsusersaysparameters');

            // Delete all actions of intent
            $this->db->where('action',$intent->action);
            $this->db->delete('tblintentsaction');

            logActivity('Intent Delete [ID:'.$id.']');

            return true;
        }

        return false;
    }

    public function delete_prompt($id){

        $this->db->where('id',$id);
        $this->db->delete('tblintentactionprompts');

        if($this->db->affected_rows() > 0){
            logActivity('Prompt Delete [ID:'.$id.']');

            return true;
        }

        return false;
    }

    public function addprompt($data=array()){

        $this->db->where('id',$data['actionid']);
        $this->db->update('tblintentsaction',array('is_required'=>1));

        $this->db->insert('tblintentactionprompts',$data);
        $id = $this->db->insert_id();

        if($this->db->affected_rows() > 0){
            logActivity('Prompt Add [ID:'.$id.']');

            return true;
        }

        return false;
    }
}