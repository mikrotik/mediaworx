<?php

function getUserSays()
{
    $CI = & get_instance();

    /**
     * TODO
     * Make query to match with CI
     */

    $clientUserSays = array();
    $mergedUserSays = array();

    $userSaysList = array();

    $sqlClientUserSays = "SELECT i.id,i.userid,i.intent_name,i.action,ius.usersay,ius.parameters,iur.response FROM tblintents i
            LEFT JOIN tblintentusersays ius ON(i.id = ius.intentid)
            LEFT JOIN tblintentresponses iur ON(i.id = iur.intentid)
            WHERE i.agentid > 0 AND i.parentid = 0 AND i.status = 1 AND i.userid = '".get_client_user_id()."'";

    $clientUserSays = $CI->db->query($sqlClientUserSays)->result_array();

    $sqlMergedUserSays = "SELECT i.id,i.userid,i.intent_name,i.action,ius.usersay,ius.parameters,iur.response FROM tblintents i
                LEFT JOIN tblintentusersays ius ON(i.id = ius.intentid)
                LEFT JOIN tblintentresponses iur ON(i.id = iur.intentid)
                WHERE i.parentid = 0 AND i.status = 1 AND i.userid = 0 AND i.is_default = 0 AND i.merge = 1";

    $clientMergeSays = $CI->db->query($sqlMergedUserSays)->result_array();

    $userSaysList = array_merge($clientUserSays,$clientMergeSays);

    return $userSaysList;
}

function getIntentPredictions($agent,$usersays = array(),$request="",$stringfy)
{

    $predictions = array();

    if (is_array($usersays))
    {
        foreach ($usersays as $usersay) {
            $distance = LevenshteinDistance($usersay['usersay'],$request);

            $score = round($stringfy->compare($usersay['usersay'],$request) , 1, PHP_ROUND_HALF_UP);

            if ($score >= $agent->threshold) {
                $predictions[$distance] = array(
                    "intentid" => $usersay['id'],
                    "action" => $usersay['action'],
                    "usersay" => $usersay['usersay'],
                    "distance" => $distance,
                    "score" => $score,
                );
            }
        }

        return $predictions;
    }

    return false;
}

function intentResponse($id){

    $CI = & get_instance();

    if (is_numeric($id)) {

        $CI->db->where('intentid', $id);
        $intentResponses = $CI->db->get('tblintentresponses')->result_array();
    }

    if ($intentResponses) {

        return $intentResponses[array_rand($intentResponses)];
    }
}

function LevenshteinDistance($s1, $s2)
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