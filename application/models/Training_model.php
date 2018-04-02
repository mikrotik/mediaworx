<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Training_model extends CRM_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function get()
    {
        $this->db->select('id,object,object_id,pattern');
        $this->db->where('is_child',0);
        $patterns = $this->db->get('tblpatterns')->result_array();

        if ($patterns)
        {
            return $patterns;
        }

        return false;
    }
}