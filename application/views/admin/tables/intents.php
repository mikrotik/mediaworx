<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$aColumns     = array(
    'intent_name'
);
$sIndexColumn = "id";
$sTable       = 'tblintents';

$result  = data_tables_init($aColumns, $sIndexColumn, $sTable,array(),array(),array('id'));
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = array();
    for ($i = 0; $i < count($aColumns); $i++) {

        $_data = '<i class="fa fa-bookmark-o text-success"></i>&nbsp;&nbsp;'.$aRow[$aColumns[$i]];
        $row[] = $_data;
    }

    $options = icon_btn(admin_url().'intents/intent/'.$aRow['id'],'pencil-square-o','btn-default');
    $options .= ' '.icon_btn('#','remove','btn-danger',array('data-id'=>$aRow['id'],'data-url'=>admin_url('intents/delete'),'onclick'=>'deleteIntent(this)'));

    $row[] = $options;
    $output['aaData'][] = $row;
}