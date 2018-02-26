<?php

function checkParameters($usersay){

    $CI = & get_instance();

    $CI->db->select('tblentities.entity_name,tblentityreferences.reference,tblentityreferences.synonyms');
    $CI->db->from('tblentities');
    $CI->db->join('tblentityreferences', 'tblentities.id = tblentityreferences.entityid');
    $references = $CI->db->get()->result_array();

    $parameters=array();

    if ($references){
        foreach ($references as $reference){

            $words = explode(',',$reference['synonyms']);

            foreach ($words as $word){

                if (strstr(strtolower($usersay), strtolower($word))){

                    $parameters[] = array(
                        'parameter_name' => $reference['entity_name'],
                        'entity' => '@'.$reference['entity_name'],
                        'resolved_value' => $word,
                    );
                }
            }
        }
    }

    return $parameters;
}