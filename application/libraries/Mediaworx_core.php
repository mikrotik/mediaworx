<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once VENDOR_FOLDER.'/matcher/autoload.php';
require_once VENDOR_FOLDER.'/stringfy/autoload.php';

class Mediaworx_Core
{

    /** @var  Instance of Codeigniter */
    protected $CI;


    function __construct()
    {
        $CI = &get_instance();

        $CI->load->helper('perfex_api');

    }

}