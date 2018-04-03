<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <div class="box-tools pull-right">
                <a href="#" onclick="new_intent()" class="btn btn-info mright5 btn-flat btn-sm  pull-right display-block">
                    <?php echo _l('submit'); ?></a>
            </div>
            <br/>
        </div>
        <div class="box-body">
            <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'intent-form','autocomplete'=>'off')); ?>
            <input type="hidden" name="is_admin" value="<?php echo is_admin()?>"/>
            <input type="hidden" name="agent_id" value="<?php echo $this->agent_scope?>"/>
            <input type="hidden" name="parent_id" value="<?php echo ((isset($intent) && $intent->parent_id) ? $intent->parent_id : 0)?>"/>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel_s">
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                                <input type="text" class="form-control" name="intent_name" id="intent_name" value="<?php echo set_value('intent_name',$intent->intent_name); ?>">
                            </div>
                            <h4 class="bold no-margin font-medium"><?php echo _l('intent_context')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intent_context_note'); ?>"></i></h4>
                            <br/>
                            <div class="form-group">
                                <select name="context_input[]" class="form-control select2" multiple="multiple" data-placeholder="<?php echo _l("context_input")?>"
                                        style="width: 100%;">
                                    <?php foreach ($contexts as $context) { ?>
                                        <option value="<?php echo $context?>"><?php echo $context?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <select name="context_output[]" class="form-control select2" multiple="multiple" data-placeholder="<?php echo _l("context_output")?>"
                                        style="width: 100%;">
                                    <?php foreach ($contexts as $context) { ?>
                                        <option value="<?php echo $context?>"><?php echo $context?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <hr/>
                            <h4 class="bold no-margin font-medium"><?php echo _l('intent_event')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intent_event_note'); ?>"></i></h4>
                            <br/>
                            <div class="form-group">
                                <select name="events[]" class="form-control select2" multiple="multiple" data-placeholder="<?php echo _l("add_event")?>"
                                        style="width: 100%;">
                                </select>
                            </div>
                            <hr/>
                            <!-- training phrases-->
                            <h4 class="bold no-margin font-medium"><?php echo _l('training_phrases')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('training_phrases_note'); ?>"></i></h4>
                            <br/>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-quote-right" data-toggle="tooltip" data-title="<?php echo _l('pattern_note'); ?>"></i></span>
                                <input class="form-control" placeholder="<?php echo _l('training_phrases_user_expression')?>" type="text" name="pattern">
                                    <span class="input-group-btn">
                                      <button type="button" class="btn btn-info btn-add-pattern"><?php echo _l('send')?></button>
                                    </span>
                            </div>
                            <?php
                            $user_expression_row = 0;
                            ?>
                            <div class="table">
                                <table class="table stripped-table-data table-hover table-user-expressions">
                                    <thead class="userExp">
                                    <th colspan="2"><?php echo _l('training_phrases')?></th>
                                    <th><?php echo _l('options')?></th>
                                    </thead>
                                    <?php if (isset($patterns)) { ?>
                                        <?php foreach ($patterns as $pattern) { ?>

                                            <?php
                                            $btn_details = '';
                                            $parameters = json_decode($pattern['parameters']);

                                            if ($parameters) {
                                                $btn_details = '<i class="fa fa-plus btn-details" onclick="getPatternParameters(this,' . $user_expression_row . ')"></i>&nbsp;&nbsp;';
                                            }
                                            ?>

                                            <tbody id="user-expression-<?php echo $user_expression_row?>">
                                            <tr>
                                                <td colspan="2"><?php echo $btn_details?><?php echo $pattern['pattern']?>
                                                    <input type="hidden" name="intent[user_exp][<?php echo $user_expression_row?>][pattern]" value="<?php echo $pattern['pattern']?>">
                                                    <input type="hidden" name="intent[user_exp][<?php echo $user_expression_row?>][stanford]" value="<?php echo htmlspecialchars($pattern['stanford'])?>"></td>
                                                <td><button class="btn btn-danger btn-icon" type="button" onclick="removePattern('<?php echo $user_expression_row?>');"><i class="fa fa-close"></i></button></td>
                                            </tr>
                                            </tbody>
                                            <?php if ($parameters) { ?>
                                                <?php $round = 0;?>
                                                <tbody class="" id="user-expression-child-<?php echo $user_expression_row?>" style="display : none">
                                                <tr class="alert-info">
                                                    <th><?php echo strtoupper(_l('intents_dt_parameter_name'))?></th>
                                                    <th><?php echo strtoupper(_l('intents_dt_entity'))?></th>
                                                    <th><?php echo strtoupper(_l('intents_dt_resolved_value'))?></th>
                                                </tr>
                                                <?php foreach ($parameters as $parameter) { ?>
                                                    <tr>
                                                        <td><?php echo $parameter->parameter_name?><input type="hidden" name="intent[user_exp][<?php echo $user_expression_row?>][parameters][<?php echo $round?>][parameter_name]" value="<?php echo $parameter->parameter_name?>"></td>
                                                        <td><?php echo $parameter->entity?><input type="hidden" name="intent[user_exp][<?php echo $user_expression_row?>][parameters][<?php echo $round?>][entity]" value="<?php echo $parameter->entity?>"></td>
                                                        <td><?php echo $parameter->resolved_value?><input type="hidden" name="intent[user_exp][<?php echo $user_expression_row?>][parameters][<?php echo $round?>][resolved_value]" value="<?php echo $parameter->resolved_value?>"></td>
                                                    </tr>
                                                    <?php $round++; } ?>
                                                </tbody>
                                            <?php } ?>

                                            <?php $user_expression_row++; } ?>
                                    <?php } ?>
                                </table>
                            </div>
                            <!-- ./training phrases-->
                            <!-- action and parameters -->
                            <h4 class="bold no-margin font-medium"><?php echo _l('actions_parameters')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('actions_parameters_note'); ?>"></i></h4>
                            <br/>
                            <div class="form-group">
                                <?php $value = (isset($intent) ? $intent->action : "")?>
                                <input type="text" name="action" class="form-control" value="<?php echo $value?>" placeholder="<?php echo _l('action_name')?>">
                            </div>
                            <?php $action_parameters_row = 0;?>
                            <div class="table">
                                <table class="table stripped-table-data table-hover table-parameter-list">
                                    <thead class="alert-info" style="font-weight: bold">
                                    <th class="text-center"><?php echo strtoupper(_l('intents_dt_is_required'))?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intents_dt_is_required_note'); ?>"></i></th>
                                    <th><?php echo strtoupper(_l('intents_dt_parameter_name'))?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intents_dt_parameter_name_note'); ?>"></i></th>
                                    <th><?php echo strtoupper(_l('intents_dt_entity'))?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intents_dt_entity_note'); ?>"></i></th>
                                    <th><?php echo strtoupper(_l('intents_dt_value'))?></th>
                                    <th class="text-center"><?php echo strtoupper(_l('intents_dt_is_list'))?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intents_dt_is_list_note'); ?>"></i></th>
                                    <th><?php echo strtoupper(_l('intents_dt_prompts'))?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intents_dt_prompts_note'); ?>"></i></th>
                                    <th></th>
                                    </thead>
                                    <tbody>
                                    <?php

                                    $action_parameters = json_decode($intent->action_parameters);

                                    if ($action_parameters) { ?>
                                        <?php foreach ($action_parameters as $action_parameter) { ?>
                                            <?php
                                            $btn_define_prompt = '';

                                            if (isset($action_parameter->is_required) && $action_parameter->is_required)
                                            {
                                                $btn_define_prompt = '<a href="#" class="btn btn-icon btn-post-options" data-row="'.$action_parameters_row.'" data-parameter="'.$action_parameter->parameter_name.'" data-entity="'.$action_parameter->entity.'" data-value="'.$action_parameter->value.'" data-toggle="modal" data-id="'.$action_parameters_row.'" data-target="#define-prompts">'._l('define_prompts').'</a>';
                                            }
                                            ?>
                                            <tr class="action_parameters" id="intent-action-parameter-<?php echo $action_parameters_row?>">
                                                <td class="text-center"><input class="is_required" type="checkbox" data-parameter="<?php echo $action_parameter->parameter_name?>" data-entity="<?php echo $action_parameter->entity?>" data-value="<?php echo $action_parameter->value?>" data-id="<?php echo $action_parameters_row?>" data-row="0" name="intent[action_parameters][<?php echo $action_parameters_row?>][is_required]" value="1" id="show_primary_contact" <?php echo (isset($action_parameter->is_required) && $action_parameter->is_required ? "checked" : "")?>></td>
                                                <td><?php echo $action_parameter->parameter_name?><input type="hidden" name="intent[action_parameters][<?php echo $action_parameters_row?>][parameter_name]" value="<?php echo $action_parameter->parameter_name?>"></td>
                                                <td><?php echo $action_parameter->entity?><input type="hidden" name="intent[action_parameters][<?php echo $action_parameters_row?>][entity]" value="<?php echo $action_parameter->entity?>"></td>
                                                <td><?php echo $action_parameter->value?><input type="hidden" name="intent[action_parameters][<?php echo $action_parameters_row?>][value]" value="<?php echo $action_parameter->value?>"></td>
                                                <td class="text-center"><input type="checkbox" name="intent[action_parameters][<?php echo $action_parameters_row?>][is_list]" value="1" id="show_primary_contact"></td>
                                                <td class="text-center"><span id="prompts-<?php echo $action_parameters_row?>"><?php echo $btn_define_prompt?></span></td>
                                                <td><a href="#" class="btn btn-danger" onclick="removeIntentAction('<?php echo $action_parameters_row?>','<?php echo $action_parameter->parameter_name?>')"><i class="fa fa-icon fa-close"></i></a> | <a href="#" class="btn btn-warning" onclick="defaultValue()">Default value</a></td>
                                            </tr>
                                            <?php if (isset($action_parameter->action_prompts)) { ?>
                                                <?php $action_prompt_row = 1;?>
                                                <?php foreach ($action_parameter->action_prompts as $key=>$action_prompt) { ?>
                                                    <tr class="prompts-<?php echo $action_parameters_row?> action_prompts-<?php echo $action_parameters_row?>-<?php echo $key?>" id="intent-action-parameter-prompts-0-1" style="display:none">
                                                        <td width="1%" class="default-bg text-center">1</td>
                                                        <td><?php echo $action_prompt?><input type="hidden" name="intent[action_parameters][<?php echo $action_parameters_row?>][action_prompts][<?php echo $key?>]" value="<?php echo $action_prompt?>"></td>
                                                        <td></td>
                                                    </tr>
                                                    <?php $action_prompt_row++ ; } ?>

                                            <?php }?>
                                            <?php $action_parameters_row++; } ?>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="buttons">
                                <a href="#" class="btn btn-icon btn-post-options btn-add-parameter"><i class="fa fa-plus"></i> <?php echo _l('new_parameter')?></a>
                            </div>
                            <br/>
                            <!-- ./action and parameters-->
                            <!-- intent responses-->
                            <h4 class="bold no-margin font-medium"><?php echo _l('intent_response')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intent_response_note'); ?>"></i></h4>
                            <br/>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-comments-o"></i></span>
                                <input class="form-control" placeholder="<?php echo _l('intent_response_variant')?>" type="text" name="response">
                                    <span class="input-group-btn">
                                      <button type="button" class="btn btn-info btn-flat btn-add-response"><i class="fa fa-plus"></i></button>
                                    </span>
                            </div>
                            <?php $response_row = 0;?>
                            <div class="table">
                                <table class="table stripped-table-data table-hover table-response">
                                    <thead>
                                    <th><?php echo _l('text_response')?></th>
                                    <th><?php echo _l('options')?></th>
                                    </thead>
                                    <tbody class="response-tbody">
                                    <?php if (isset($intent_responses)) { ?>
                                        <?php foreach ($intent_responses as $intent_response) { ?>
                                            <tr id="response-<?php echo $response_row?>">
                                                <td><?php echo $intent_response['response']?>
                                                    <input value="<?php echo $intent_response['response']?>" type="hidden" name="intent[responses][<?php echo $response_row?>]">
                                                </td>
                                                <td><button type="button" class="btn btn-danger btn-icon" onclick="$('#response-'+<?php echo $response_row?>).remove()"><i class="fa fa-close"></i></button></td>
                                            </tr>
                                            <?php $response_row++; } ?>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- ./intent responses -->
                            <div class="form-group">
                                <?php $checked=((isset($intent) && $intent->is_end == 1) ? 'checked' : '');?>
                                <input type="checkbox" name="is_end" value="1" <?php echo $checked?>>
                                <label for="contact_primary">
                                    <?php echo _l('intent_end')?>
                                    <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intent_end_note'); ?>"></i>
                                </label>
                            </div>
                            <div class="form-group">
                                <?php $checked=((isset($intent) && $intent->status == 1) ? 'checked' : '');?>
                                <input type="checkbox" name="status" value="1" <?php echo $checked?>>
                                <label for="contact_primary">
                                    <?php echo _l('intent_status')?>
                                    <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intent_status_note'); ?>"></i>
                                </label>
                            </div>
                            <div class="form-group">
                                <?php $checked=((isset($intent) && $intent->is_default == 1) ? 'checked' : '');?>
                                <input type="checkbox" name="is_default" value="1" <?php echo $checked?>>
                                <label for="contact_primary">
                                    <?php echo _l('intent_is_default')?>
                                    <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intent_is_default_note'); ?>"></i>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php echo form_close(); ?>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->
    <!-- Prompts modal -->
    <div class="modal fade" id="define-prompts" tabindex="-1" style="z-index: 1100;" role="dialog" aria-labelledby="define-prompts-label" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="define-prompts-label"><?php echo _l('action_prompts_title')?> '<span class="target-action"></span>'</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="form-control" name="id" value="">
                    <input type="hidden" class="form-control" name="row" value="">
                    <div class="row">
                        <div class="col-md-4">
                            <label for="parameter_name"><?php echo _l('intents_dt_parameter_name');?></label>
                            <input type="text" class="form-control" name="parameter_name" id="parameter_name" value="" disabled>
                        </div>
                        <div class="col-md-4">
                            <label for="entity"><?php echo _l('intents_dt_entity');?></label>
                            <input type="text" class="form-control" name="entity" id="entity" value="" disabled>
                        </div>
                        <div class="col-md-4">
                            <label for="value"><?php echo _l('intents_dt_resolved_value');?></label>
                            <input type="text" class="form-control" name="value" id="value" value="" disabled>
                        </div>
                    </div>
                    <hr/>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-terminal"></i></span>
                                <input class="form-control" placeholder="<?php echo _l('action_prompt_variant')?>" type="text" name="prompt_variant">
                            <span class="input-group-btn">
                            <button type="button" class="btn btn-info btn-flat btn-add-prompt-variant"><?php echo _l('add_new')?></button>
                            </span>
                            </div>
                        </div>
                    </div>
                    <br/>
                    <div class="table">
                        <table class="table table-hover table-prompt-variant">
                            <thead>
                            <td width="1%" class="default-bg text-center"></td>
                            <th><?php echo strtoupper(_l('prompts'))?></th>
                            <th></th>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo _l('close')?></button>
                </div>
            </div>
        </div>
    </div>
    <!-- ./prompts modal-->
</section>
<script>

    var stanford_result = [];
    var user_expression = [];
    var user_expression_row = <?php echo $user_expression_row?>;
    var action_parameters = [];
    var prompt_variant_row = 1;
    var response_row = <?php echo $response_row?>;

    $('select[name=\'context_input[]\']').val(<?php echo $intent->context_input ?>); $('select[name=\'context_input[]\']').trigger('change');
    $('select[name=\'context_output[]\']').val(<?php echo $intent->context_output ?>); $('select[name=\'context_output[]\']').trigger('change');
    $('select[name=\'events[]\']').val(<?php echo $intent->events ?>); $('select[name=\'events[]\']').trigger('change');

    $( ".is_required" ).on('ifChanged',function(e) {
        var id = $(this).data("id");
        var row = $(this).data("row");
        var parameter_name = $(this).data('parameter');
        var entity = $(this).data('entity');
        var value = $(this).data('value');

        var checked = $(this).is(":checked");

        if (checked) {
            $('#prompts-' + id).html('<a href="#" class="btn btn-icon btn-post-options" data-row="'+id+'" data-parameter="'+parameter_name+'" data-entity="'+entity+'" data-value="'+value+'" data-toggle="modal" data-id="'+id+'" data-target="#define-prompts"><?php echo _l('define_prompts')?></a>');
        } else {
            $('#prompts-' + id).html('');
        }
    });

    $(function(){

        <?php if ($action_parameters) { ?>
            <?php foreach ($action_parameters as $action_parameter) { ?>
            action_parameters.push('<?php echo $action_parameter->parameter_name?>');
            <?php } ?>
        <?php } ?>

        /** Validate Intent Form*/
        _validate_form($('.intent-form'),
            {intent_name:'required'}
        );

        $('.btn-add-pattern').on('click',function(){

            var pattern = $('input[name=\'pattern\']');
            var btn_details = '';
            var has_parameters = false;

            if (pattern.val() == "")
            {
                swal("<?php echo _l('cancelled')?>", "<?php echo _l('empty_user_expression')?>", "error");
                return false;
            }

            /** get pattern entities*/
            $.ajax({
                type: 'POST',
                url: site_url + 'entities/parse_entities',
                data: "string=" + pattern.val().toString(),
                dataType: 'json',
                beforeSend: function(){
                    /** Disable add user expression button*/
                    $('.btn-add-pattern').html('<i class="fa fa-cog fa-spin"></i>');
                    $('.btn-add-pattern').attr('disabled','disabled');
                },
                complete: function(){
                    // Handle the complete event
                },
                success: function (json) {

                    if ($.isEmptyObject(json) === false){
                        has_parameters = true;
                        btn_details = '<i class="fa fa-plus btn-details" onclick="getPatternParameters(this,\''+user_expression_row+'\')"></i>&nbsp;&nbsp;';
                    }

                    /** Parse user expression*/
                    var stanford_resp = string_parser(pattern.val());

                    /** Insert pattern parameters */
                    if (stanford_resp) {

                        userExpHtml = '<tbody id="user-expression-' + user_expression_row + '">';
                        userExpHtml += '<tr>';
                        userExpHtml += '<td colspan="2">' + btn_details + pattern.val() + '<input type="hidden" name="intent[user_exp][' + user_expression_row + '][pattern]" value="' + pattern.val() + '"><input type="hidden" name="intent[user_exp][' + user_expression_row + '][stanford]" value=""></td>';
                        userExpHtml += '<td><button class="btn btn-danger btn-icon" type="button" onclick="removePattern(\'' + user_expression_row + '\');"><i class="fa fa-close"></i></td>';
                        userExpHtml += '</tr>';
                        userExpHtml += '</tbody>';

                        if (has_parameters){
                            userExpHtml += '<tbody class="" id="user-expression-child-'+user_expression_row+'" style="display : none">';
                            userExpHtml += '<tr class="alert-info">';
                            userExpHtml += '<th><?php echo strtoupper(_l('intents_dt_parameter_name'))?></th>';
                            userExpHtml += '<th><?php echo strtoupper(_l('intents_dt_entity'))?></th>';
                            userExpHtml += '<th><?php echo strtoupper(_l('intents_dt_resolved_value'))?></th>';
                            userExpHtml += '</tr>';
                            var round = 0;
                            $.each( json, function( key, value ) {
                                userExpHtml +='<tr>';
                                userExpHtml +='<td>'+key+'<input type="hidden" name="intent[user_exp][' + user_expression_row + '][parameters]['+round+'][parameter_name]" value="'+key+'"/></td>';
                                userExpHtml +='<td>@'+key+'<input type="hidden" name="intent[user_exp][' + user_expression_row + '][parameters]['+round+'][entity]" value="@'+key+'"/></td>';
                                userExpHtml +='<td>'+value+'<input type="hidden" name="intent[user_exp][' + user_expression_row + '][parameters]['+round+'][resolved_value]" value="'+value+'"/></td>';
                                userExpHtml +='</tr>';

                                if ($.inArray(key,action_parameters)==-1) {
                                    action_parameters.push(key);
                                }

                                round++;
                            });
                            userExpHtml += '</tbody>';
                        }

                        $('.table-user-expressions .userExp').after(userExpHtml);
                        $('input[name=\'intent[user_exp]['+user_expression_row+'][stanford]\']').val(JSON.stringify(stanford_resp[0]));

                        /** Insert Intent Action parameters */
                        $('.table-parameter-list tbody').html('');

                        $.each( action_parameters, function( key, value ) {

                            intentActionParams = '<tr class="action_parameters" id="intent-action-parameter-' + key + '">';
                            intentActionParams += '<td class="text-center"><input class="is_required" type="checkbox" data-parameter="'+value+'" data-entity="@'+value+'" data-value="$'+value+'" data-id="'+key+'" data-row="0" name="intent[action_parameters]['+key+'][is_required]" value="1" id="show_primary_contact"></td>';
                            intentActionParams += '<td>' + value + '<input type="hidden" name="intent[action_parameters]['+key+'][parameter_name]" value="'+value+'"></td>';
                            intentActionParams += '<td>@' + value + '<input type="hidden" name="intent[action_parameters]['+key+'][entity]" value="@'+value+'"></td>';
                            intentActionParams += '<td>$' + value + '<input type="hidden" name="intent[action_parameters]['+key+'][value]" value="$'+value+'"></td>';
                            intentActionParams += '<td class="text-center"><input type="checkbox" name="intent[action_parameters]['+key+'][is_list]" value="1" id="show_primary_contact"></td>';
                            intentActionParams += '<td class="text-center"><span id="prompts-'+key+'"></span></td>';
                            intentActionParams += '<td><a href="#" class="btn btn-danger" onclick="removeIntentAction(\''+key+'\',\''+value+'\')"><i class="fa fa-icon fa-close"></i></a> | <a href="#" class="btn btn-warning" onclick="defaultValue()">Default value</a></td>';
                            intentActionParams += '</tr>';

                            $('.table-parameter-list tbody').append(intentActionParams);

                            $('input').iCheck({
                                checkboxClass: 'icheckbox_square-blue',
                                radioClass: 'iradio_square-blue',
                                increaseArea: '20%' /* optional */
                            });

                            $( ".is_required" ).on('ifChanged',function(e) {
                                var id = $(this).data("id");
                                var row = $(this).data("row");
                                var parameter_name = $(this).data('parameter');
                                var entity = $(this).data('entity');
                                var value = $(this).data('value');

                                var checked = $(this).is(":checked");

                                if (checked) {
                                    $('#prompts-' + id).html('<a href="#" class="btn btn-icon btn-post-options" data-row="'+id+'" data-parameter="'+parameter_name+'" data-entity="'+entity+'" data-value="'+value+'" data-toggle="modal" data-id="'+id+'" data-target="#define-prompts"><?php echo _l('define_prompts')?></a>');
                                } else {
                                    $('#prompts-' + id).html('');
                                }
                            });

                        });

                        user_expression_row++;

                        /** Clean the pattern input */
                        pattern.val('');
                        /** Focus on pattern input */
                        pattern.focus();

                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    if (xhr.status != 0) {
                        alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }
            });

        });

        $('.btn-add-prompt-variant').on('click',function(){

            var prompt_variant = $('input[name=\'prompt_variant\']').val();
            var id = $('#define-prompts input[name="id"]').val();
            var row = $('#define-prompts input[name="row"]').val();

            if ($('.table-prompt-variant tbody > tr').length) {
                prompt_variant_row = $('.table-prompt-variant tbody > tr').length;
            }

            prompt_variant_row ++;

            if (prompt_variant == "")
            {
                swal("<?php echo _l('cancelled')?>", "<?php echo _l('empty_user_expression')?>", "error");
                return false;
            }

            html_1 ='<tr id="intent-action-parameter-prompts-modal-'+prompt_variant_row+'-'+row+'-'+id+'">';
            html_1 +='<td width="1%" class="default-bg text-center">'+prompt_variant_row+'</td>';
            html_1 +='<td>'+prompt_variant+'</td>';
            html_1 +='<td class="text-center"><a href="#" class="text-danger" onclick="removePrompt(\''+prompt_variant_row+'\',\''+row+'\',\''+id+'\')"><i class="fa fa-icon fa-close"></i> <?php echo _l('remove')?></a></td>';
            html_1 +='</tr>';

            $('.table-prompt-variant tbody').append(html_1);

            html_2 ='<tr class="action_prompts-'+prompt_variant_row+'-'+id+'" id="intent-action-parameter-prompts-'+prompt_variant_row+'-'+id+'" style="display:none">';
            html_2 +='<td width="1%" class="default-bg text-center">'+prompt_variant_row+'</td>';
            html_2 +='<td>'+prompt_variant+'<input type="hidden" name="intent[action_parameters]['+id+'][action_prompts]['+prompt_variant_row+']" value="'+prompt_variant+'"/></td>';
            html_2 +='<td></td>';
            html_2 +='</tr>';


            $('#intent-action-parameter-' + row + '-row-' + id).after(html_2);

            prompt_variant_row++;

            $('input[name=\'prompt_variant\']').val('');
            $('input[name=\'prompt_variant\']').focus();
        });


        $('#define-prompts').on('show.bs.modal', function(e) {

            var invoker = $(e.relatedTarget);
            /** Data related data values*/
            var id = $(invoker).data('id');
            var row = $(invoker).data('row');
            var parameter_name = $(invoker).data('parameter');
            var entity = $(invoker).data('entity');
            var value = $(invoker).data('value');

            /** Set data values*/
            $('#define-prompts input[name="parameter_name"]').val(parameter_name);
            $('#define-prompts input[name="entity"]').val(entity);
            $('#define-prompts input[name="value"]').val(value);
            $('#define-prompts input[name="id"]').val(id);
            $('#define-prompts input[name="row"]').val(row);

            $('.target-action').html(parameter_name);

            prompt_variant_row = 1;

            var total_prompts = $('.prompts-'+id).length;

            if (total_prompts) {

                $('.prompts-'+id).each(function(key,tr) {

                    html_1 ='<tr id="intent-action-parameter-prompts-modal-'+prompt_variant_row+'-'+row+'-'+id+'">';
                    html_1 +='<td width="1%" class="default-bg text-center">'+prompt_variant_row+'</td>';
                    html_1 +='<td>'+$(tr).find("td:eq(1)").text()+'</td>';
                    html_1 +='<td class="text-center"><a href="#" class="text-danger" onclick="removePrompt(\''+prompt_variant_row+'\',\''+row+'\',\''+id+'\')"><i class="fa fa-icon fa-close"></i> <?php echo _l('remove')?></a></td>';
                    html_1 +='</tr>';

                    $('.table-prompt-variant tbody').append(html_1);

                    html_2 ='<tr class="prompts-'+id+' action_prompts-'+id+'-'+prompt_variant_row+'" id="intent-action-parameter-prompts-'+id+'-'+prompt_variant_row+'" style="display:none">';
                    html_2 +='<td width="1%" class="default-bg text-center">'+prompt_variant_row+'</td>';
                    html_2 +='<td>'+$(tr).find("td:eq(1)").text()+'<input type="hidden" name="intent[action_parameters]['+id+'][action_prompts]['+prompt_variant_row+']" value="'+$(tr).find("td:eq(1)").text()+'"/></td>';
                    html_2 +='<td></td>';
                    html_2 +='</tr>';


                    $('#intent-action-parameter-' + id).after(html_2);

                    prompt_variant_row++;
                });

                $('.prompts-' + id).remove();
            }
        });

        $('#define-prompts').on('hidden.bs.modal', function () {

            var id = $('#define-prompts input[name="id"]').val();
            var row = $('#define-prompts input[name="row"]').val();

            prompt_variant_row = 1;

            $('.table-prompt-variant tbody > tr').each(function(key,tr) {

                html_2 ='<tr class="prompts-'+id+' action_prompts-'+id+'-'+prompt_variant_row+'" id="intent-action-parameter-prompts-'+id+'-'+prompt_variant_row+'" style="display:none">';
                html_2 +='<td width="1%" class="default-bg text-center">'+prompt_variant_row+'</td>';
                html_2 +='<td>'+$(tr).find("td:eq(1)").text()+'<input type="hidden" name="intent[action_parameters]['+id+'][action_prompts]['+prompt_variant_row+']" value="'+$(tr).find("td:eq(1)").text()+'"/></td>';
                html_2 +='<td></td>';
                html_2 +='</tr>';


                $('#intent-action-parameter-' + id).after(html_2);

                prompt_variant_row++;
            });

            $('.table-prompt-variant tbody').html('');
        });

        $('.btn-add-parameter').on('click',function() {

            var row = 0;
            var key = 0;

            if ($('.action_parameters').length){
                key = $('.action_parameters').length;
            }

            intentActionParams = '<tr class="action_parameters" id="intent-action-parameter-' + key + '">';
            intentActionParams += '<td class="text-center"><input class="is_required" type="checkbox" data-parameter="" data-entity="" data-value="" data-id="'+key+'" data-row="0" name="intent[action_parameters]['+key+'][is_required]" value="1" id="show_primary_contact"></td>';
            intentActionParams += '<td><input type="text" style="width: 100px" name="intent[action_parameters]['+key+'][parameter_name]" value=""></td>';
            intentActionParams += '<td><input type="text" style="width: 100px" name="intent[action_parameters]['+key+'][entity]" value=""></td>';
            intentActionParams += '<td><input type="text" style="width: 100px" name="intent[action_parameters]['+key+'][value]" value=""></td>';
            intentActionParams += '<td class="text-center"><input type="checkbox" name="intent[action_parameters]['+key+'][is_list]" value="1" id="show_primary_contact"></td>';
            intentActionParams += '<td class="text-center"><span id="prompts-'+key+'"></span></td>';
            intentActionParams += '<td><a href="#" class="btn btn-danger" onclick="removeIntentAction(\''+key+'\')"><i class="fa fa-icon fa-close"></i></a> | <a href="#" class="btn btn-warning">Default value</a></td>';
            intentActionParams += '</tr>';

            $('.table-parameter-list tbody').append(intentActionParams);

            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' /* optional */
            });

            $( ".is_required" ).on('ifChanged',function(e) {
                var id = $(this).data("id");
                var row = $(this).data("row");
                var parameter_name = $('input[name=\'intent[action_parameters]['+id+'][parameter_name]\']').val();
                var entity = $('input[name=\'intent[action_parameters]['+id+'][entity]\']').val();
                var value = $('input[name=\'intent[action_parameters]['+id+'][value]\']').val();


                var checked = $(this).is(":checked");

                if (checked) {

                    if (parameter_name == '' || entity == '' || value == '')
                    {
                        swal("<?php echo _l('cancelled')?>", "<?php echo _l('action_parameter_required')?>", "error");
                        return false;
                    }

                    $('#prompts-' + id).html('<a href="#" class="btn btn-icon btn-post-options" data-row="'+id+'" data-parameter="'+parameter_name+'" data-entity="'+entity+'" data-value="'+value+'" data-toggle="modal" data-id="'+id+'" data-target="#define-prompts"><?php echo _l('define_prompts')?></a>');
                } else {


                    $('#prompts-' + id).html('');
                }
            });

        });

        /** Add Responses*/
        $('.btn-add-response').on('click', function () {

            var response = $('input[name=\'response\']').val();

            if (response != ""){

                responseHtml = '<tr id="response-'+response_row+'">';
                responseHtml +='<td>'+response+'<input type="hidden" name="intent[responses]['+response_row+']" value="'+response+'"></td>';
                responseHtml +='<td><button class="btn btn-danger btn-icon" type="button" onclick="removeResponse(\''+response_row+'\');"><i class="fa fa-close"></i></td>';
                responseHtml +='</tr>';

                $('input[name=\'response\']').val("");
                $('input[name=\'response\']').focus();

                $('.response-tbody').append(responseHtml);

                response_row++;
            }
        });

    });

    function removeResponse(id){


        if ($.isNumeric(id))
        {
            swal({
                    title: "<?php echo _l('confirmation')?>",
                    text: "<?php echo _l('delete_confirmation')?>",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "<?php echo _l('yes_delete')?>",
                    closeOnConfirm: false
                },
                function(){
                    $('#response-'+id).remove();

                    swal("<?php echo _l('deleted')?>", "<?php echo _l('delete_success')?>", "success");
                });
        }

        return false;
    }

    function removeIntentAction(key,value)
    {
        if ($.isNumeric(key))
        {
            swal({
                    title: "<?php echo _l('confirmation')?>",
                    text: "<?php echo _l('delete_confirmation')?>",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "<?php echo _l('yes_delete')?>",
                    closeOnConfirm: false
                },
                function(){
                    $('#intent-action-parameter-'+key).remove();
                    $('.prompts-'+key).remove();

                    action_parameters.splice(value,1);

                    swal("<?php echo _l('deleted')?>", "<?php echo _l('delete_success')?>", "success");
                });
        }
    }

    function getPatternParameters(element,row){

        if ($('#user-expression-child-'+row).hasClass('active')){
            $(element).removeClass('fa-minus');
            $(element).addClass('fa-plus');
            $('#user-expression-child-'+row).hide();
            $('#user-expression-child-'+row).removeClass('active');

        } else {
            $(element).removeClass('fa-plus');
            $(element).addClass('fa-minus');
            $('#user-expression-child-'+row).show();
            $('#user-expression-child-'+row).addClass('active');
        }

    }

    function removePrompt(pr_row,row,id)
    {
        if ($.isNumeric(row) && $.isNumeric(id) && $.isNumeric(pr_row))
        {
            swal({
                    title: "<?php echo _l('confirmation')?>",
                    text: "<?php echo _l('delete_confirmation')?>",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "<?php echo _l('yes_delete')?>",
                    closeOnConfirm: false
                },
                function(){
                    $('#intent-action-parameter-prompts-modal-'+pr_row+'-'+row+'-'+id).remove();

                    swal("<?php echo _l('deleted')?>", "<?php echo _l('delete_success')?>", "success");
                });
        }

        return false;
    }

    function removePattern(row)
    {
        if ($.isNumeric(row))
        {
            swal({
                    title: "<?php echo _l('confirmation')?>",
                    text: "<?php echo _l('delete_confirmation')?>",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "<?php echo _l('yes_delete')?>",
                    closeOnConfirm: false
                },
                function(){
                    $('#user-expression-'+row).remove();
                    $('#user-expression-child-'+row).remove();

                    swal("<?php echo _l('deleted')?>", "<?php echo _l('delete_success')?>", "success");
                });
        }

        return false;
    }


    function string_parser(string)
    {
        $.ajax({
            type: 'POST',
            url: site_url + 'intents/string_parser/',
            data: "string=" + string.toString(),
            dataType: 'json',
            async: false,
            success: function (json) {

                /** Enable add user expression button*/
                $('.btn-add-pattern').text('<?php echo _l('send')?>');
                $('.btn-add-pattern').removeAttr('disabled');

                stanford_result = json;

            },
            error: function (xhr, ajaxOptions, thrownError) {
                if (xhr.status != 0) {
                    alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            }
        });

        return stanford_result;
    }
    
    function new_intent()
    {
        $('.intent-form').submit();
    }
</script>