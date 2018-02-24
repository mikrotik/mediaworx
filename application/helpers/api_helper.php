<?php
/**
 * API Helper
 */

/**
 * This function returns all default Intents
 */
function getDefaultIntents()
{

    $CI = & get_instance();

    $CI->db->where('is_default',1);
    $query = $CI->db->get('tblintents')->result_array();

    if ($query){

        foreach ($query as $intent){

            $defaultIntents[] = $intent['action'];

        }

        return $defaultIntents;
    }

    return false;
}

function getUserSays($usersay = "")
{
    $CI = & get_instance();

    $usersayList = array();

    if ($usersay){

        $trimRequest = explode(" ",$usersay);

        foreach ($trimRequest as $request) {
            $CI->db->select('tblintentsusersays.intentid,tblintentsusersays.usersay,tblintentsusersays.action');
            $CI->db->from('tblintentsusersays');
            $CI->db->join('tblintents', 'tblintentsusersays.intentid = tblintents.id');
            $CI->db->where('tblintents.parentid', 0);
            $CI->db->like('tblintentsusersays.usersay', $request);
            $usersayList[] = $CI->db->get()->result_array();
        }

        return current($usersayList);
    }

    return false;
}

function getIntentPredictions($usersays = array(),$request="")
{

    $predictions = array();

    if (is_array($usersays))
    {
        foreach ($usersays as $usersay) {
            $distance = LevenshteinDistance($usersay['usersay'],$request);

            $predictions[$distance] = array(
                "intentid"=>$usersay['intentid'],
                "action"=>$usersay['action'],
                "usersay"=>$usersay['usersay'],
                "score"=>$distance
            );
        }

        return $predictions;
    }

    return false;
}

function getParameters($action,$required = false,$simple = true,$requestedParameters=array(),$stringfy,$chatbotParameters = array()){

    $CI = & get_instance();

    $parameters = array();

    if ($required){
        $CI->db->where('is_required',1);
    }
    $CI->db->where('action',$action);
    $actionParameters = $CI->db->get('tblintentsaction')->result_array();

    if ($actionParameters){

        if ($simple) {
            foreach ($actionParameters as $actionParameter) {
                $parameters[trim($actionParameter['value'], "$")] = getRequestedParameterValues(trim($actionParameter['value'], "$"),$requestedParameters,$chatbotParameters);
            }

        } else {
            foreach ($actionParameters as $actionParameter) {
                $value = getRequestedParameterValues(trim($actionParameter['value'], "$"),$requestedParameters,$chatbotParameters);

                $parameters[trim($actionParameter['value'], "$")] = getParameterEntity($stringfy,$value);
                $parameters[trim($actionParameter['value'], "$") . '.original'] = getRequestedParameterValues(trim($actionParameter['value'], "$"),$requestedParameters,$chatbotParameters);
            }

        }

        return $parameters;

    }

    return false;
}

function getIntentResponses($intentid,$parameters,$requestedParameters,$requiredParameters)
{

    $CI = & get_instance();

    if (is_numeric($intentid)){

        $CI->db->where('intentid',$intentid);
        $intentResponses = $CI->db->get('tblintentsresponses')->result_array();

        $count = 0;
        $rpc = 0;

        foreach ($parameters as $param){

            if (!empty($param)){

                $rpc++;
            }
        }


        foreach ($requestedParameters as $parameter){

            if (isset($requiredParameters[$parameter['parameter_name']]) && !empty($requiredParameters[$parameter['parameter_name']])){

                $count++;
            }
        }

        if ($rpc > 0) {
            if ($rpc == $count) {

                foreach ($intentResponses as $intentResponse){

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

                            if ($countFindings == $countParamaeters){

                               return array("response"=>strtr(str_replace('$','@',$string),$stringParameters));
                            }
                        }
                    };

                }

            }
        }



        if ($intentResponses) {
            return $intentResponses[array_rand($intentResponses)];
        }

        return false;
    }

    return false;
}

function getIntentActionPrompt($action,$intentid,$parameters=array())
{

    $CI = & get_instance();

    if (is_numeric($intentid) && is_string($action)) {
        $CI->db->select('tblintentactionprompts.intentid,tblintentactionprompts.prompt,tblintentsaction.action,tblintentsaction.value');
        $CI->db->from('tblintentactionprompts');
        $CI->db->join('tblintentsaction', 'tblintentactionprompts.actionid = tblintentsaction.id');
        $CI->db->where('tblintentactionprompts.intentid', $intentid);
        $CI->db->where('tblintentsaction.action', $action);

        $prompts = $CI->db->get()->result_array();

        if ($prompts){

            foreach ($prompts as $prompt) {

                if (array_key_exists(trim($prompt['value'],'$'),$parameters) && empty($parameters[trim($prompt['value'],'$')]))
                {
                    return $prompt['prompt'];
                }

            }

        }

        return false;

    }

    return false;
}

function getRequestedParameterValues($parameter_name,$requestedParameters,$chatbot){

    foreach ($requestedParameters as $parameters){

        if ($parameter_name == $parameters['parameter_name']){

            return $parameters['resolved_value'];

        } else {

            return $chatbot[$parameter_name];
        }

    }
}

function getParameterEntity($stringfy,$value){

    $CI = & get_instance();

    if ($value) {
        $CI->db->like('synonym', strtolower($value), 'both');
        $entities = $CI->db->get('tblentitiesreferences')->result_array();

        foreach ($entities as $entity){

            $scored = round($stringfy->compare($entity['reference'],$value) , 1, PHP_ROUND_HALF_UP);
            $entitiesArray[$scored] = array(
                "score"=>$scored,
                "reference"=>$entity['reference']
            );
        }
        $score = array_column($entitiesArray, 'score');
        return $entitiesArray[max($score)]['reference'];
    }

    return false;
}

function invokeChatBot($session)
{
    $CI = & get_instance();

    $CI->db->where('sessionid',$session);
    $CI->db->where('is_complete',0);
    $CI->db->where('is_engaged',1);
    $CI->db->order_by('id','DESC');
    $chatBot = $CI->db->get('tblchatlog')->result_array();

    if ($chatBot){
        return $chatBot;
    }

    return false;
}

function generatePattern($chatBot)
{

}
