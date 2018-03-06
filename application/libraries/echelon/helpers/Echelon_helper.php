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

        $intentIds = array();
        $intentResponses = array();

        if (is_numeric($id)){

            $CI->db->where("id",$id);
            $intent = $CI->db->get("tblintents")->row();

            /** Check for default output context */
            $output_contexts = json_decode($intent->output_contexts);



            /**
             * Get all output intent ids
             */
            foreach ($output_contexts as $output_context){

                $CI->db->where("context_name",$output_context);
                $context_intent = $CI->db->get("tblcontexts")->row();

                $intentIds[] = $context_intent->intentid;

            }

            foreach ($intentIds as $intent_id)
            {
                $CI->db->where("intentid",$intent_id);
                $intent_responses = $CI->db->get("tblintentresponses")->result_array();

                foreach ($intent_responses as $intent_response)
                {
                    $intentResponses[] = $intent_response["response"];
                }
            }
            if ($intentResponses) {

                $response = ucfirst($intentResponses[array_rand($intentResponses)]);

            } else {

                $CI->db->where("intentid",$id);
                $intent_responses = $CI->db->get("tblintentresponses")->result_array();

                foreach ($intent_responses as $intent_response)
                {
                    $intentResponses[] = $intent_response["response"];
                }

                $response = ucfirst($intentResponses[array_rand($intentResponses)]);
            }

            return $response;
        }

        return false;
    }

    public static function getIntentParameters($id)
    {
        $CI = & get_instance();
        $intentParameters = array();

        if (is_numeric($id)){

            $CI->db->where("id",$id);
            $intent = $CI->db->get("tblintents")->row();

            $parameters = json_decode($intent->action_parameters);

            if ($parameters) {

                foreach ($parameters as $key=>$parameter)
                {
                    $intentParameters[$parameter->parameter_name] = "";
                }

                return $intentParameters;
            }

        }

        return false;
    }

    public static function getIntentContexts($id,$type)
    {
        $CI = & get_instance();
        $intentParameters = array();

        if (is_numeric($id)){

            $CI->db->where("id",$id);
            $intent = $CI->db->get("tblintents")->row();

            $contexts = json_decode($intent->{$type}."_contexts");

            if ($contexts) {

                return $contexts;
            }

        }

        return false;
    }
}