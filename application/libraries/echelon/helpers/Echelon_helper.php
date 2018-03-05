<?php
class Echelon_Helper extends Echelon_Exception
{

     public static function getUserParameters($request,$agent)
    {
        $CI = & get_instance();

        $requestedParameters = array();

        $CI->db->select('tblentities.entity_name,tblentityreferences.reference,tblentityreferences.synonyms');
        $CI->db->from('tblentityreferences');
        $CI->db->join('tblentities', 'tblentities.id = tblentityreferences.entityid');
        $CI->db->where('tblentities.agentid',$agent->agentid);
        $synonyms = $CI->db->get()->result_array();

        if (!$synonyms){

            $CI->db->select('tblentities.entity_name,tblentityreferences.reference,tblentityreferences.synonyms');
            $CI->db->from('tblentityreferences');
            $CI->db->join('tblentities', 'tblentities.id = tblentityreferences.entityid');
            $CI->db->where('tblentities.agentid',0);
            $synonyms = $CI->db->get()->result_array();
        }

        $parameters=array();
        foreach ($synonyms as $synonym){

            $words = explode(',',$synonym['synonyms']);

            foreach ($words as $word){

                if (strstr(strtolower($request["usersay"]), strtolower($word))){

                    $parameters[] = array(
                        'parameter_name' => $synonym['entity_name'],
                        'entity' => '@'.$synonym['entity_name'],
                        'resolved_value' => $word,
                    );
                }
            }
        }

        if ($parameters){

            foreach ($parameters as $parameter)
            {
                $requestedParameters[$parameter['parameter_name']] = $parameter['resolved_value'];
            }
        }
        return $requestedParameters;
    }

    public static function getIntent($id)
    {
        $CI = & get_instance();

        if (is_numeric($id)){

            $CI->db->where("id",$id);
            $intent = $CI->db->get("tblintents")->row();

            return $intent;

        }

        return false;
    }

    public static function getIntentPatterns($id){

        $CI = & get_instance();

        if (is_numeric($id)){

            $CI->db->where("id",$id);
            $patterns = $CI->db->get("tblintentusersays")->result_array();

            return $patterns;

        }

        return false;
    }

    public static function getIntentResponse($id)
    {
        $CI = & get_instance();

        if (is_numeric($id)){

            $CI->db->where("intentid",$id);
            $responses = $CI->db->get("tblintentresponses")->result_array();

            if ($responses) {

                return ucfirst($responses[array_rand($responses)]["response"]);
            }

        }

        return false;
    }
}