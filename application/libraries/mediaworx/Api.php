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
    protected $_objDateTime;

    public function __construct(){

        parent::__construct();
        $this->_objDateTime = new DateTime('NOW');

    }

    public function process($data,$code,$hasError = false,$format = 'json'){

        $CI = &get_instance();

        $this->setCode($code);
        $this->_content_type = $format;

        if (isset($data['session'])){
            $data['session'] = $data['session'];
        } else {
            $data['session'] = session_id();
        }

        $response = (object)array(
            "MediaworxModelBasedata" => array(
                "id" => UUID::v5(APP_ENC_KEY, UUID::random_key(16)),
                "timestamp" => $this->_objDateTime->format(DateTime::ISO8601),
                "lang" => "english",
                "result" => (object)array(
                    "source"=> $data[0]['source'],
                    "resolvedQuery"=> $data['usersay'],
                    "action"=>$data[0]['action'],
                    "actionIncomplete"=>$data[0]['actionIncomplete'],
                    "parameters"=>$data[0]['parameters'],
                    "contexts"=>(object) array(
                        "name"=>"",
                        "parameters"=>"",
                        "lifespan"=>0
                    ),
                    "metadata"=>array(
                        "intentId"=> "",
                        "webhookUsed"=> false,
                        "webhookForSlotFillingUsed"=> false,
                        "intentName"=> ""
                    ),
                    "fulfillment"=>array(
                        "speech"=>$data[0]['fulfillment']['speech'],
                        "messages"=>array(
                            "type"=>"simple_response",
                            "platform"=>"google",
                            "textToSpeech"=>$data[0]['fulfillment']['suggestions']
                        )
                    ),
                    'score'=>$data[0]['score']
                ),
                "status" => (object)array(
                    "has_error"=>$hasError,
                    "code" => $code,
                    "message"=>$this->get_rest_status_message()
                ),
                "requestedParameters"=>$data[0]['requestedParameters'],
                "requiredParameters"=>$data[0]['requiredParameters'],
                "sessionId" => $data['session'],
                "DATA-USERSAYS"=>$data[0]['usersays'],
                "DATA-PREDICYIONS"=>$data[0]['predictions'],
                "DATA-REQUIRED"=>$data[0]['required_parameters'],
                "DATA-REQUESTED"=>$data[0]['requested_parameters'],
                "DATA-PREDICTIONS"=>$data[0]['predictions']
            )
        );

        $this->response($this->$format($response), $code);

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