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
                                      <button type="button" class="btn btn-info btn-add-pattern"><i class="fa fa-plus"></i></button>
                                    </span>
                                </div>
                                <?php
                                    $user_expression_row = 0;
                                ?>
                                <div class="table">
                                    <table class="table stripped-table-data table-hover table-user-expressions">
                                        <thead>
                                            <th colspan="2"><?php echo _l('training_phrases')?></th>
                                            <th><?php echo _l('options')?></th>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- ./training phrases-->
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
            var btn_class = '';

            /** get pattern entities*/
            $.ajax({
                type: 'POST',
                url: admin_url + 'entities/parse_entities',
                data: "string=" + pattern.val().toString(),
                dataType: 'json',
                success: function (json) {

                    /** Parse user expression*/
                    string_parser(pattern.val());

                    userExpHtml = '<tr id="user-expression-'+user_expression_row+'">';
                    userExpHtml +='<td>'+pattern.val()+'</td>';
                    userExpHtml +='<td></td>';
                    userExpHtml +='</tr>';

                    $('.table-user-expressions tbody').append(userExpHtml);
                    user_expression_row++;

                    /** Clean the pattern input */
                    pattern.val('');
                    /** Focus on pattern input */
                    pattern.focus();
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    if (xhr.status != 0) {
                        alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }
            });
        });
    });

    function string_parser(string)
    {
        $.ajax({
            type: 'POST',
            url: admin_url + 'intents/string_parser/',
            data: "string=" + string.toString(),
            dataType: 'json',
            success: function (json) {
                console.log(json[0]);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                if (xhr.status != 0) {
                    alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            }
        });

    }

    function new_intent()
    {
        $('.intent-form').submit();
    }
</script>
</body>
</html>