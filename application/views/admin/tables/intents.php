<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$aColumns = array(
    'intent_name'
);
$sIndexColumn = "id";
$sTable = 'tblintents';

$where = array();
array_push($where,' AND parent_id = 0 AND is_admin = '.is_admin());

$result = data_tables_init($aColumns, $sIndexColumn, $sTable, array(), $where, array('id', 'status', 'is_default', 'agent_id'));
$output = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = array();
    $followup = '';
    for ($i = 0; $i < count($aColumns); $i++) {
        $total_parents = total_rows('tblintents',array('parent_id'=>$aRow['id'],'is_admin'=>is_admin()));

        if ($total_parents){
            $followup = '<i class="fa fa-plus-square-o row-details" data-id="'.$aRow['id'].'"></i>&nbsp;&nbsp;';
        } else {
            $followup = '';
        }

        $_data = $followup.'<i class="fa fa-' . ($aRow["is_default"] ? "bookmark" : "circle-thin") . ' text-' . ($aRow["status"] ? "info" : "danger") . '"></i>&nbsp;&nbsp;' . $aRow[$aColumns[$i]];
        $row[] = $_data;
    }

    $options =  '<button type="button" data-url="'.admin_url() . 'intents/followup/' . $aRow['id'].'" class="fa fa-plus btn-link" data-toggle="modal" data-target="#new-intent"> '._l('link_followup').'</button>';
    $options .= ' ' .icon_btn(admin_url() . 'intents/intent/' . $aRow['id'], 'pencil-square-o', 'btn-default');
    $options .= ' ' . icon_btn('#', 'remove', 'btn-danger', array('data-id' => $aRow['id'], 'data-url' => admin_url('intents/delete'), 'onclick' => 'deleteIntent(this)'));

    $row[] = $options;
    $output['aaData'][] = $row;
}