<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WhitespaceTokenizer;
use Phpml\Classification\SVC;
use Phpml\SupportVectorMachine\Kernel;
use Phpml\ModelManager;

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
            $labels[] = $pattern["id"];
        }

        $vectorizer = new TokenCountVectorizer(new WhitespaceTokenizer());

        // Build the dictionary.
        $vectorizer->fit($samples);

        // Transform the provided text samples into a vectorized list.
        $vectorizer->transform($samples);

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

        $filepath = TRAINING_DATA_FOLDER . 'model/trained_data.txt';
        $modelManager = new ModelManager();
        $modelManager->saveToFile($classifier, $filepath);

        /** ./training */

        $res = array(
            'success'=>true
        );

        echo json_encode($res);
        die();
    }
}