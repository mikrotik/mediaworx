<?php

require_once VENDOR_FOLDER . 'stanford/autoload.php';

function parseString($string){

    $pos = new \StanfordNLP\POSTagger(
        VENDOR_FOLDER.'stanford/models/english-left3words-distsim.tagger',
        VENDOR_FOLDER.'stanford/stanford-postagger-3.8.0.jar'
    );
    $result = $pos->tag(explode(' ', $string));

    return $result;
}