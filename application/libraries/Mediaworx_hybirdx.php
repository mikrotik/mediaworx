<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mediaworx_Hybird
{
    private $_CI;
    protected $_agent = array();
    protected $_request = array();
    protected $_usersayid;
    protected $_hasprompt = false;

    function __construct($agent,$request)
    {
        $this->_CI = & get_instance();

        $this->_agent = $agent;
        $this->_request = $request;
    }

    public function getAgent(){

        return $this->_agent;
    }

    public function getRequest(){
        return $this->_request;
    }

    public function setUsersayID($usersayid){

        $this->_usersayid = $usersayid;
    }

    public function getUsersayID(){
        return $this->_usersayid;
    }

    public function process(){


        $total_usersays = total_rows('tblintentsusersays',array('agentid'=>$this->_agent->agentid));

        /* Check if agent has usersays
         * If no usersays found return DefaultFallbackIntent response
        */
        if (!$total_usersays){

            return $this->getDefaultFallbackResponse();
        }

        $this->_CI->db->where('agentid',$this->_agent->agentid);
        $usersays = $this->_CI->db->get('tblintentsusersays')->result_array();

        foreach ($usersays as $usersay){

            $phpStringCompare = new StringCompare(strtolower($usersay['usersay']), strtolower($this->_request['usersay']),
                array('remove_html_tags'=>false, 'remove_extra_spaces'=>true,
                    'remove_punctuation'=>true, 'punctuation_symbols'=>Array('.', ','))
            );

            if ((float) $phpStringCompare->getSimilarityPercentage() / 100 >= (float) $this->_agent->threshold) {
                $arr[$usersay['intentid'].'-'.$usersay['id']][]= $phpStringCompare->getSimilarityPercentage() / 100;
            }
        }

        $prediction =  array_search(max($arr),$arr);
        $predict = explode('-',$prediction);

        if ($predict){
            $this->setUsersayID($predict[1]);
            return $this->getResponse($predict[0]);

        } else {

            return $this->getDefaultFallbackResponse();
        }


    }

    public function getDefaultFallbackResponse(){

        $this->_CI->db->where('intent_name','Default Fallback Intent');
        $defaultFallbackIntent = $this->_CI->db->get('tblintents')->row();

        $this->_CI->db->where('intentid', $defaultFallbackIntent->id);
        $this->_CI->db->order_by('id', 'RANDOM');
        $this->_CI->db->limit(1);
        $response = $this->_CI->db->get('tblintentsresponses')->row();

        return $response->response;

    }

    public function getResponse($intentid){

        /*
         * Get usersay
         */
        $responseData['usersay'] = $this->getUsersay($this->getUsersayID());

        /*
         * Check if there are parameters of intent
        */
        $actions = $this->getIntentActions($intentid,$responseData['usersay']->id,$responseData['usersay']->action);

        $this->_CI->db->where('action',$responseData['usersay']->action);
        $this->_CI->db->where('is_required','1');
        $requiredactions = $this->_CI->db->get('tblintentsaction')->result_array();

        if ($actions) {
            $responseData['parameters'] = $actions;


        } else {

            $this->_CI->db->where('is_required','1');
            $actionParameters = $this->_CI->db->get('tblintentsaction')->result_array();

            foreach ($actionParameters as $action) {

                $parameters[str_replace('$', '', $action['value'])] = $this->parameterValue($intentid, $responseData['usersay']->id, str_replace('$', '', $action['value']));
                $parameters[str_replace('$', '', $action['value']) . '.original'] = $this->getParameterEntity($this->parameterValue($intentid, $responseData['usersay']->id, str_replace('$', '', $action['value'])));
            }

            $responseData['parameters'] = $parameters;
        }

        foreach ($requiredactions as $requiredaction){

            $requiredActions[] = trim($requiredaction['value'],'$');

        }

        $responseData['requiredActions'] = $requiredActions;

        foreach ($requiredactions as $requiredAction) {
            if (array_key_exists(trim($requiredAction['value'],'$'), $responseData['parameters'])) {

                if (empty($responseData['parameters'][trim($requiredAction['value'],'$')])){

                    /*
                     * get prompt of required parameter
                     */

                    $this->_CI->db->where('value',$requiredAction['value']);
                    $action = $this->_CI->db->get('tblintentsaction')->row();

                    /*
                     * get Prompt
                     */
                    $this->_CI->db->where('actionid',$action->id);
                    $prompt = $this->_CI->db->get('tblintentactionprompts')->row();

                    $responseData['fulfillment']['speech'] = $prompt->prompt;
                    $this->_hasprompt = true;
                }
            }

        }

        if ($this->_hasprompt) {
            return $responseData;
        }

        $responseData['usersay'] = $this->getUsersay($this->getUsersayID());

        if ($responseData['usersay']) {
            $this->_CI->db->where('intentid', $intentid);
            $this->_CI->db->order_by('id', 'RANDOM');
            $this->_CI->db->limit(1);
            $response = $this->_CI->db->get('tblintentsresponses')->row();

            $responseData['fulfillment']['speech'] = $response->response;

        } else {
            /*
             * if usersay matches with entity
             */
            $reference = $this->getEntityReference($this->_request['usersay']);

            if ($reference){

                $entity = $this->getEntity($reference->entityid);

                if ($entity){
                    $responseData['parameters'][$entity->entity_name] = $this->_request['usersay'];
                    $responseData['parameters'][$entity->entity_name.'.original'] = $reference->reference;
                }


            }


            $responseData['fulfillment']['speech'] = $this->getDefaultFallbackResponse().$reference;
        }

        return $responseData;
    }

    private function getIntentActions($intentid,$usersayid,$action)
    {
        /*
         * Check if there are actions of intent
        */
        $total_usersays = total_rows('tblintentsusersaysparameters',array('usersayid'=>$usersayid));

        if ($total_usersays) {
            $this->_CI->db->where('action', $action);
            $actions = $this->_CI->db->get('tblintentsaction')->result_array();

            foreach ($actions as $action) {

                $parameters[str_replace('$', '', $action['value'])] = $this->parameterValue($intentid, $usersayid, str_replace('$', '', $action['value']));
                $parameters[str_replace('$', '', $action['value']) . '.original'] = $this->getParameterEntity($this->parameterValue($intentid, $usersayid, str_replace('$', '', $action['value'])));
            }

            return $parameters;
        }

        return false;
    }

    private function parameterValue($intentid,$usersayid,$parameter_name){

        $this->_CI->db->where('intentid', $intentid);
        $this->_CI->db->where('usersayid', $usersayid);
        $this->_CI->db->where('parameter_name', $parameter_name);
        $value = $this->_CI->db->get('tblintentsusersaysparameters')->row();

        return $value->resolved_value;
    }

    protected function getParameterEntity($value){

        if ($value) {
            $this->_CI->db->like('synonym', $value, 'both');
            $entity = $this->_CI->db->get('tblentitiesreferences')->row();

            return $entity->reference;
        }

        return false;
    }

    protected function getEntityReference($value){

        if ($value) {
            $this->_CI->db->like('synonym', $value, 'both');
            $reference = $this->_CI->db->get('tblentitiesreferences')->row();

            return $reference;
        }

        return false;
    }

    protected function getEntity($entityid){
        $this->_CI->db->where('id', $entityid);
        $entity = $this->_CI->db->get('tblentities')->row();

        return $entity;
    }

    private function getUsersay($usersayid){

        $this->_CI->db->where('id', $usersayid);
        $usersay = $this->_CI->db->get('tblintentsusersays')->row();

        return $usersay;
    }
}