<?php

class Mediaworx_Client
{
    const ENV_TEST = 'test';
    const ENV_LIVE = 'live';

    protected $_environment = NULL;

    protected $_mediaworx_host = array(
        'test' => 'dev.mediaworx.io',
        'live' => '18.195.189.153'
    );

    protected $_ca_certificates_file = null;

    public function __construct($environment = self::ENV_LIVE)
    {
        $this->_environment = $environment;

        if (! function_exists('curl_init')){

            throw new Mediaworx_Exception('cURL library is required to run this library');
        }
    }

    public function setCaCertificatesFile ($file)
    {
        if (file_exists($file))
        {
            $this->_ca_certificates_file = $file;
        }

        return false;
    }

    public function call (Mediaworx_Operation $operation)
    {

        if ($operation->checkRequiredData() !== TRUE)
        {
            throw new Mediaworx_Exception('Not all required fields are filled');
        }

        if (is_null($operation->getOperationName()) || is_null($operation->getAction()))
        {
            throw new Mediaworx_Exception('Operation has no Operation Name or Action specified');
        }

        $response = $this->_performRequest($operation);

        if ($operation->getFormat() == 'xml') {
            // XML to Object
            try {
                $simplexml = new SimpleXMLElement($response);
            } catch (Exception $e) {

                throw new Mediaworx_Exception('Result from Mediaworx is not XML (XML parsing failed: ' . $e->getMessage() . ')');
            }

            try {
                $operation->processXmlResult($simplexml);
            } catch (Mediaworx_Exception $e) {
                throw new Mediaworx_Exception('Unable to process XML data in ' . get_class($operation) . ' (' . $e->getMessage() . ')');
            }
        }

        if ($operation->getFormat() == 'json'){

            // JSON to Object

            $simplejson = Mediaworx_Translator::isJson($response);

            if (!$simplejson){
                throw new Mediaworx_Exception('Result from Mediaworx is not JSON ' . get_class($operation));
            }

            try {
                $operation->processJsonResult($response);

            } catch (Mediaworx_Exception $e) {
                throw new Mediaworx_Exception('Unable to process JSON data in ' . get_class($operation) . ' (' . $e->getMessage() . ')');
            }
        }

        return true;
    }

    protected function _performRequest (Mediaworx_Operation $operation)
    {
        $url  = 'http://' .
            $this->_mediaworx_host[$this->_environment] .
            '/mediaworx/v1/' . urlencode($operation->getAction()) . '/index/' .
            urlencode($operation->getOperationName());


        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_POST, TRUE);

        if ($this->_ca_certificates_file)
        {
            curl_setopt($ch, CURLOPT_CAINFO, $this->_ca_certificates_file);
        }

        if ( ! is_null($operation->getDataAsArray()) && is_array($operation->getDataAsArray()))
        {
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($operation->getDataAsArray()));
        }

        $response = curl_exec($ch);

        return $response;
    }
}