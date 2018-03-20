<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$aColumns     = array(
    'entity_name'
);
$sIndexColumn = "id";
$sTable       = 'tblentities';

$where = array();
array_push($where,' AND is_admin = '.is_admin());

$result  = data_tables_init($aColumns, $sIndexColumn, $sTable,array(),$where,array('id'));
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = array();
    for ($i = 0; $i < count($aColumns); $i++) {

        $_data = '@'.$aRow[$aColumns[$i]];
        $row[] = $_data;
    }

    $options = icon_btn(admin_url().'entities/entity/'.$aRow['id'],'pencil-square-o','btn-default');
    $options .= ' '.icon_btn('#','remove','btn-danger',array('data-id'=>$aRow['id'],'data-url'=>admin_url('entities/delete'),'onclick'=>'deleteEntity(this)'));

    $row[] = $options;
    $output['aaData'][] = $row;
}