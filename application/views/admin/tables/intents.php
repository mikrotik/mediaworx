<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$aColumns     = array(
    'intent_name'
);
$sIndexColumn = "id";
$sTable       = 'tblintents';

$where = array();
array_push($where,' AND agentid = 0');

$result  = data_tables_init($aColumns, $sIndexColumn, $sTable,array(),$where,array('id','status','is_default','agentid'));
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = array();
    for ($i = 0; $i < count($aColumns); $i++) {

        $_data = '<i class="fa fa-'.($aRow["is_default"] ? "bookmark" : "circle-thin" ).' text-'.($aRow["status"] ? "info" : "danger" ).'"></i>&nbsp;&nbsp;'.$aRow[$aColumns[$i]];
        $row[] = $_data;
    }

    $options = icon_btn(admin_url().'intents/intent/'.$aRow['id'],'pencil-square-o','btn-default');
    $options .= ' '.icon_btn('#','remove','btn-danger',array('data-id'=>$aRow['id'],'data-url'=>admin_url('intents/delete'),'onclick'=>'deleteIntent(this)'));

    $row[] = $options;
    $output['aaData'][] = $row;
}