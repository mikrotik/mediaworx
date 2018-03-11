<?php

class Mediaworx_Dialogflow_Speech extends Mediaworx_Operation
{

    protected $_action     = 'dialog';
    protected $_operation  = 'speech';

    protected $_parameters = array(
        'access_token'            => array(
            'required' => true,
        ),
        'type'            => array(
            'required' => true,
        ),
        'usersay'            => array(
            'required' => true,
        ),
        'format'            => array(
            'required'  => true
        ),
        'session'            => array(
            'required'  => true
        )
    );

    public function setUsersay($usersay){

        $this->addData('usersay',$usersay);
    }

    public function setAccessToken($accesstoken){

        $this->addData('access_token',$accesstoken);
    }

    public function setType($type){

        $this->addData('type',$type);
    }

}