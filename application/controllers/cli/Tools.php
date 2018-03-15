<?php

declare(strict_types=1);

defined('BASEPATH') OR exit('No direct script access allowed');

class Tools extends CRM_Controller {

    function __construct()
    {
        parent::__construct();

        require_once VENDOR_FOLDER . '/ml/autoload.php';
        require_once VENDOR_FOLDER . '/echelon/echelon_autoload.php';

    }
    public function parse_yaml($filename)
    {
        $this->load->library('yaml');

        if (!$filename || empty($filename))
        {
            echo "Please give a filename!.".PHP_EOL;
        } else {

            $json_content = file_get_contents(TEMP_FOLDER.'echelon/yaml/'.$filename.'.json');

            $parsed = json_decode($json_content);

            foreach ($parsed->conversations as $parse)
            {
                foreach ($parse as $key=>$responses) {
                    if ($key) {
                        $patterns[$parsed->categories[0]][$parse[0]][] = $responses;
                    }
                }
            }

            foreach ($patterns as $key=>$pattern)
            {
                $this->db->insert("tblechelon",array("category"=>$key));
                $categoryid = $this->db->insert_id();

                foreach ($pattern as $key=>$e_pattern)
                {
                       $this->db->insert("tblecheloncategorypatterns",
                            array(
                                "categoryid" => $categoryid,
                                "pattern" => $key
                            )
                        );

                    $patternid = $this->db->insert_id();

                    foreach ($e_pattern as $response)
                    {

                        $this->db->insert("tblecheloncategoryresponses",
                            array(
                                "patternid"=>$patternid,
                                "categoryid" => $categoryid,
                                "response" => $response
                            )
                        );
                    }

                }
            }
        }
    }

    public function train(){

        /*
         * TODO - Training
         */
        Echelon_Helper::_train();
    }

    public function debug(){

        /*
         * TODO - Training
         */
        echo '<pre>';
//        Echelon_Helper::_testBot();
        print_r(Echelon_Helper::_predictIntent("yes"));
    }
}