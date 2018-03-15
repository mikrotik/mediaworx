<?php

//function getUserSays($agent)
//{
//    $CI = & get_instance();
//
//    /**
//     * TODO
//     * Make query to match with CI
//     */
//
//    $clientUserSays = array();
//    $mergedUserSays = array();
//
//    $userSaysList = array();
//
//    $sqlClientUserSays = "SELECT i.id,i.is_end,i.userid,i.intent_name,i.action,i.action_parameters,ius.usersay,ius.parameters,iur.response FROM tblintents i
//            LEFT JOIN tblintentusersays ius ON(i.id = ius.intentid)
//            LEFT JOIN tblintentresponses iur ON(i.id = iur.intentid)
//            WHERE i.agentid = '".$agent->agentid."' AND i.parentid = 0 AND i.status = 1 AND i.userid = '".$agent->userid."'";
//
//    $clientUserSays = $CI->db->query($sqlClientUserSays)->result_array();
//
//    $sqlMergedUserSays = "SELECT i.id,i.is_end,i.userid,i.intent_name,i.action,i.action_parameters,ius.usersay,ius.parameters,iur.response FROM tblintents i
//                LEFT JOIN tblintentusersays ius ON(i.id = ius.intentid)
//                LEFT JOIN tblintentresponses iur ON(i.id = iur.intentid)
//                WHERE i.parentid = 0 AND i.status = 1 AND i.userid = 0 AND i.is_default = 0 AND i.merge = 1";
//
//    $clientMergeSays = $CI->db->query($sqlMergedUserSays)->result_array();
//
//    $userSaysList = array_merge($clientUserSays,$clientMergeSays);
//
//    /**
//     * Check if Small Talks are enabled
//     * if so override the response
//     */
//
//    if ($agent->small_talk){
//
//        $sqlClientSmallTalk = "SELECT st.id,st.small_talk_name,st.action,str.id AS smalltalk,str.question,str.answer FROM tblsmalltalks st
//            LEFT JOIN tblsmalltalkreferences str ON (st.id = str.smalltalkid)
//            WHERE st.agentid = '".$agent->agentid."' AND st.userid = '".$agent->userid."'";
//
//        $agentSmallTalks = $CI->db->query($sqlClientSmallTalk)->result_array();
//
//        foreach ($agentSmallTalks as $agentSmallTalk) {
//
//            if (!empty($agentSmallTalk['answer'])) {
//                $smallTalk = array(
//                    "id" => $agentSmallTalk['smalltalk'],
//                    "userid" => $agent->userid,
//                    "intent_name" => $agentSmallTalk['small_talk_name'],
//                    "action" => $agentSmallTalk['action'],
//                    "usersay" => $agentSmallTalk['question'],
//                    "parameters" => null,
//                    "response" => $agentSmallTalk['answer'],
//                    'is_end'=>0
//                );
//
//                array_push($userSaysList, $smallTalk);
//            }
//        }
//    }
//
//    return $userSaysList;
//}
//
//function getIntentPredictions($agent,$usersays = array(),$request="",$stringfy)
//{
//
//    $predictions = array();
//
//    if (is_array($usersays))
//    {
//        foreach ($usersays as $usersay) {
//            $distance = LevenshteinDistance($usersay['usersay'],$request);
//
//            $score = round($stringfy->compare($usersay['usersay'],$request) , 1, PHP_ROUND_HALF_UP);
//
//            if ($score >= $agent->threshold) {
//                $predictions[$distance] = array(
//                    "intentid" => $usersay['id'],
//                    "action" => $usersay['action'],
//                    "usersay" => $usersay['usersay'],
//                    "parameters"=>$usersay['action_parameters'],
//                    "distance" => $distance,
//                    "score" => $score,
//                    'is_end'=>$usersay['is_end']
//                );
//            }
//        }
//
//        return $predictions;
//    }
//
//    return false;
//}
//
//function intentResponse($id,$agent){
//
//    $CI = & get_instance();
//
//    if (is_numeric($id)) {
//
//        $CI->db->where('intentid', $id);
//        $intentResponses = $CI->db->get('tblintentresponses')->result_array();
//
//        if (!$intentResponses && $agent->small_talk){
//
//            $CI->db->where('id', $id);
//            $intentResponses = $CI->db->get('tblsmalltalkreferences')->row();
//
//            return array("response"=>$intentResponses->answer);
//        }
//    }
//
//    if ($intentResponses) {
//
//        return $intentResponses[array_rand($intentResponses)];
//    }
//}
//
//function getDefaultFallbackResponse(){
//
//    $CI = & get_instance();
//
//
//    $CI->db->where('intent_name','Default Fallback Intent');
//    $defaultFallbackIntent = $CI->db->get('tblintents')->row();
//
//    $CI->db->where('intentid', $defaultFallbackIntent->id);
//    $CI->db->order_by('id', 'RANDOM');
//    $CI->db->limit(1);
//    $defaultFallback = $CI->db->get('tblintentresponses')->row();
//
//    return array(
//        'intent'=>$defaultFallbackIntent,
//        'response'=>$defaultFallback
//    );
//
//}
//
//function getRequiredParameters($stringfy,$parameters,$requestedParameters = array())
//{
//    $CI = & get_instance();
//
//    $parameters = json_decode($parameters);
//
//        foreach ($parameters as $parameter)
//        {
//            if ($parameter->is_required) {
//                $requiredParameters[$parameter->parameter_name] = $requestedParameters[$parameter->parameter_name];
//                $requiredParameters[$parameter->parameter_name . '.original'] = getParameterOriginal($stringfy,$requestedParameters[$parameter->parameter_name]);
//            }
//        }
//
//    return $requiredParameters;
//}
//
//function getParameterOriginal($stringfy,$value){
//
//    $CI = & get_instance();
//
//    if ($value) {
//        $CI->db->like('synonyms', strtolower($value), 'both');
//        $entities = $CI->db->get('tblentityreferences')->result_array();
//
//        foreach ($entities as $entity){
//
//            $scored = round($stringfy->compare($entity['reference'],$value) , 1, PHP_ROUND_HALF_UP);
//            $entitiesArray[$scored] = array(
//                "score"=>$scored,
//                "reference"=>$entity['reference']
//            );
//        }
//        $score = array_column($entitiesArray, 'score');
//        return $entitiesArray[max($score)]['reference'];
//    }
//
//    return false;
//}
//
//function getRequestedParameters($usersay,$agent)
//{
//    $CI = & get_instance();
//
//    $requestedParameters = array();
//
//    $CI->db->select('tblentities.entity_name,tblentityreferences.reference,tblentityreferences.synonyms');
//    $CI->db->from('tblentityreferences');
//    $CI->db->join('tblentities', 'tblentities.id = tblentityreferences.entityid');
//    $CI->db->where('tblentities.agentid',$agent->agentid);
//    $synonyms = $CI->db->get()->result_array();
//
//    if (!$synonyms){
//
//        $CI->db->select('tblentities.entity_name,tblentityreferences.reference,tblentityreferences.synonyms');
//        $CI->db->from('tblentityreferences');
//        $CI->db->join('tblentities', 'tblentities.id = tblentityreferences.entityid');
//        $CI->db->where('tblentities.agentid',0);
//        $synonyms = $CI->db->get()->result_array();
//    }
//
//    $parameters=array();
//    foreach ($synonyms as $synonym){
//
//        $words = explode(',',$synonym['synonyms']);
//
//        foreach ($words as $word){
//
//            if (strstr(strtolower($usersay), strtolower($word))){
//
//                $parameters[] = array(
//                    'parameter_name' => $synonym['entity_name'],
//                    'entity' => '@'.$synonym['entity_name'],
//                    'resolved_value' => $word,
//                );
//            }
//        }
//    }
//
//    if ($parameters){
//
//        foreach ($parameters as $parameter)
//        {
//            $requestedParameters[$parameter['parameter_name']] = $parameter['resolved_value'];
//        }
//    }
//    return $requestedParameters;
//}
//
//function getIntentPrompt($agent,$parameter){
//
//    $CI = & get_instance();
//
//    $sql = "SELECT i.id,i.action,e.entity_name,iap.prompt FROM tblintents i
//          LEFT JOIN tblintentactionprompts iap ON (i.id = iap.intentid)
//          LEFT JOIN tblentities e ON(e.id = iap.entityid) WHERE i.agentid = '".$agent->agentid."' AND i.userid = '".$agent->userid."' AND e.entity_name = '".$parameter."'";
//
//    $prompt = $CI->db->query($sql)->row();
//
//    return $prompt->prompt;
//}
//
//function getParameters($session)
//{
//    $CI = & get_instance();
//
//    $CI->db->where('session_id',$session);
//    $CI->db->order_by('timestamp','desc');
//    $CI->db->limit(1);
//    $conversation_log = $CI->db->get("tblconversation_log")->row();
//
//    return unserialize($conversation_log->parameters);
//}
//
//function getUserSay($session)
//{
//    $CI = & get_instance();
//
//    $CI->db->where('session_id',$session);
//    $CI->db->order_by('timestamp','desc');
//    $CI->db->limit(1);
//    $conversation_log = $CI->db->get("tblconversation_log")->row();
//
//    return $conversation_log->pattern;
//}
//
//function addConversationLog($data = array())
//{
//    $CI = & get_instance();
//
//    $conversationData = array(
//        "session_id"=>$data['session'],
//        "pattern"=>$data['pattern'],
//        "response"=>$data['fulfillment']['speech'],
//        "parameters"=>serialize($data['parameters']),
//        "agentid"=>$data['agentid'],
//        "timestamp"=>date('Y-m-d H:i:s')
//    );
//
//    $CI->db->insert('tblconversation_log',$conversationData);
//}

//function LevenshteinDistance($s1, $s2)
//{
//    $sLeft = (strlen($s1) > strlen($s2)) ? $s1 : $s2;
//    $sRight = (strlen($s1) > strlen($s2)) ? $s2 : $s1;
//    $nLeftLength = strlen($sLeft);
//    $nRightLength = strlen($sRight);
//    if ($nLeftLength == 0)
//        return $nRightLength;
//    else if ($nRightLength == 0)
//        return $nLeftLength;
//    else if ($sLeft === $sRight)
//        return 0;
//    else if (($nLeftLength < $nRightLength) && (strpos($sRight, $sLeft) !== FALSE))
//        return $nRightLength - $nLeftLength;
//    else if (($nRightLength < $nLeftLength) && (strpos($sLeft, $sRight) !== FALSE))
//        return $nLeftLength - $nRightLength;
//    else {
//        $nsDistance = range(1, $nRightLength + 1);
//        for ($nLeftPos = 1; $nLeftPos <= $nLeftLength; ++$nLeftPos)
//        {
//            $cLeft = $sLeft[$nLeftPos - 1];
//            $nDiagonal = $nLeftPos - 1;
//            $nsDistance[0] = $nLeftPos;
//            for ($nRightPos = 1; $nRightPos <= $nRightLength; ++$nRightPos)
//            {
//                $cRight = $sRight[$nRightPos - 1];
//                $nCost = ($cRight == $cLeft) ? 0 : 1;
//                $nNewDiagonal = $nsDistance[$nRightPos];
//                $nsDistance[$nRightPos] =
//                    min($nsDistance[$nRightPos] + 1,
//                        $nsDistance[$nRightPos - 1] + 1,
//                        $nDiagonal + $nCost);
//                $nDiagonal = $nNewDiagonal;
//            }
//        }
//        return $nsDistance[$nRightLength];
//    }
//}
//
//function getKeywordSuggestionsFromGoogle($keyword) {
//    $keywords = array();
//    $data = file_get_contents('http://suggestqueries.google.com/complete/search?output=firefox&client=firefox&hl=en-US&q='.urlencode($keyword));
//    if (($data = json_decode($data, true)) !== null) {
//        $keywords = $data[1];
//    }
//
//    return $keywords;
//}