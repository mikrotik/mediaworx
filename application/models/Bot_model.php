<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bot_model extends CRM_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function add_conversation($data)
    {

        $conversationData = array(
            "session_id"=>$data->session,
            "state"=>$data->result->state,
            "pattern"=>$data->result->resolvedQuery,
            "response"=>($data->result->fulfillment->speech ? $data->result->fulfillment->speech : ""),
            "parameters"=>json_encode($data->result->parameters),
            "date"=>date("Y-m-d"),
            "fallback"=>$data->fallback
        );

        $this->db->insert("tblconversation",$conversationData);
    }

    public function get_conversation($session_id,$date)
    {

        $this->db->where('session_id',$session_id);
        $this->db->where('date',$date);
        $this->db->where('fallback',0);
        $this->db->order_by("id","desc");

        $conversation = $this->db->get("tblconversation")->row();

        if ($conversation)
        {
            return $conversation;
        }
        return false;
    }

}