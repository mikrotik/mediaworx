<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use DialogFlow\Client;
use DialogFlow\Model\Query;
use DialogFlow\Method\QueryApi;


class Dialog extends Mediaworx_controller
{

    protected $_objDateTime;

    function __construct()
    {
        parent::__construct();
        $this->_objDateTime = new DateTime('NOW');
    }

    public function index($operation,$action){

        $this->$action();
    }

    public function dialogflow(){

        require_once VENDOR_FOLDER.'/dialogflow/autoload.php';

        try {
            $client = new Client('c627b703b44e4d60be5f54637b58fe6f');
            $queryApi = new QueryApi($client);

            $meaning = $queryApi->extractMeaning('Hi', [
                'sessionId' => md5('1234567890'),
                'lang' => 'en',
            ]);
            $response = new Query($meaning);

            return $this->_api->process($response,200,false,'xml');

        } catch (\Exception $error) {

            echo $error->getMessage();
        }
    }

    public function speech(){

        $response = (object) array(
            "MediaworxModelBasedata"=>array(
                "id"=>UUID::v5(APP_ENC_KEY,UUID::random_key(16)),
                "timestamp"=>$this->_objDateTime->format(DateTime::ISO8601),
                "lang"=>"em",
                "result"=>(object) array(),
                "status"=>(object) array(),
                "sessionId"=>session_id()
            )
        );

        return $this->_api->process($response,200,false,'xml');
    }
}