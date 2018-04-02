<?php

require_once VENDOR_FOLDER . 'stanford/autoload.php';

class Echelon_Helper
{
    const EVAL_RELEVANCE = 3; // Evaluation threshold limit

    static private $_request = [];
    static private $_agent = [];
    static private $_response = [];

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

    /** Set Bot Response */
    private static function _setResponse($key,$value)
    {
        self::$_response[$key] = $value;
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
         * @car $agent
         */
        $agent = self::_getAgent();

        self::_setResponse("speech","I can hear you! You said [ {$request["usersay"]} ]");

    }

    /** Return Echelon Response */
    public static function response()
    {
        return self::_getResponse();
    }

    static public function tags_to_point($patterns) {
        $tags = array();
        foreach($patterns as $pattern) {
            $tags = array_merge($tags, $pattern['tags']);
        }
        $tags = array_unique($tags);

        $tags = array_fill_keys($tags, 0);
        ksort($tags);
        return $tags;
    }
    protected function dot_product($a, $b) {
        $products = array_map(function($a, $b) {
            return $a * $b;
        }, $a, $b);
        return array_reduce($products, function($a, $b) {
            return $a + $b;
        });
    }
    protected function magnitude($point) {
        $squares = array_map(function($x) {
            return pow($x, 2);
        }, $point);
        return sqrt(array_reduce($squares, function($a, $b) {
            return $a + $b;
        }));
    }
    static public function cosine($a, $b) {
        ksort($a);
        ksort($b);
        return self::dot_product($a, $b) / (self::magnitude($a) * self::magnitude($b));
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
        $sql_statement = "SELECT e.id,e.entity_name,er.reference,er.synonym,MATCH(er.synonym) AGAINST ('".$string."') as Relevance
            FROM tblentityreferences er
            LEFT JOIN tblentities e ON(e.id = er.entity_id)
            WHERE MATCH (er.synonym) AGAINST('".$string."' IN BOOLEAN MODE)
            GROUP BY e.id
            HAVING Relevance >= ".self::EVAL_RELEVANCE."
            ORDER BY Relevance DESC";
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
}