<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body _buttons">
                        <a href="<?php echo admin_url('intents'); ?>" class="btn btn-default mright5 test pull-left display-block">
                            <?php echo _l('back'); ?></a>
                        <a href="#" onclick="new_intent()" class="btn btn-info mright5 test pull-right display-block">
                            <?php echo _l('save'); ?></a>
                    </div>
                </div>
                <div class="panel_s">
                    <div class="panel-body">
                        <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'intent-form','autocomplete'=>'off')); ?>
                        <div class="form-group">
                            <div class="checkbox checkbox-primary checkbox-inline">
                                <input type="checkbox" name="is_public" value="1" <?php echo ($intent->is_public == 1) ? 'checked' : ''?>>
                                <label for="contact_primary">
                                    <?php echo _l('intent_public')?>
                                </label>
                            </div>
                            <div class="checkbox checkbox-primary checkbox-inline">
                                <input type="checkbox" name="is_default" value="1" <?php echo ($intent->is_default == 1) ? 'checked' : ''?>>
                                <label for="contact_primary">
                                    <?php echo _l('intent_default')?>
                                </label>
                            </div>
                            <div class="checkbox checkbox-primary checkbox-inline">
                                <input type="checkbox" name="merge" value="1" <?php echo ($intent->merge == 1) ? 'checked' : ''?>>
                                <label for="contact_primary">
                                    <?php echo _l('intent_merge')?>
                                </label>
                            </div>
                            <div class="pull-right">
                                <?php $checked = ($intent->status == 1) ? 'checked' : ''?>
                                <div class="onoffswitch" data-toggle="tooltip" data-title="<?php echo _l('customer_active_inactive_help')?>">
                                    <input type="checkbox" value="1" name="status" data-switch-url="<?php echo admin_url().'intents/change_intent_status'?>" name="onoffswitch" class="onoffswitch-checkbox" id="<?php echo $intent->id?>" data-id="<?php echo $intent->id?>" <?php echo $checked?>>
                                    <label class="onoffswitch-label" for="<?php echo $intent->id?>"></label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                            <input type="text" class="form-control" name="intent_name" id="intent_name" value="<?php echo set_value('intent_name',$intent->intent_name); ?>">
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-md-8">
                                <!-- Usersays-->
                                <h4 class="bold no-margin font-medium"><?php echo _l('training_phrases')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('training_phrases_help'); ?>"></i></h4>
                                <hr/>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-quote-right"></i></span>
                                    <input class="form-control" placeholder="<?php echo _l('training_phrases')?>" type="text" name="usersays">
                                    <span class="input-group-btn">
                                      <button type="button" class="btn btn-info btn-flat btn-add-usersay"><i class="fa fa-plus"></i></button>
                                    </span>
                                </div>
                                <?php
                                    $usersay_row = 0;
                                    $btn_detail = "";
                                    $parameter_rows = 0;
                                ?>
                                <div class="table">
                                    <table class="table stripped-table-data table-hover table-usersays">
                                        <thead class="usersays-thead">
                                            <th colspan="2"><?php echo _l('training_phrases')?></th>
                                            <th><?php echo _l('options')?></th>
                                        </thead>
                                        <?php if ($intentusersays) { ?>
                                            <?php foreach ($intentusersays as $key=>$intentusersay) { ?>
                                                <tbody id="usersay-<?php echo $usersay_row ?>">
                                                <?php $parameters = json_decode($intentusersay['parameters']); ?>
                                                <?php if ($parameters) { ?>
                                                    <?php $btn_detail = "<i class='fa fa-plus btn-details' onclick='userSayDetails(this,".$usersay_row.")'></i>&nbsp;&nbsp;"?>
                                                <?php } ?>
                                                <tr>
                                                    <td colspan="2"><?php echo $btn_detail ?><?php echo $intentusersay['usersay']?>
                                                        <?php
                                                            $parse = json_decode($intentusersay['parse']);
                                                        ?>
                                                        <input value="<?php echo $intentusersay['usersay']?>" type="hidden" name="usersays[<?php echo $usersay_row?>][usersay]">
                                                        <input type="hidden" name="usersays[<?php echo $usersay_row?>][parse]" value="<?php echo htmlspecialchars(json_encode($parse)); ?>"/>
                                                    </td>
                                                    <td><button type="button" class="btn btn-danger btn-icon" onclick="$('#usersay-'+<?php echo $usersay_row?>).remove()"><i class="fa fa-close"></i></button></td>
                                                </tr>
                                                </tbody>
                                                <?php if ($intentusersay['parameters']) { ?>
                                                    <tbody id="usersay-parameters-<?php echo $usersay_row?>" style="display : none">
                                                    <tr class="alert-info">
                                                        <th><?php echo _l('intents_parameter_name')?></th>
                                                        <th><?php echo _l('entity')?></th>
                                                        <th><?php echo _l('intents_resolved_value')?></th>
                                                    </tr>
                                                    <?php foreach ($parameters as $parameter) { ?>
                                                    <tr>
                                                        <?php foreach ($parameter as $pkey=>$value) { ?>
                                                            <td><?php echo $value?><input value="<?php echo $value?>" type="hidden" name="parameters[<?php echo $usersay_row?>][<?php echo $parameter_rows?>][<?php echo $pkey?>]"></td>
                                                        <?php } ?>
                                                    </tr>
                                                    <?php $parameter_rows++;} ?>
                                                    </tbody>
                                                <?php } ?>
                                                <?php $usersay_row++; } ?>
                                        <?php } ?>
                                    </table>
                                </div>
                                <br/>
                                <!-- /usersays -->
                                <!-- Actions -->
                                <h4 class="bold no-margin font-medium"><?php echo _l('actions_parameters')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('actions_parameters_help'); ?>"></i></h4>
                                <hr/>
                                <div class="form-group">
                                    <?php $value = (isset($intent) ? $intent->action : "")?>
                                    <input type="text" name="action" class="form-control" value="<?php echo $value?>" placeholder="<?php echo _l('actions_parameters')?>">
                                </div>
                                <?php $action_row = 0;?>
                                <div class="table">
                                    <table class="table stripped-table-data table-hover table-actions">
                                        <thead class="alert-info" style="font-weight: bold">
                                        <th class="text-center"><?php echo _l('actions_required')?></th>
                                        <th><?php echo _l('intents_parameter_name')?></th>
                                        <th><?php echo _l('entity')?></th>
                                        <th><?php echo _l('actions_value')?></th>
                                        <th class="text-center"><?php echo _l('actions_is_list')?></th>
                                        <th><?php echo _l('actions_prompt')?></th>
                                        <th></th>
                                        </thead>
                                        <tbody>
                                        <?php
                                            $action_parameters = json_decode($intent->action_parameters);
                                        ?>
                                        <?php if ($action_parameters) { ?>
                                        <?php foreach ($action_parameters as $key=>$action_parameter) { ?>
                                                <tr id="action-<?php echo $action_row?>">
                                                    <td class="text-center">
                                                        <div class=""><input value="1" class="is_required" name="actions[<?php echo $action_row?>][is_required]" type="checkbox" <?php echo ($action_parameter->is_required ? 'checked' : '')?>></div></td>
                                                    <td><?php echo $action_parameter->parameter_name?><input value="<?php echo $action_parameter->parameter_name?>" name="actions[<?php echo $action_row?>][parameter_name]" type="hidden"></td>
                                                    <td><?php echo $action_parameter->entity?> <input value="<?php echo $action_parameter->entity?>" name="actions[<?php echo $action_row?>][entity]" type="hidden"></td>
                                                    <td><?php echo $action_parameter->resolved_value?><input value="<?php echo $action_parameter->resolved_value?>" name="actions[<?php echo $action_row?>][resolved_value]" type="hidden"></td>
                                                    <td class="text-center"><div class=""><input value="1" name="actions[<?php echo $action_row?>][is_list]" type="checkbox" <?php echo ($action_parameter->is_list ? 'checked' : '')?>></div></td>
                                                    <?php
                                                    $btn_prompt = "...";

                                                    if ($action_parameter->is_required){
                                                        $btn_prompt = '<button type="button" class="btn btn-link btn-icon" data-toggle="modal" data-target="#promptModal" data-parameter="'.$action_parameter->parameter_name.'" data-entity="'.$action_parameter->entity.'" data-value="'.$action_parameter->resolved_value.'" data-row="'.$action_row.'">'._l('define_prompts').'</button>';
                                                    }
                                                    ?>
                                                    <td><div id="prompt"><?php echo $btn_prompt?></div></td>
                                                    <td><button type="button" class="btn btn-danger btn-icon" onclick="$('#action-<?php echo $action_row?>').remove();$('#action-prompt-<?php echo $action_row?>').remove()"><i class="fa fa-close"></i></button></td>
                                                </tr>
                                        <?php $action_row++;} ?>
                                        <?php } ?>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="buttons">
                                    <button type="button" class="btn btn-link btn-add-parameter"><i class="fa fa-plus"></i> <?php echo _l('add_new_parameter')?></button>
                                </div>
                                <br/>
                                <!-- /actions -->
                                <!-- Responses -->
                                <h4 class="bold no-margin font-medium"><?php echo _l('response')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('response_help'); ?>"></i></h4>
                                <hr/>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-comments-o"></i></span>
                                    <input class="form-control" placeholder="<?php echo _l('response')?>" type="text" name="response">
                                    <span class="input-group-btn">
                                      <button type="button" class="btn btn-info btn-flat btn-add-response"><i class="fa fa-plus"></i></button>
                                    </span>
                                </div>
                                <?php $response_row = 0;?>
                                <div class="table">
                                    <table class="table stripped-table-data table-hover table-response">
                                        <thead>
                                        <th><?php echo _l('response')?></th>
                                        <th><?php echo _l('options')?></th>
                                        </thead>
                                        <tbody class="response-tbody">
                                        <?php if ($intentresponses) { ?>
                                        <?php foreach ($intentresponses as $intentresponse) { ?>
                                            <tr id="response-<?php echo $response_row?>">
                                                <td><?php echo $intentresponse['response']?>
                                                    <input value="<?php echo $intentresponse['response']?>" type="hidden" name="responses[<?php echo $response_row?>][response]">
                                                </td>
                                                <td><button type="button" class="btn btn-danger btn-icon" onclick="$('#response-'+<?php echo $response_row?>).remove()"><i class="fa fa-close"></i></button></td>
                                            </tr>
                                            <?php $response_row++; } ?>
                                        <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /responses -->
                            </div>
                            <div class="col-md-4"></div>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="promptModal" tabindex="-1" role="dialog" aria-labelledby="promptModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="promptModalLabel">Prompts for '<span class="target-action"></span>'</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <input type="hidden" name="action_row" value=""/>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-4">
                        <label for="parameter_name"><?php echo _l('intents_parameter_name');?></label>
                        <input type="text" class="form-control" name="parameter_name" id="parameter_name" value="" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="entity"><?php echo _l('entity');?></label>
                        <input type="text" class="form-control" name="entity" id="entity" value="" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="value"><?php echo _l('intents_resolved_value');?></label>
                        <input type="text" class="form-control" name="value" id="value" value="" disabled>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-md-12">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-terminal"></i></span>
                            <input class="form-control" placeholder="<?php echo _l('prompt_variant')?>" type="text" name="prompt">
                        <span class="input-group-btn">
                        <button type="button" class="btn btn-info btn-flat btn-add-prompt"><i class="fa fa-plus"></i></button>
                        </span>
                        </div>
                    </div>
                </div>
                <div class="table">
                    <table class="table table-hover tblprompt">
                        <thead>
                        <th><?php echo _l('prompt_variants')?></th>
                        <th></th>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button"  data-dismiss="modal" class="btn btn-secondary"><?php echo _l('close')?></button>
                <button type="button" class="btn btn-info" data-dismiss="modal"><?php echo _l('add'); ?></button>
            </div>
        </div>
    </div>
</div>
<?php init_tail(); ?>
<script>

    //creating new array
    var actions = new Array();

    var usersay_row = <?php echo $usersay_row?>;
    var response_row = <?php echo $response_row?>;
    var parameter_rows = <?php echo $parameter_rows?>;
    var action_row = <?php echo $action_row;?>;
    var parse = new Array();

    $(function(){


        /** Validate Entity Form*/
        _validate_form($('.intent-form'),
            {intent_name:'required'}
        );

        $('.btn-add-parameter').on('click',function(){

            action_row++;

            html ='<tr id="action-'+action_row+'" data-row="'+action_row+'">';
            html +='<td class="text-center"><input value="1" class="is_required" name="actions['+action_row+'][is_required]" type="checkbox"></td>';
            html +='<td><input type="text" class="form-control" name="actions['+action_row+'][parameter_name]" value=""/></td>';
            html +='<td><input type="text" class="form-control" name="actions['+action_row+'][entity]" value=""/></td>';
            html +='<td><input type="text" class="form-control" name="actions['+action_row+'][resolved_value]" value=""/></td>';
            html +='<td class="text-center"><input value="1" class="is_list" name="actions['+action_row+'][is_list]" type="checkbox"></td>';
            html += '<td><div id="prompt"></div></td>';
            html += '<td><button type="button" class="btn btn-danger btn-icon" onclick="$(\'#action-'+action_row+'\').remove()"><i class="fa fa-close"></i></button></td>';


            $('.table-actions tbody').append(html);
        });

        $( ".is_required" ).on('change',function() {

            $('.target-action').html('');
            var checked = $(this).is(":checked");
            var tr = $(this).closest('tr');

            var parameter_name = tr.children().eq(1).text();
            var entity = tr.children().eq(2).text();
            var value = tr.children().eq(3).text();
            var trrow = $(this).closest('tr').attr('id');
            var role = trrow.split('-');

            if (checked === false) {
                tr.children().eq(5).html('...');
            } else {
                tr.children().eq(5).html('<button type="button" class="btn btn-link btn-icon" data-toggle="modal" data-target="#promptModal" data-parameter="'+parameter_name+'" data-entity="'+entity+'" data-value="'+value+'" data-row="'+role[1]+'"><?php echo _l('define_prompts')?></button>');
            }
        });

        $('#promptModal').on('show.bs.modal', function(e) {

            var prompts = new Array();
            var invoker = $(e.relatedTarget);
            var parameter_name = $(invoker).data('parameter');
            var entity = $(invoker).data('entity');
            var value = $(invoker).data('value');
            var row = $(invoker).data('row');

            $('#promptModal input[name="parameter_name"]').val(parameter_name);
            $('#promptModal input[name="entity"]').val(entity);
            $('#promptModal input[name="value"]').val(value);
            $('#promptModal input[name="action_row"]').val(row);
            $('#promptModal .target-action').html(parameter_name);

            $('.target-action').html(parameter_name);

            $.ajax({
                type: 'GET',
                url: admin_url + 'intents/get_prompts/'+entity,
                dataType: 'json',
                success: function (json) {
                    console.log(json);
                    $.each(json, function (i, e) {

                        html ='<tr>';
                        html +='<td>'+ e.prompt+'<input type="hidden" name="prompts['+parameter_name+'][]" value="'+ e.prompt+'"></td>';
                        html +='<td><button type="button" class="btn btn-danger btn-icon" onclick="$(this).closest(\'tr\').remove();removePrompt(\''+ e.id+'\');"><i class="fa fa-minus-square-o"></i></button></td>';
                        html +='</tr>';

                        $('.tblprompt tbody').append(html);

                    });
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    if (xhr.status != 0) {
                        alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }

            });

        });

        $('#promptModal').on('hidden.bs.modal', function () {

            $('.tblprompt tbody').html('');
            $('.intent-form').submit();

        });

        $('.btn-add-prompt').on('click',function(){

            var prompt = $('input[name=\'prompt\']').val();
            var value = $('#promptModal input[name="parameter_name"]').val();
            var id = $('#promptModal input[name="id"]').val();
            var entity = $('#promptModal input[name="entity"]').val();
            var row = $('#promptModal input[name="action_row"]').val();

            html ='<tr>';
            html +='<td>'+prompt+'</td>';
            html +='<td><button type="button" class="btn btn-danger btn-icon" onclick="$(this).closest(\'tr\').remove();"><i class="fa fa-minus-square-o"></i></button></td>';
            html +='</tr>';

            $('.tblprompt tbody').append(html);


            htmlAction = '<tr style="display: none">';
            htmlAction +='<td colspan="7"><input type="hidden" name="prompts['+value+'][]" value="'+prompt+'"></td>';
            htmlAction +='</tr>';

            $('input[name=\'prompt\']').val('');
            $('#action-'+id).after(htmlAction);

            var data = "entity="+entity+"&prompt="+prompt+"&intentid=<?php echo $intent->id?>";

            $.ajax({
                type: 'POST',
                url: admin_url + 'intents/update_prompts',
                data : data,
                dataType: 'json',
                success: function (json) {
                    $('#prompt-'+ actionid).remove();
                }
            });

            $('input[name=\'prompt\']').val('');
            $('input[name=\'prompt\']').focus();

        });

        /** Add User says*/
        $('.btn-add-usersay').on('click', function () {

            var usersays = $('input[name=\'usersays\']').val();
            var btn_details = '';

            if (usersays != ""){
                // Show full page LoadingOverlay
                $.LoadingOverlay("show");
                $.ajax({
                    type: 'POST',
                    url: admin_url + 'intents/usersayparameters/',
                    data : "usersay="+usersays.toString(),
                    dataType: 'json',
                    success: function (json) {

                        if (json.parameters.length > 0){

                            btn_details = '<i class="fa fa-plus btn-details" onclick="userSayDetails(this,\''+usersay_row+'\')"></i>&nbsp;&nbsp;';
                            addAction(json.parameters);
                        }

                        usersayHtml = '<tbody id="usersay-'+usersay_row+'" >';
                        usersayHtml += '<tr>';
                        usersayHtml +='<td colspan="2">'+btn_details+usersays+'<input type="hidden" name="usersays['+usersay_row+'][usersay]" value="'+usersays+'"><input type="hidden" name="usersays['+usersay_row+'][parse]" value=""/></td>';
                        usersayHtml +='<td><button class="btn btn-danger btn-icon" type="button" onclick="removeUsersay(\''+usersay_row+'\');"><i class="fa fa-close"></i></td>';
                        usersayHtml +='</tr>';
                        usersayHtml += '</tbody>';

                        if (json.parameters.length > 0) {
                            usersayHtml += '<tbody class="" id="usersay-parameters-'+usersay_row+'" style="display : none">';
                            usersayHtml += '<tr class="alert-info">';
                            usersayHtml += '<th><?php echo _l('intents_parameter_name')?></th>';
                            usersayHtml += '<th><?php echo _l('entity')?></th>';
                            usersayHtml += '<th><?php echo _l('intents_resolved_value')?></th>';
                            usersayHtml += '</tr>';

                            $.each(json.parameters, function (i, e) {

                                usersayHtml += '<tr>';
                                $.each(this, function (k, v) {
                                    usersayHtml += '<td>' + v + '<input value="' + v + '" type="hidden" name="parameters[' + usersay_row + '][' + parameter_rows + '][' + k + ']"></td>';

                                });
                                usersayHtml += '</tr>';
                                parameter_rows++;

                            });
                            usersayHtml += '</tbody>';
                        }

                        $('input[name=\'usersays\']').val("");
                        $('input[name=\'usersays\']').focus();

                        $('.usersays-thead').after(usersayHtml);

                        parse_string(usersays.toString(),usersay_row);
                        usersay_row++;



                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        if (xhr.status != 0) {
                            alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    }
                });
            }
        });

        /** Add Responses*/
        $('.btn-add-response').on('click', function () {

            var response = $('input[name=\'response\']').val();

            if (response != ""){

                responseHtml = '<tr id="response-'+response_row+'">';
                responseHtml +='<td>'+response+'<input type="hidden" name="responses['+response_row+'][response]" value="'+response+'"></td>';
                responseHtml +='<td><button class="btn btn-danger btn-icon" type="button" onclick="removeResponse(\''+response_row+'\');"><i class="fa fa-close"></i></td>';
                responseHtml +='</tr>';

                $('input[name=\'response\']').val("");
                $('input[name=\'response\']').focus();

                $('.response-tbody').append(responseHtml);

                response_row++;
            }
        });
    });

    function parse_string(string,row)
    {
        $.ajax({
            type: 'POST',
            url: admin_url + 'intents/parse_string/',
            data: "string=" + string.toString(),
            dataType: 'json',
            success: function (json) {

                $('input[name=\'usersays['+row+'][parse]\']').val(JSON.stringify(json[0]));
                $.LoadingOverlay("hide");
            },
            error: function (xhr, ajaxOptions, thrownError) {
                if (xhr.status != 0) {
                    alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            }
        });

    }

    function removePrompt(id){
        $.ajax({
            type: 'GET',
            url: admin_url + 'intents/delete_prompt/'+id,
            dataType: 'json',
            success: function (json) {
            }
        });
    }

    function userSayDetails(element,row){

        if ($('#usersay-parameters-'+row).hasClass('active')){
            $(element).removeClass('fa-minus');
            $(element).addClass('fa-plus');
            $('#usersay-parameters-'+row).hide();
            $('#usersay-parameters-'+row).removeClass('active');

        } else {
            $(element).removeClass('fa-plus');
            $(element).addClass('fa-minus');
            $('#usersay-parameters-'+row).show();
            $('#usersay-parameters-'+row).addClass('active');
        }

    }

    function new_intent()
    {
        $('.intent-form').submit();
    }

    function removeUsersay(id){

        if (id){
            $('#usersay-'+id).remove();
            $('#usersay-parameters-'+id).remove();
            return true
        }

        return false;

    }

    function removeResponse(id){

        if (id){
            $('#response-'+id).remove();
            return true
        }

        return false;
    }

    function addAction(parameters)
    {
        if (!action_row){

            $.each(parameters, function (i, e) {
                var matchingItems = $.grep(actions, function (item) {
                    return item.parameter_name === e.parameter_name;
                });

                if (matchingItems.length === 0) {
                    actions.push(e);
                    action_row++;

                    html = '<tr id="action-'+action_row+'" data-row="'+action_row+'">';
                    html += '<td class="text-center">';
                    html += '<div class=""><input type="checkbox" value="1" name="actions['+action_row+'][is_required]"></div>';
                    html +='</td>';
                    $.each(this, function (index, value) {

                        if (index == 'resolved_value'){
                            var varvalue = '$'+actions[i].parameter_name;
                        } else {
                            var varvalue = value;
                        }
                        html += '<td>' + varvalue + '<input value="' + varvalue + '" type="hidden" name="actions['+action_row+'][' + index + ']"></td>';
                    });
                    html += '<td class="text-center">';
                    html += '<div class=""><input type="checkbox" value="1" name="actions['+action_row+'][is_list]"></div>';
                    html +='</td>';
                    html += '<td><div id="prompt"></div></td>';
                    html += '<td><button type="button" class="btn btn-danger btn-icon" onclick="$(\'#action-'+action_row+'\').remove()"><i class="fa fa-close"></i></button></td>';
                    html += '</tr>';

                    $('.table-actions tbody').append(html);
                }
            });

        }
    }
</script>
</body>
</html>
