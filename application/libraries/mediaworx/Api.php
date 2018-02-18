<?php

/**
 * Created by PhpStorm.
 * User: root
 * Date: 4/24/17
 * Time: 12:57 PM
 */
class Api extends Rest
{
    private $_arraytoxml;

    public function __construct(){

        parent::__construct();
        $this->_arraytoxml = new ArrayToXML();

    }

    public function process($data,$code,$hasError = false,$format = 'json'){

        $CI = &get_instance();

        $this->setCode($code);
        $this->_content_type = $format;

        $this->response($this->$format($data), $code);

    }

    private function json($data) {

        if (!is_scalar($data)) {
            // Varible is object or array
            return json_encode($data);
        }
    }

    private function xml($data) {

        if (is_object($data)) {

            return $this->_arraytoxml->toXml((array)$data);
        }
    }
}