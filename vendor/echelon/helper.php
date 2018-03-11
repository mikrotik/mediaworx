<?php

require_once VENDOR_FOLDER . 'ml/autoload.php';

use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WordTokenizer;
use Phpml\Tokenization\WhitespaceTokenizer;
use Phpml\Classification\SVC;
use Phpml\SupportVectorMachine\Kernel;
use Phpml\ModelManager;

class Echelon_Helper
{

    public static function _getPatterns()
    {
        $CI = & get_instance();

        $patterns = [];
        $responses = [];

        /**
         * TODO - Echelon
         */
        $echelonPatterns = $CI->db->get("tblecheloncategorypatterns")->result_array();

        foreach ($echelonPatterns as $pattern)
        {
            $patterns["pattern"][] = strtolower($pattern["pattern"]);

            $CI->db->where('patternid', $pattern["id"]);
            $CI->db->order_by('id', 'RANDOM');
            $CI->db->limit(1);
            $echelonResponses = $CI->db->get("tblecheloncategoryresponses")->row();

            $patterns["responses"][] = $echelonResponses->response;
        }


        /**
         * TODO - Small Talks
         */
        $small_talks_patterns = $CI->db->get("tblsmalltalkreferences")->result_array();

        foreach ($small_talks_patterns as $pattern)
        {
            $patterns["pattern"][] = $pattern["question"];
        }

        $small_talks_responses = $CI->db->get("tblsmalltalkreferences")->result_array();

        foreach ($small_talks_responses as $pattern)
        {
            $patterns["responses"][] = $pattern["answer"];
        }

        return $patterns;
    }

    public static function _train()
    {
        $collection = self::_getPatterns();

        $filepath = TRAINING_FOLDER.'/model/model.dat';

        $patterns = $collection["pattern"];

        $vectorizer = new TokenCountVectorizer(new WordTokenizer());

// Build the dictionary.
        $vectorizer->fit($patterns);

// Transform the provided text samples into a vectorized list.
        $vectorizer->transform($patterns);

        $labels = $collection["responses"];

        $classifier = new SVC(Kernel::LINEAR, $cost = 1000);
        $classifier->train($patterns, $labels);

        $modelManager = new ModelManager();
        $modelManager->saveToFile($classifier,$filepath);

    }

    public static function _hybird($agent,$request)
    {
        /**
         * TODO - Hybird
         * Make more filters
         * Distance and Scoring
         * So database and training will be faster
         */

        $collection = self::_getPatterns();

        $filepath = TRAINING_FOLDER.'/model/model.dat';

        $patterns = $collection["pattern"];

        $vectorizer = new TokenCountVectorizer(new WordTokenizer());

        // Build the dictionary.
        $vectorizer->fit($patterns);

        // Transform the provided text samples into a vectorized list.
        $vectorizer->transform($patterns);

        $labels = $collection["responses"];

        $classifier = new SVC(Kernel::LINEAR, $cost = 1000);
        $classifier->train($patterns, $labels);

        $pattern = [strtolower($request["usersay"])];

        // Build the dictionary.
        $vectorizer->fit($pattern);

        // Transform the provided text samples into a vectorized list.
        $vectorizer->transform($pattern);

        $predicted = $classifier->predict($pattern);

        return $predicted[0];
    }
}