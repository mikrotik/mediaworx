<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Intents_model extends CRM_Model
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
            $intent = $this->db->get('tblintents')->row();
            return $intent;

        }

        return $this->db->get('tblintents')->result_array();
    }

    public function get_usersays($id="")
    {
        if (is_numeric($id)){

            $this->db->where('intentid', $id);
            $usersays = $this->db->get('tblintentusersays')->result_array();

            return $usersays;

        }
        return false;
    }

    public function get_prompts($entity="")
    {
        if (is_string($entity)){

            $this->db->where('entity_name', trim($entity,'@'));
            $entity = $this->db->get('tblentities')->row();

            if ($entity){

                $this->db->where('entityid',$entity->id);
                $prompts = $this->db->get('tblintentactionprompts')->result_array();

                return $prompts;
            }
            return false;

        }
        return false;
    }

    public function get_responses($id="")
    {
        if (is_numeric($id)){

            $this->db->where('intentid', $id);
            $responses = $this->db->get('tblintentresponses')->result_array();

            return $responses;

        }
        return false;
    }

    public function get_context($context_name="")
    {
        if ($context_name){

            $this->db->where('context_name', $context_name);
            $context = $this->db->get('tblcontexts')->row();

            return $context;

        }
        $contexts = $this->db->get('tblcontexts')->result_array();
        return $contexts;
    }

    public function add($data=array(),$id = "")
    {
        if ($data){

            /**
             * TODO - Assign AgentID and UserID for entries from Portal
             * Add some additional variables
             * regarding to admin or client
             * @userid
             * @agentid
             */

            if (!isset($data['is_public'])){
                $data['is_public'] = 0;
            }

            if (!isset($data['agentid'])){
                $data['agentid'] = 0;
            }

            if (!isset($data['userid'])){
                $data['userid'] = 0;
            }

            if (!isset($data['is_default'])){
                $data['is_default'] = 0;
            }

            if (!isset($data['merge'])){
                $data['merge'] = 0;
            }

            if (!isset($data['is_end'])){
                $data['is_end'] = 0;
            }

            if (!isset($data['status'])){
                $data['status'] = 0;
            }

            if (!isset($data['action'])){
                $data['action'] = NULL;
            }

            if (!isset($data['actions'])){
                $data['action_parameters'] = NULL;
            } else {
                $data['action_parameters'] = json_encode($data['actions']);
            }

            if ($id){
                $data['parentid'] = $id;
            }


            unset($data['actions']);

            if ($this->is_admin){

                $data['userid'] = 0;
                $data['agentid'] = 0;

            } else {

                $data['userid'] = get_client_user_id();
                $data['agentid'] = $this->agent_scope;
            }


            $data['is_system'] = $this->is_admin;

            /** @var $prompts
             * Set $prompts and exclude array
             * from @var $data
             */
            if (isset($data['prompts'])) {
                $prompts = $data['prompts'];
                unset($data['prompts']);
            }

            /** @var $usersays
             * Set $usersays and exclude array
             * from @var $data
             */
            if (isset($data['usersays'])) {
                $usersays = $data['usersays'];
                unset($data['usersays']);
            }

            /** @var $responses
             * Set $responses and exclude array
             * from @var $data
             */
            if (isset($data['responses'])) {
                $responses = $data['responses'];
                unset($data['responses']);
            }

            /** @var $parameters
             * Set $parameters and exclude array
             * from @var $data
             */
            if (isset($data['parameters'])) {
                $parameters = $data['parameters'];
                unset($data['parameters']);
            }

            $this->db->insert('tblintents',$data);
            $intentid = $this->db->insert_id();

            if ($this->db->affected_rows() > 0) {

                return $intentid;
            }


        }

        return false;
    }

    public function update($data = array(),$id = ""){

        if (is_numeric($id))
        {

            unset($data['usersay']);
            unset($data['response']);
            unset($data['onoffswitch']);
            unset($data['prompt']);
            unset($data['action_row']);


            /** Delete all intent related information
             * We will insert new ones
             */
            $this->db->where('intentid',$id);
            $this->db->delete('tblintentusersays');

            $this->db->where('intentid',$id);
            $this->db->delete('tblintentresponses');


            if (!isset($data['status'])){
                $data['status'] = 0;
            }

            if (!isset($data['is_public'])){
                $data['is_public'] = 0;
            }

            if (!isset($data['agentid'])){
                $data['agentid'] = 0;
            }

            if (!isset($data['is_end'])){
                $data['is_end'] = 0;
            }

            if (!isset($data['userid'])){
                $data['userid'] = 0;
            }

            if (!isset($data['is_default'])){
                $data['is_default'] = 0;
            }

            if (!isset($data['merge'])){
                $data['merge'] = 0;
            }

            if (!isset($data['status'])){
                $data['status'] = 0;
            }

            if (!isset($data['action'])){
                $data['action'] = NULL;
            }

            if (!isset($data['actions'])){
                $data['action_parameters'] = NULL;
            } else {
                $data['action_parameters'] = json_encode($data['actions']);
            }


            unset($data['actions']);


            if ($this->is_admin){

                $data['userid'] = 0;
                $data['agentid'] = 0;

            } else {

                $data['userid'] = get_client_user_id();
                $data['agentid'] = $this->agent_scope;
            }

            $data['is_system'] = $this->is_admin;

            /** @var $prompts
             * Set $prompts and exclude array
             * from @var $data
             */
            if (isset($data['prompts'])) {
                $prompts = $data['prompts'];
                unset($data['prompts']);
            }

            /** @var $usersays
             * Set $usersays and exclude array
             * from @var $data
             */
            if (isset($data['usersays'])) {
                $usersays = $data['usersays'];
                unset($data['usersays']);
            }

            /** @var $responses
             * Set $responses and exclude array
             * from @var $data
             */
            if (isset($data['responses'])) {
                $responses = $data['responses'];
                unset($data['responses']);
            }

            /** @var $parameters
             * Set $parameters and exclude array
             * from @var $data
             */
            if (isset($data['parameters'])) {
                $parameters = $data['parameters'];
                unset($data['parameters']);
            }

            if (isset($data['input_contexts'])) {
                $data['input_contexts'] = json_encode($data['input_contexts']);
            } else {
                $data['input_contexts'] = null;
            }

            if (isset($data['output_contexts'])) {
                $data['output_contexts'] = json_encode($data['output_contexts']);
            } else {
                $data['output_contexts'] = null;
            }

            if (isset($data['events'])) {
                $data['events'] = json_encode($data['events']);
            }

            if ($usersays)
            {
                foreach ($usersays as $key=>$usersay)
                {
                    $usersayData = array(
                        'intentid'=>$id,
                        'usersay'=>strtolower($usersay['usersay']),
                        'parameters'=>($parameters ? json_encode($parameters[$key]) : NULL),
                        'parse'=>$usersay['parse']
                    );

                    $this->db->insert('tblintentusersays',$usersayData);
                }
            }

            if ($responses)
            {
                foreach ($responses as $response)
                {
                    $responseData = array(
                        'intentid'=>$id,
                        'response'=>strtolower($response['response'])
                    );

                    $this->db->insert('tblintentresponses',$responseData);
                }
            }

            $this->db->where('id', $id);
            $this->db->update('tblintents', $data);

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

            /** Delete all intent related information */
            $this->db->where('intentid',$id);
            $this->db->delete('tblintentusersays');

            $this->db->where('intentid',$id);
            $this->db->delete('tblintentresponses');

            $this->db->where('intentid',$id);
            $this->db->delete('tblintentactionprompts');

            /** Delete Intent */
            $this->db->where('id',$id);
            $this->db->delete('tblintents');

            if($this->db->affected_rows() > 0){
                logActivity('Intent Delete [ID:'.$id.']');

                return true;
            }

            return false;

        }

        return false;
    }

    public function delete_prompt($id)
    {
        if (is_numeric($id))
        {

            $this->db->where('id',$id);
            $this->db->delete('tblintentactionprompts');

            if($this->db->affected_rows() > 0){
                logActivity('Intent Delete [ID:'.$id.']');

                return true;
            }

            return false;

        }

        return false;
    }

    public function update_prompts($data=array()){

        $this->db->where('entity_name',trim($data['entity'],"@"));
        $entity = $this->db->get('tblentities')->row();

        if ($entity){

            $data = array(
                'intentid'=>$data['intentid'],
                'entityid'=>$entity->id,
                'prompt'=>$data['prompt']
            );

            $this->db->insert('tblintentactionprompts',$data);

        }

        return false;
    }

    public function change_intent_status($id,$status)
    {
        $hook_data['id']     = $id;
        $hook_data['status'] = $status;
        $hook_data           = do_action('    ', $hook_data);
        $status              = $hook_data['status'];
        $id                  = $hook_data['id'];

        $this->db->where('id', $id);
        $this->db->update('tblintents', array(
            'status' => $status
        ));
        if ($this->db->affected_rows() > 0) {
            logActivity('Intent Status Changed [IntentID: ' . $id . ' Status(Active/Inactive): ' . $status . ']');
            return true;
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
}