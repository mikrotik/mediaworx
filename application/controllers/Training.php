<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WhitespaceTokenizer;
use Phpml\Classification\SVC;
use Phpml\SupportVectorMachine\Kernel;

class Training extends Clients_controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model("training_model");

        if (!$this->agent_scope){
            redirect(site_url('agents/agent'));
        }
    }

    public function index()
    {
        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }

        $data['title'] = _l('training');
        $this->data    = $data;
        $this->view    = 'training/training';
        $this->layout();
    }

    public function train()
    {

        $vectorizer = new TokenCountVectorizer(new \Phpml\Tokenization\WordTokenizer());

        $patterns = $this->training_model->get();
        $samples = [];
        $labels = [];

        foreach ($patterns as $pattern)
        {
            $samples[] = strtoupper($pattern["pattern"]);
            $labels[] = $pattern["id"].'-'.$pattern["object"].'-'.$pattern["object_id"].'-'.$pattern["pattern"];
        }

        $vectorizer = new TokenCountVectorizer(new WhitespaceTokenizer());

        // Build the dictionary.
        $vectorizer->fit($samples);

        // Transform the provided text samples into a vectorized list.
        $vectorizer->transform($samples);

        $usersay = [strtoupper('i want a drink')];
        // Build the dictionary.
        $vectorizer->fit($usersay);

        // Transform the provided text samples into a vectorized list.
        $vectorizer->transform($usersay);

        $classifier = new SVC(
            Kernel::LINEAR, // $kernel
            1.0,            // $cost
            3,              // $degree
            null,           // $gamma
            0.0,            // $coef0
            0.001,          // $tolerance
            100,            // $cacheSize
            true,           // $shrinking
            true            // $probabilityEstimates, set to true
        );

        $classifier->train($samples, $labels);

        $res = array(
            'obj'=>json_encode($samples),
            'vocab'=>json_encode($vectorizer->getVocabulary()),
            'prediction'=>json_encode($classifier->predict($usersay)),
            'vector'=>json_encode($usersay)
        );

        echo json_encode($res);
        die();
    }
}