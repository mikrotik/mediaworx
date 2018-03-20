<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Entities extends Admin_controller
{
    function __construct()
    {
        parent::__construct();
    }


    /** List all entities */
    public function index()
    {
        if (!has_permission('echelon', '', 'view') && !has_permission('echelon', '', 'view_own')) {
            access_denied('echelon');
        }

        if ($this->input->is_ajax_request()) {
            $this->echelon_base->get_table_data('entities');
        }

        $data['title'] = _l('entities');
        $this->load->view('admin/entities/manage', $data);
    }
}
