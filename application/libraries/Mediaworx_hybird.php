<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once VENDOR_FOLDER . 'ml/autoload.php';

class Mediaworx_Hybird
{
    private $_CI;
    protected $_agent = array();
    protected $_request = array();
    protected $_actionComplete = false;
    protected $_usersays = array();
    protected $redis;

    function __construct($agent, $request)
    {
        $this->_CI = &get_instance();

        $this->_agent = $agent;
        $this->_request = $request;

        $this->_CI->db->where('agentid',$this->_agent->agentid);
        $this->_usersays = $this->_CI->db->get('tblintentsusersays')->result_array();
        $this->_CI->load->library('redis');
        $this->redis = new Redis();
    }

    public function process(){

        /*
         * check for ongoing dialog
         */

        $dialog = $this->checkDialogflow($this->_request);


        if (!$this->_actionComplete){
            $response['context']['name'] = UUID::v5(APP_ENC_KEY,$this->_request['session'])."_id_dialog_context";
        }

        $response['actionIncomplete'] = $this->_actionComplete; // set true when all set

        $response['source'] = strtolower($this->_agent->agent_name);
        /*
         * get parameters of usersay
         */

        $resolvedUserParameters  = checkSpeechContentParameters($dialog->usersay,$this->_agent->agentid);

        /*
         * get entities of resolvedParameters
         */

        foreach ($resolvedUserParameters as $resolvedUserParameter){

            $resolvedParameters[] = array(
                'parameter_name'=>$resolvedUserParameter['parameter_name'],
                'entity'=>$resolvedUserParameter['entity'],
                'resolved_value'=>$resolvedUserParameter['resolved_value'],
                'resolved_entity'=>$this->getEntitiesofParameters($resolvedUserParameter['parameter_name'])
            );
        }

        $response['resolvedParameters'] = $resolvedParameters;

        /*
         * resolve intent id by usersay
         */
        $predictions = array();
        foreach ($this->_usersays as $intentUsersay) {
            $distance = $this->LevenshteinDistance($intentUsersay['usersay'],$dialog->usersay);

            $predictions[$distance] = array(
                "intentid"=>$intentUsersay['intentid'],
                "intentUsersay"=>$intentUsersay['usersay'],
                "score"=>$distance
            );
        }


        $score = array_column($predictions, 'score');
        $intentid = $predictions[min($score)]['intentid'];

        /*
         * get intent and action
         */
        $intent = $this->getIntent($intentid);

        if ($intent){

            $response['action'] = $intent->action;
        }

        /*
         * get intent actions and original values
         */

        $response['context']['parameters'] = $this->getIntentActions($intent->action,$response['resolvedParameters']);

        /*
         * get list required actions
         */

        $response['context']['requiredParameters'] = $this->getRequiredParameters();

        /*
         * check if required parameters are filled
         */

        foreach($this->getRequiredParameters() as $requiredParamenter){

            if (array_key_exists($requiredParamenter,$response['context']['parameters']) && empty($response['context']['parameters'][$requiredParamenter])){

                $action = $this->getAction('$'.$requiredParamenter,$intent->action);

                $prompt = $this->getActionPrompt($action->id);

                $response['fulfillment']['speech'] = $prompt->prompt;

                /*
                 * add response to dialogflow
                 */

                $this->addResponse($prompt->prompt);

                return $response;
            }
        }

        $response['fulfillment']['speech'] = $this->getResponse($intent,$response);

        // clear the dialog session
        $this->clearDialog($this->_request['session']);
        $this->_actionComplete = true;
        $response['actionIncomplete'] = $this->_actionComplete;
        
        return $response;
    }

    protected function clearDialog($sessionid){

        $this->_CI->db->where('client_session_id',$sessionid);
        $this->_CI->db->delete('tbldialogsessions');

    }

    protected function addResponse($response){

        if ($response){

            $this->_CI->db->where('client_session_id',$this->_request['session']);
            $this->_CI->db->update('tbldialogsessions',array('response'=>$response));
        }

        return false;

    }

    protected function getResponse($intent,$responseData){

        $response = array();

        $this->_CI->db->where('intentid', $intent->id);
        $responses = $this->_CI->db->get('tblintentsresponses')->result_array();

        $parameters = $this->generateParameters($responseData['context']['parameters']);

        $totalParameters = count($parameters);

        $stringParameters = array();

        foreach ($responses as $intentResponse){

            $countFindings = 0;

            $string = $intentResponse['response'];
            $countParamaeters = 0;

            $regex = '~(:\w+)~';
            if (preg_match_all($regex, str_replace("$",":",$string), $matches, PREG_PATTERN_ORDER)) {
                foreach ($matches[1] as $word) {
                    $countParamaeters++;
                }
            }

                foreach ($parameters as $key=>$parameter){
                    if (strpos($string, '$'.$key)!==false) {

                        $stringParameters["@".$key] = $parameter;

                        $countFindings++;

                        if ($totalParameters == $countParamaeters){
                            return strtr(str_replace('$','@',$string),$stringParameters);
                        }
                    }
                };
            }



        $this->_CI->db->where('intentid', $intent->id);
        $this->_CI->db->order_by('id', 'RANDOM');
        $this->_CI->db->limit(1);
        $response = $this->_CI->db->get('tblintentsresponses')->row();

        return $response->response;
    }

    protected function generateParameters($parameters){

        $generatedData = array();

        foreach ($parameters as $key=>$parameter){

            if (!empty($parameter)) {
                $generatedData[$key] = $parameter;
            }

        }

        return $generatedData;
    }

    protected function getActionPrompt($actionid){

        if (is_numeric($actionid)){

            $this->_CI->db->where('actionid',$actionid);
            $intentActionPrompt = $this->_CI->db->get('tblintentactionprompts')->row();

            return $intentActionPrompt;
        }
        return false;
    }

    protected function getAction($actionValue,$action){

        if (is_string($actionValue)){

            $this->_CI->db->where('value',$actionValue);
            $this->_CI->db->where('action',$action);
            $intentAction = $this->_CI->db->get('tblintentsaction')->row();

            return $intentAction;
        }
        return false;
    }

    protected function getIntent($intentid){

        if (is_numeric($intentid)){

            $this->_CI->db->where('id',$intentid);
            $intent = $this->_CI->db->get('tblintents')->row();

            return $intent;
        }
        return false;
    }

    protected function getEntitiesofParameters($parameter_name){

        if (is_string($parameter_name) && !empty($parameter_name)){

            $this->_CI->db->where('entity_name',trim($parameter_name," "));
            $entity = $this->_CI->db->get('tblentities')->row();

            if ($entity){

                unset($entity->agentid);
                unset($entity->userid);

                return $entity;
            }

            return false;
        }

        return false;

    }

    protected function getIntentActions($action,$resolvedParameters = array())
    {
        $parameters = array();
        $value = "";
        $key = 0;
        if (is_string($action)){

            $this->_CI->db->where('action', $action);
            $actions = $this->_CI->db->get('tblintentsaction')->result_array();

            foreach ($actions as $actionList){

                if ($resolvedParameters){

                    if ($resolvedParameters[$key]['parameter_name'] == trim($actionList['value'],'$')){
                        $value = $resolvedParameters[$key]['resolved_value'];
                        $key++;

                    }
                }

                $parameters[trim($actionList['value'],'$')] = $value;
                $value = "";
            }

            return $parameters;
        }

        return false;
    }

    protected function getRequiredParameters(){

        $this->_CI->db->where('is_required','1');
        $requiredParameters = $this->_CI->db->get('tblintentsaction')->result_array();

        if ($requiredParameters){

            foreach ($requiredParameters as $requiredParameter ) {

                $parameters[] = trim($requiredParameter['value'],"$");
            }

            return $parameters;

        }

        return false;
    }

    protected function LevenshteinDistance($s1, $s2)
    {
        $sLeft = (strlen($s1) > strlen($s2)) ? $s1 : $s2;
        $sRight = (strlen($s1) > strlen($s2)) ? $s2 : $s1;
        $nLeftLength = strlen($sLeft);
        $nRightLength = strlen($sRight);
        if ($nLeftLength == 0)
            return $nRightLength;
        else if ($nRightLength == 0)
            return $nLeftLength;
        else if ($sLeft === $sRight)
            return 0;
        else if (($nLeftLength < $nRightLength) && (strpos($sRight, $sLeft) !== FALSE))
            return $nRightLength - $nLeftLength;
        else if (($nRightLength < $nLeftLength) && (strpos($sLeft, $sRight) !== FALSE))
            return $nLeftLength - $nRightLength;
        else {
            $nsDistance = range(1, $nRightLength + 1);
            for ($nLeftPos = 1; $nLeftPos <= $nLeftLength; ++$nLeftPos)
            {
                $cLeft = $sLeft[$nLeftPos - 1];
                $nDiagonal = $nLeftPos - 1;
                $nsDistance[0] = $nLeftPos;
                for ($nRightPos = 1; $nRightPos <= $nRightLength; ++$nRightPos)
                {
                    $cRight = $sRight[$nRightPos - 1];
                    $nCost = ($cRight == $cLeft) ? 0 : 1;
                    $nNewDiagonal = $nsDistance[$nRightPos];
                    $nsDistance[$nRightPos] =
                        min($nsDistance[$nRightPos] + 1,
                            $nsDistance[$nRightPos - 1] + 1,
                            $nDiagonal + $nCost);
                    $nDiagonal = $nNewDiagonal;
                }
            }
            return $nsDistance[$nRightLength];
        }
    }

    protected function getDefaultFallbackResponse(){

        $this->_CI->db->where('intent_name','Default Fallback Intent');
        $defaultFallbackIntent = $this->_CI->db->get('tblintents')->row();

        $this->_CI->db->where('intentid', $defaultFallbackIntent->id);
        $this->_CI->db->order_by('id', 'RANDOM');
        $this->_CI->db->limit(1);
        $defaultFallback = $this->_CI->db->get('tblintentsresponses')->row();

        return $defaultFallback;

    }

    protected function checkDialogflow($data){

        if ($data){

            $this->_CI->db->where('client_session_id',$data['session']);
            $this->_CI->db->order_by('id','desc');
            $this->_CI->db->limit(1);
            $dialog = $this->_CI->db->get('tbldialogsessions')->row();

            if ($dialog){

                return $dialog;
            }

            return false;
        }
    }

    protected function getPrompt()
    {

    }
}