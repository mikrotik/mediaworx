<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Bot extends CRM_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('bot_model');
    }

    public function echelon()
    {
        require_once(VENDOR_FOLDER.'mediaworx/mediaworx_autoload.php');

        $session = session_id();
        if ($session == '') { session_start(); }
        $exit = 0;
        while(!$exit) {

            /* clear the screen, using execution operators (backticks) */
            echo PHP_EOL;

            require_once VENDOR_FOLDER.'echelon/log.php';
            $log = new Echelon_Logging();

            /* Request input */
            print 'USER : ';
            /* Use fgets with the STDIN resource, and throw it in a variable */
            $var = trim(fgets(STDIN));

            /* break if it's q, otherwise keep going
               Redundant exit strategies, make $exit == 1,
                        and thus !$exit is no longer true.
               And break; explicitly tells the while() to
                            end without going any further. */
            if ($var == 'q') {$exit++; break;}
            if ($var == 'clear') {print `clear`;}

            try{

                $client = new Mediaworx_Client(Mediaworx_Client::ENV_TEST);

                $speech = new Mediaworx_Dialogflow_Speech();

                $speech->setAccessToken('2ba0a2f4-2ca7-59c8-9bfe-1a1de7e46302');
                $speech->setType(1); // "1"-Client Access Token "2"->Developer Access Token
                $speech->setFormat('json');
                $speech->setSession();
                $speech->setResponseFormat();

                $speech->setUsersay($var);

                $client->call($speech);

                $predicted = array(
                    'speech'=>$speech->getResultObject()->result->fulfillment->speech,
                    'debug'=>$speech->getResultObject()->result->debug,
                    'obj'=>($speech->getResultObject())
                );

                $log->lfile(APPPATH.'/'.'logs/bot_log.php');
                $log->lwrite(json_encode($speech->getResultObject()));

                $this->bot_model->add_conversation($speech->getResultObject());

                echo "BOT :  \033[33m" . $predicted["speech"], "\033[0m";


            }catch(Exception $e){

                echo "BOT :  \033[31m".$e->getMessage(),"\033[0m";
            }

        }
        print 'Bye'."\n";
        print `sleep 1s;clear`;
        exit;
    }
}