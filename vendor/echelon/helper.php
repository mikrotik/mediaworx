<?php

require_once VENDOR_FOLDER . 'stanford/autoload.php';

class Echelon_Helper
{
    const EVAL_RELEVANCE = 3; // Evaluation threshold limit

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
            WHERE MATCH (er.synonym) AGAINST('".$against."' IN BOOLEAN MODE)
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
}