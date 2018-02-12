<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use DialogFlow\Client;
use DialogFlow\Model\Query;
use DialogFlow\Method\QueryApi;

class Dialog extends Mediaworx_controller
{
    function __construct()
    {
        parent::__construct();
    }

    public function index(){

        require_once VENDOR_FOLDER.'/dialogflow/autoload.php';

        try {
            $client = new Client('c627b703b44e4d60be5f54637b58fe6f');
            $queryApi = new QueryApi($client);

            $meaning = $queryApi->extractMeaning('Hi', [
                'sessionId' => md5('1234567890'),
                'lang' => 'en',
            ]);
            $response = new Query($meaning);

            $this->_api->process($response,200,false,'json');

        } catch (\Exception $error) {

            echo $error->getMessage();
        }
    }
}