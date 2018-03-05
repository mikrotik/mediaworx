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

        if (!$data[0]['debug']) {
            $response = (object)array(
                "MediaworxModelBasedata" => array(
                    "id" => UUID::v5(APP_ENC_KEY, UUID::random_key(16)),
                    "timestamp" => $this->_objDateTime->format(DateTime::ISO8601),
                    "lang" => "english",
                    "result" => (object)array(
                        "source" => $data[0]['source'],
                        "resolvedQuery" => $data['usersay'],
                        "action" => $data[0]['action'],
                        "actionIncomplete" => $data[0]['actionIncomplete'],
                        "parameters" => $data[0]['parameters'],
                        "contexts" => (object)array(
                            "name" => "",
                            "parameters" => "",
                            "lifespan" => 0
                        ),
                        "metadata" => array(
                            "intentId" => $data[0]["intent_id"],
                            "webhookUsed" => false,
                            "webhookForSlotFillingUsed" => false,
                            "intentName" => $data[0]["intent_name"]
                        ),
                        "fulfillment" => array(
                            "speech" => $data[0]['speech'],
                            "messages" => array(
                                "type" => "simple_response",
                                "platform" => "google",
                                "textToSpeech" => $data[0]['fulfillment']['suggestions']
                            )
                        ),
                        'score' => $data[0]['score'],
                        "debug" => $data[0]['debug']
                    ),
                    "status" => (object)array(
                        "has_error" => $hasError,
                        "code" => $code,
                        "message" => $this->get_rest_status_message()
                    ),
                    "session" => $data['session'],
                    "ECHELON_SESSION" => $data[0]["echelon_session"]
                )
            );
        } else {
            $response = (object)array(
                "MediaworxModelBasedata" => array(
                    "DBG-DATA" => $data[0]["data"]
                )
            );
        }

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