<?php

class Mediaworx_Operation
{

    protected $_format       = 'json';
    protected $_session;

    protected $_action     = NULL;
    protected $_operation  = NULL;

    protected $_parameters = array();
    protected $_data       = array();

    protected $_result_object   = NULL;
    protected $_result_code     = NULL;
    protected $_result_message  = NULL;

    public function __construct ()
    {
        $this->_generateDefaultData();
    }

    public function setFormat($format){

        $this->_format = $format;
    }

    public function setSession(){

        $session = session_id();
        if ($session == '') { session_start(); }
        $session = session_id();

        $this->addData('session',$session);
        $this->_session = $session;
    }

    public function getSession(){

        return $this->_session;
    }

    public function setResponseFormat(){

        $this->addData('format',$this->getFormat());
    }

    public function getFormat(){

        return $this->_format;
    }

    public function getOperationName ()
    {
        return $this->_operation;
    }

    public function getAction ()
    {
        return $this->_action;
    }

    public function addData ($name, $value)
    {
        if (isset($this->_data[$name]))
        {
            return $this->_data[$name] = $value;
        }
        else {
            throw new Mediaworx_Exception("Variable '{$name}' is not available'");
        }
    }

    public function getDataAsArray ()
    {
        return $this->_data;
    }

    public function getResultState ()
    {
        return ($this->_result_code === '0');
    }

    public function getResultMessage ()
    {
        return $this->_result_message;
    }

    public function getResultObject ()
    {
        return $this->_result_object;
    }

    protected function _generateDefaultData ()
    {
        foreach ($this->_parameters as $name => $settings)
        {
            $this->_data[$name] = (isset($settings['default_value']) ? $settings['default_value'] :'');
        }
    }

    public function checkRequiredData ()

    {
        foreach ($this->_parameters as $name => $settings)
        {
            // Check if required field is set (not empty)
            if (isset($settings['required']) && $settings['required'] === true
                && $this->_data[$name] == '')
            {
                return false;
            }
        }

        return true;
    }

    public function processXmlResult (SimpleXMLElement $simplexml)
    {

        if (isset($simplexml->MediaworxModelBasedata))
        {
            $this->_result_object = $simplexml->MediaworxModelBasedata;
        }
    }

    public function processJsonResult($json){

        $simplejson = json_decode($json);

        if (isset($simplejson->MediaworxModelBasedata)){
            $this->_result_object = $simplejson->MediaworxModelBasedata;
        }

    }
}