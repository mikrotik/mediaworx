<?php

require_once VENDOR_FOLDER . 'stanford/autoload.php';
require_once VENDOR_FOLDER . 'ml/autoload.php';

use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WhitespaceTokenizer;
use Phpml\Classification\SVC;
use Phpml\SupportVectorMachine\Kernel;
use Phpml\ModelManager;
use Phpml\Metric\Accuracy;

class Echelon_Helper
{
    const EVAL_RELEVANCE = 3.07; // Evaluation threshold limit

    static private $_request = [];
    static private $_agent = [];
    static private $_response = [];
    static private $_intent = [];
    static private $_accuracy = [];
    static private $_pattern = "";
    static private $_actionIncomplete = true;

    /** Set Request */
    public static function _setRequest($request)
    {
        self::$_request = $request;
    }

    /** Get Request */
    private static function _getRequest()
    {
        return self::$_request;
    }

    /** Set Pattern */
    public static function _setPattern($pattern)
    {
        self::$_pattern = $pattern;
    }

    /** Get Pattern */
    private static function _getPattern()
    {
        return self::$_pattern;
    }

    /** Set ActionIncomplete */
    public static function _setActionIncomplete($status)
    {
        self::$_actionIncomplete = $status;
    }

    /** Is ActionIncomplete */
    public static function _isActionIncomplete()
    {
        return self::$_actionIncomplete;
    }

    /** Set Intent */
    public static function _setIntent($intent)
    {
        self::$_intent = $intent;
    }

    /** Get Intent */
    private static function _getIntent()
    {
        return self::$_intent;
    }

    /** Set Agent */
    public static function _setAgent($agent)
    {
        self::$_agent = $agent;
    }

    /** Get Agent */
    private static function _getAgent()
    {
        return self::$_agent;
    }

    /** Set Accuracy */
    public static function _setAccuracy($accuracy)
    {
        self::$_accuracy = $accuracy;
    }

    /** Get Accuracy */
    private static function _getAccuracy()
    {
        return self::$_accuracy;
    }

    /** Set Bot Response */
    private static function _setResponse($key,$value)
    {
        self::$_response[$key] = $value;
    }

    /** Get Bot Response By Key*/
    private static function _getResponseByKey($key)
    {
        return self::$_response[$key];
    }

    /** Get Bot Response */
    private static function _getResponse()
    {
        return self::$_response;
    }

    public static function _process()
    {

        /**
         * Load the request
         * @var $request
         */
        $request = self::_getRequest();

        /**
         * Load the agent
         * @var $agent
         */
        $agent = self::_getAgent();
        self::_setResponse("source",$agent->agent_name);


        /**
         * Load the intent
         * @var intent
         */
        $intent = self::_getIntent();

        self::_setResponse("action",$intent->action);

        $accuracy = self::_getAccuracy();
        self::_setResponse("score",$accuracy);


        /**
         * Check for pattern parameters
         */
        $patternParameters = self::patternParameters(self::_getPattern());


        /**
         * Check for required parameters
         */
        $requiredParameters = self::requiredParameters($intent);

    }


    /** Return Echelon Response */
    public static function response()
    {
        /**
         * TODO
         * Renew the parameters
         */
        return self::_getResponse();
    }

    public static function predict_intent($user_pattern)
    {
        $CI = & get_instance();

        /**
         * Load the agent
         * @var $agent
         */
        $agent = self::_getAgent();

        $CI->db->select('id,object,object_id,pattern');
        $CI->db->where('is_child',0);
        $patterns = $CI->db->get('tblpatterns')->result_array();

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

        $usersay = [strtoupper($user_pattern)];
        $actualLabel = strtoupper($user_pattern);

        // Build the dictionary.
        $vectorizer->fit($usersay);

        // Transform the provided text samples into a vectorized list.
        $vectorizer->transform($usersay);

        $filepath = TRAINING_DATA_FOLDER . 'model/trained_data.txt';
        $modelManager = new ModelManager();
        $restoredClassifier = $modelManager->restoreFromFile($filepath);

        $pattern_id = json_encode($restoredClassifier->predict($usersay)[0]);

        $CI->db->where('id',$pattern_id);
        $pattern = $CI->db->get('tblpatterns')->row();

        $str_compare = new StringCompare(strtoupper($pattern->pattern),$actualLabel);
        $str_compare->process();
        $similarity = $str_compare->getSimilarityPercentage() / 100;
        self::_setAccuracy($similarity);

        if ($similarity >= $agent->threshold) {

            $CI->db->where('id', $pattern->object_id);
            $intent = $CI->db->get('tbl' . $pattern->object)->row();

        } else {
            $intent = self::_getDefaultFallbackResponse($agent);
        }

        self::_setPattern($user_pattern);
        self::_setIntent($intent);
    }

    private static function patternParameters($string)
    {
        $CI = & get_instance();

        $parameters = [];
        $contextParameters = [];

        $patternParameters = self::parse_entities($string);
        $intent = self::_getIntent();

        $intentActionParameters = json_decode($intent->action_parameters);

        foreach ($intentActionParameters as $key=>$intentActionParameter){
            $parameters[$intentActionParameter->parameter_name] = (isset($patternParameters[$intentActionParameter->parameter_name]) ? $patternParameters[$intentActionParameter->parameter_name] : "");
        }

        foreach ($intentActionParameters as $key=>$intentActionParameter){
            $contextParameters[$intentActionParameter->parameter_name] = (isset($patternParameters[$intentActionParameter->parameter_name]) ? $patternParameters[$intentActionParameter->parameter_name] : "");
            $contextParameters[$intentActionParameter->parameter_name.".original"] = "";
        }

        self::_setResponse("parameters",$parameters);
        self::_setResponse("contextParameters",$contextParameters);

        return true;
    }

    private static function requiredParameters($intent)
    {
        $CI = & get_instance();

        return false;
    }

    public static function parse_entities($string)
    {
        $CI = & get_instance();

        $string = str_replace("'", "\\'",$string);

        $words = explode(" ",$string);
        $against = implode("+",$words);

        /**
         * TODO -  Make this SQL more accurate
         * Convert mysql statement into Codeigniter Standards
         * To make GROUP BY work and to set MIN Search Char to 2 follow these steps
         * sudo nano /etc/mysql/my.cnf
         * Add these lines
         * [mysqld]
         * sql_mode = "STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"
         * ft_min_word_len=1
         * save and exit
         * restart mysql server
         *
         * Also make your table MyISAM
         * ALTER TABLE tblentityreferences DROP INDEX reference_index;
         * ALTER TABLE tblentityreferences DROP INDEX synonym_index;
         * CREATE FULLTEXT INDEX reference_index ON tblentityreferences(reference)
         * CREATE FULLTEXT INDEX synonym_index ON tblentityreferences(synonym)
         * WITH QUERY EXPANSION - IN BOOLEAN MODE
         */
        $sql_statement = "SELECT DISTINCT(e.id),e.entity_name,er.reference,er.synonym,MATCH(er.synonym) AGAINST ('".$string."') as relevance
                        FROM tblentityreferences er
                        LEFT JOIN tblentities e
                        ON(e.id = er.entity_id)
                        HAVING relevance >=".self::EVAL_RELEVANCE;
        $results = $CI->db->query($sql_statement)->result_array();

        $entities = [];
        $parameters = [];

        foreach ($results as $result)
        {
            $synonym_words = explode(',',$result['synonym']);

            foreach ($synonym_words as $synonym_word){

                if (strstr(strtolower($string), strtolower($synonym_word))){

                    $parameters[] = array(
                        'parameter_name' => $result['entity_name'],
                        'entity' => '@'.$result['entity_name'],
                        'resolved_value' => $synonym_word,
                    );
                }
            }

        }

        foreach ($parameters as $parameter)
        {
            $entities[$parameter['parameter_name']] = $parameter['resolved_value'];
        }

        return $entities;
    }

    public static function stanford_string_parser($string)
    {
        $pos = new \StanfordNLP\POSTagger(
            VENDOR_FOLDER . 'stanford/models/english-left3words-distsim.tagger',
            VENDOR_FOLDER . 'stanford/stanford-postagger-3.8.0.jar'
        );
        $result = $pos->tag(explode(' ', $string));

        return $result;
    }

    public static function wordToNumber($str = ""){

        $numbers = array(
            'zero' => 0,
            'one' => 1,
            'two' => 2,
            'three' => 3,
            'four' => 4,
            'five' => 5,
            'six' => 6,
            'seven' => 7,
            'eight' => 8,
            'nine' => 9,
            'ten' => 10,
            'eleven' => 11,
            'twelve' => 12,
            'thirteen' => 13,
            'fourteen' => 14,
            'fifteen' => 15,
            'sixteen' => 16,
            'seventeen' => 17,
            'eighteen' => 18,
            'nineteen' => 19,
            'twenty' => 20,
            'thirty' => 30,
            'forty' => 40,
            'fourty' => 40, // common misspelling
            'fifty' => 50,
            'sixty' => 60,
            'seventy' => 70,
            'eighty' => 80,
            'ninety' => 90,
            'hundred' => 100,
            'thousand' => 1000,
            'million' => 1000000,
            'billion' => 1000000000);

        if (isset($numbers[$str])) {
            return $numbers[$str];
        }

        return false;
    }

    private static function _getDefaultFallbackResponse($agent){

        $CI = & get_instance();

        $CI->db->where('intent_name','Default Fallback Intent');
        $CI->db->where('agent_id',$agent->id);
        $defaultFallbackIntent = $CI->db->get('tblintents')->row();

        $CI->db->where('intent_id', $defaultFallbackIntent->id);
        $CI->db->order_by('id', 'RANDOM');
        $CI->db->limit(1);
        $defaultFallback = $CI->db->get('tblintents_responses')->row();

        self::_setActionIncomplete(false);
        self::_setResponse('actionIncomplete', self::_isActionIncomplete());

        self::_setResponse("speech",$defaultFallback->response);

        return $defaultFallback->response;
    }
}