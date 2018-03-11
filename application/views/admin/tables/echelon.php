<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$aColumns     = array(
    'category'
);
$sIndexColumn = "id";
$sTable       = 'tblechelon';

$where = array();

$result  = data_tables_init($aColumns, $sIndexColumn, $sTable,array(),$where,array('id'));
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = array();
    for ($i = 0; $i < count($aColumns); $i++) {

        $_data = '<i class="fa fa-commenting"></i> '.$aRow[$aColumns[$i]];
        $row[] = $_data;
    }

    $options = icon_btn(admin_url().'echelon/category/'.$aRow['id'],'pencil-square-o','btn-default');
    $options .= ' '.icon_btn('#','remove','btn-danger',array('data-id'=>$aRow['id'],'data-url'=>admin_url('echelon/delete'),'onclick'=>'deleteCategory(this)'));

    $row[] = $options;
    $output['aaData'][] = $row;
}