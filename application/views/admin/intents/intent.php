<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body _buttons">
                        <a href="<?php echo admin_url('intents'); ?>" class="btn btn-default mright5 test pull-left display-block">
                            <?php echo _l('go_back'); ?></a>
                        <a href="#" onclick="new_intent()" class="btn btn-info mright5 test pull-right display-block">
                            <?php echo _l('submit'); ?></a>
                    </div>
                </div>
                <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'intent-form','autocomplete'=>'off')); ?>
                <input type="hidden" name="is_admin" value="<?php echo is_admin()?>"/>
                <input type="hidden" name="agent_id" value="0"/>
                <div class="row">
                    <div class="col-md-8">
                        <div class="panel_s">
                            <div class="panel-body">
                                <input type="hidden" name="is_admin" value="<?php echo is_admin()?>"/>
                                <input type="hidden" name="agent_id" value="0"/>
                                <div class="form-group">
                                    <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                                    <input type="text" class="form-control" name="intent_name" id="intent_name" value="<?php echo set_value('intent_name',$intent->intent_name); ?>">
                                </div>
                                <h4 class="bold no-margin font-medium"><?php echo _l('intent_context')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intent_context_note'); ?>"></i></h4>
                                <div class="form-group">
                                    <input name="context_input[]" class="form-control" id="context_input">
                                </div>
                                <div class="form-group">
                                    <input name="context_output[]" class="form-control" id="context_output">
                                </div>
                                <hr/>
                                <h4 class="bold no-margin font-medium"><?php echo _l('intent_event')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('intent_event_note'); ?>"></i></h4>
                                <div class="form-group">
                                    <input name="events[]" class="form-control" id="events">
                                </div>
                                <hr/>
                                <!-- training phrases-->
                                <h4 class="bold no-margin font-medium"><?php echo _l('training_phrases')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('training_phrases_note'); ?>"></i></h4>
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
                                    </table>
                                </div>
                                <!-- ./training phrases-->
                                <!-- action and parameters -->
                                <h4 class="bold no-margin font-medium"><?php echo _l('actions_parameters')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('actions_parameters_note'); ?>"></i></h4>
                                <div class="form-group">
                                    <?php $value = (isset($intent) ? $intent->action : "")?>
                                    <input type="text" name="action" class="form-control" value="<?php echo $value?>" placeholder="<?php echo _l('action_name')?>">
                                </div>
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
                                        </tbody>
                                    </table>
                                </div>
                                <!-- ./action and parameters-->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel_s">
                            <div class="panel-body"></div>
                        </div>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>
<?php init_tail(); ?>
<script>

    var available_contexts = [];
    var available_events = [];
    var events = [];
    var context_input = [];
    var context_output = [];
    var stanford_result = [];
    var user_expression = [];
    var user_expression_row = '<?php echo $user_expression_row?>';
    var action_parameters = [];

    $(function(){


        available_contexts = <?php echo json_encode($contexts)?>;
        available_events = <?php echo json_encode($events)?>;

        $("#context_input").tagit({
            availableTags: available_contexts,
            allowSpaces : true,
            placeholderText: '<?php echo _l("context_input")?>'
        });

        $("#context_output").tagit({
            availableTags: available_contexts,
            allowSpaces : true,
            placeholderText: '<?php echo _l("context_output")?>'
        });

        $("#events").tagit({
            availableTags: available_events,
            allowSpaces : true,
            placeholderText: '<?php echo _l("add_event")?>'
        });

        context_input = <?php echo $intent->context_input?>;

        $.each( context_input, function( key, value ) {
            $("#context_input").tagit("createTag", value);
        });

        context_output = <?php echo $intent->context_output?>;

        $.each( context_output, function( key, value ) {
            $("#context_output").tagit("createTag", value);
        });

        events = <?php echo $intent->events?>;

        $.each( events, function( key, value ) {
            $("#events").tagit("createTag", value);
        });

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
                url: admin_url + 'entities/parse_entities',
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
                        userExpHtml += '<td colspan="2">' + btn_details + pattern.val() + '<input type="hidden" name="user_exp[' + user_expression_row + '][pattern]" value="' + pattern.val() + '"><input type="hidden" name="user_exp[' + user_expression_row + '][stanford]" value=""></td>';
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
                                userExpHtml +='<td>'+key+'<input type="hidden" name="user_exp[' + user_expression_row + '][parameters]['+round+'][parameter_name]" value="'+key+'"/></td>';
                                userExpHtml +='<td>@'+key+'<input type="hidden" name="user_exp[' + user_expression_row + '][parameters]['+round+'][entity]" value="@'+key+'"/></td>';
                                userExpHtml +='<td>'+value+'<input type="hidden" name="user_exp[' + user_expression_row + '][parameters]['+round+'][resolved_value]" value="'+value+'"/></td>';
                                userExpHtml +='</tr>';

                                if ($.inArray(key,action_parameters)==-1) {
                                    action_parameters.push(key);
                                }

                                round++;
                            });
                            userExpHtml += '</tbody>';
                        }

                        $('.table-user-expressions .userExp').after(userExpHtml);
                        $('input[name=\'user_exp['+user_expression_row+'][stanford]\']').val(JSON.stringify(stanford_resp[0]));

                        /** Insert Intent Action parameters */
                        $('.table-parameter-list tbody').html('');

                        $.each( action_parameters, function( key, value ) {

                                intentActionParams = '<tr id="intent-action-parameter-' + user_expression_row + '-row-' + key + '">';
                                intentActionParams += '<td><input class="is_required" type="checkbox" data-id="'+key+'" name="user_exp[' + user_expression_row + '][action_parameters]['+key+'][is_required]" value="1" id="show_primary_contact"></td>';
                                intentActionParams += '<td>' + value + '<input type="hidden" name="user_exp[' + user_expression_row + '][action_parameters]['+key+'][parameter_name]" value="'+value+'"></td>';
                                intentActionParams += '<td>@' + value + '<input type="hidden" name="user_exp[' + user_expression_row + '][action_parameters]['+key+'][entity]" value="@'+value+'"></td>';
                                intentActionParams += '<td>$' + value + '<input type="hidden" name="user_exp[' + user_expression_row + '][action_parameters]['+key+'][value]" value="$'+value+'"></td>';
                                intentActionParams += '<td><input type="checkbox" name="user_exp[' + user_expression_row + '][action_parameters]['+key+'][is_list]" value="1" id="show_primary_contact"></td>';
                                intentActionParams += '<td><span id="prompts-'+key+'"></span><input type="hidden" name="user_exp[' + user_expression_row + '][action_parameters]['+key+'][prompts][]" value=""></td>';
                                intentActionParams += '</tr>';

                            $('.table-parameter-list tbody').append(intentActionParams);

                            $('input').iCheck({
                                checkboxClass: 'icheckbox_square-blue',
                                radioClass: 'iradio_square-blue',
                                increaseArea: '20%' /* optional */
                            });

                            $( ".is_required" ).on('ifChanged',function() {
                                var id = $(this).data("id");
                                var checked = $(this).is(":checked");

                                if (checked) {
                                    $('#prompts-' + id).html('prompt here...');
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

    });

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
            url: admin_url + 'intents/string_parser/',
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
</body>
</html>