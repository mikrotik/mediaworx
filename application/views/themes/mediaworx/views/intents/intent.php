<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Intents
        <small>Version 2.0</small>
    </h1>
</section>
<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-address-card-o"></i> Intent List</h3>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-info pull-right" onclick="$('#intent-form').submit();"><?php echo _l('save'); ?></button>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <?php
            echo form_open_multipart($this->uri->uri_string(),array('id'=>'intent-form','class'=>'_intent-form'));
            ?>
            <div class="row">
                <div class="col-md-12">
                    <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                    <input type="text" class="form-control" name="intent_name" id="intent_name" value="<?php echo set_value('intent_name',$intent->intent_name); ?>">
                    <?php echo form_error('intent_name'); ?>
                </div>
            </div>
            <!-- context-->
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Contexts</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <select name="context[]" class="form-control select2" multiple="multiple" data-placeholder="Select context"
                                        style="width: 100%;">
                                    <?php if ($intents) { ?>
                                        <?php foreach ($intents as $int) { ?>
                                        <option value="<?php echo $int['intent_name']?>-followup"><?php echo $int['intent_name']?>-followup</option>
                                        <?php } ?>
                                    <?php } ?>
                                    <?php foreach ($followups as $followup) { ?>
                                        <option value="<?php echo $followup['intent_name']?>-followup"><?php echo $followup['intent_name']?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /,context -->
            <?php if (!$intent->is_default) { ?>
            <!-- usersays-->
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">User says</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-quote-right"></i></span>
                                    <input class="form-control" placeholder="Usersays" type="text" name="usersays">
                                    <span class="input-group-btn">
                                      <button type="button" class="btn btn-info btn-flat btn-add"><i class="fa fa-plus"></i></button>
                                    </span>
                                </div>
                            </div>
                            <?php $rowvalues = 0?>
                            <?php $rows = 0?>

                            <div class="table">
                                <table class="table table-hover table-condensed tblusersays">
                                    <thead>
                                    <tr>
                                        <th>Usersays</th>
                                        <th>Options</th>
                                    </tr>
                                    </thead>
                                    <?php foreach ($intentusersays as $intentusersay) { ?>
                                        <tbody id="usersays-<?php echo $rowvalues?>">
                                        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-<?php echo $rowvalues?>" aria-expanded="false" aria-controls="group-of-rows-<?php echo $rowvalues?>">
                                            <td onclick="details('<?php echo $rowvalues?>')"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $intentusersay['usersay']?>
                                                <input name="intent[<?php echo $rowvalues?>][usersay]" value="<?php echo $intentusersay['usersay']?>" type="hidden"></td>
                                            <td class=""><button class="btn btn-danger btn-icon" type="button" onclick="removeValues('<?php echo $rowvalues?>');"><i class="fa fa-minus-square-o"></i> Remove</button>
                                            </td>
                                        </tr>
                                        </tbody>

                                        <?php if (getUsersaysParameters($intentusersay['id'])) { ?>
                                            <tbody id="group-of-rows-<?php echo $rowvalues?>" class="collapse">
                                            <tr class="alert-info" style="font-weight: bold">
                                                <th>PARAMETER NAME</th>
                                                <th>ENTITY</th>
                                                <th>RESOLVED VALUE</th>
                                            </tr>
                                            <?php foreach (getUsersaysParameters($intentusersay['id']) as $key=>$parameter) { ?>
                                                <tr>
                                                    <td><?php echo $parameter['parameter_name']?><input value="<?php echo $parameter['parameter_name']?>" name="parameters[<?php echo $rowvalues?>][<?php echo $rows?>][parameter_name]" type="hidden"></td>
                                                    <td><?php echo $parameter['entity']?><input value="<?php echo $parameter['entity']?>" name="parameters[<?php echo $rowvalues?>][<?php echo $rows?>][entity]" type="hidden"></td>
                                                    <td><?php echo $parameter['resolved_value']?><input value=" <?php echo $parameter['resolved_value']?> " name="parameters[<?php echo $rowvalues?>][<?php echo $rows?>][resolved_value]" type="hidden"></td>
                                                </tr>
                                            <?php $rows++; }?>
                                            </tbody>
                                        <?php } ?>
                                    <?php $rowvalues++; }?>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /,usersays -->
            <?php } ?>
            <!-- events-->
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Events</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <select name="contexts" class="form-control select2" multiple="multiple" data-placeholder="Select context"
                                        style="width: 100%;">
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /,events -->
            <!-- actions-->
            <script>
                //creating new array
                var actions = new Array();
            </script>
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Actions</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-group">
                                    <?php $value = (isset($intent) ? $intent->action : "")?>
                                    <input type="text" name="action" class="form-control" value="<?php echo $value?>" placeholder="Intent action">
                                    <?php echo form_error('action'); ?>
                                    <br/>
                                    <div class="table">
                                        <table class="table table-responsive table-hover action_table">
                                            <thead class="alert-info" style="font-weight: bold">
                                                <th class="text-center">REQUIRED</th>
                                                <th>PARAMETER NAME</th>
                                                <th>ENTITY</th>
                                                <th>VALUE</th>
                                                <th class="text-center">IS LIST</th>
                                                <th>PROMPTS</th>
                                                <th></th>
                                            </thead>
                                                <tbody>
                                                <?php $actionData = array()?>
                                                <?php foreach (getIntentActions($intent->action) as $key=>$action) { ?>
                                                    <?php
                                                    $parameter = getParametersByName($action['value']);


                                                    $actionData = array(
                                                        'parameter_name'=>$parameter->parameter_name,
                                                        'entity'=>$parameter->entity,
                                                        'resolved_value'=>$parameter->parameter_name,
                                                    );
                                                    ?>
                                                    <?php if ($actionData) { ?>
                                                    <script>
                                                        actions.push(<?php echo json_encode($actionData)?>);
                                                    </script>
                                                <?php } ?>
                                                    <tr id="action-<?php echo $key?>" role="<?php echo $action['id']?>">
                                                        <td class="text-center"><input type="checkbox" class="is_required" id="<?php echo $key?>" value="1" name="actions[<?php echo $key?>][is_required]" <?php echo ($action['is_required'] ? "checked" : "")?>></td>
                                                        <td data-key="parameter_name"><?php echo $parameter->parameter_name?><input value="<?php echo $parameter->parameter_name?>" type="hidden" name="actions[<?php echo $key?>][parameter_name]"></td>
                                                        <td><?php echo $parameter->entity?><input value="<?php echo $parameter->entity?>" type="hidden" name="actions[<?php echo $key?>][entity]"></td>
                                                        <td><?php echo $action['value']?><input value="<?php echo $action['value']?>" type="hidden" name="actions[<?php echo $key?>][resolved_value]"></td>
                                                        <td class="text-center"><input type="checkbox" value="1" name="actions[<?php echo $key?>][is_list]" <?php echo ($action['is_list'] ? "checked" : "")?>></td>
                                                        <td><div id="prompt-<?php echo $key?>"><?php echo ($action['is_required'] ? "<button type='button' class='btn btn-link' data-parameter='".$parameter->parameter_name."' data-entity='".$parameter->entity."' data-value='".$action['value']."' data-id='".$action['id']."' data-role = '".$key."' data-toggle='modal' data-target='#promptModal'>Define prompts...</button>" : "...")?></div></td>
                                                        <td><button type="button" class="btn btn-danger btn-icon" onclick="$('#action-'+<?php echo $key?>).remove()"><i class="fa fa-close"></i></button> </td>
                                                    </tr>
                                                    <?php foreach (getActionPrompts($action['id']) as $pkey=>$prompt) { ?>
                                                        <tr id="prompt-<?php echo $action['id']?>-<?php echo $pkey?>" style="display:none">
                                                            <td colspan="7">prompt-<?php echo $action['id']?>-<?php echo $pkey?><input type="hidden" name="prompts[<?php echo $parameter->parameter_name?>][]" value="<?php echo $prompt['prompt']?>"></td>
                                                        </tr>
                                                    <?php } ?>
                                                <?php } ?>
                                                </tbody>
                                        </table>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /,actions -->
            <!-- response-->
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Response</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-comments-o"></i></span>
                                    <input class="form-control" placeholder="Text response" type="text" name="response">
                                    <span class="input-group-btn">
                                      <button type="button" class="btn btn-info btn-flat btn-add-response"><i class="fa fa-plus"></i></button>
                                    </span>
                                </div>
                                <br/>
                                <?php $responserow = 0;?>
                                <div class="table">
                                    <table class="table table-responsive table-hover response_table">
                                        <thead class="alert-info" style="font-weight: bold">
                                        <th>Text Response</th>
                                        <th></th>
                                        </thead>
                                        <tbody>
                                        <?php if ($intentresponses) { ?>
                                            <?php foreach ($intentresponses as $intentresponse) { ?>
                                                    <tr id="response-<?php echo $responserow?>">
                                                        <td><?php echo $intentresponse['response']?>
                                                            <input value="<?php echo $intentresponse['response']?>" type="hidden" name="textresponse[<?php echo $responserow?>]">
                                                        </td>
                                                        <td><button type="button" class="btn btn-danger btn-icon" onclick="$('#response-'+<?php echo $responserow?>).remove()"><i class="fa fa-close"></i></button></td>
                                                    </tr>
                                            <?php $responserow++; } ?>
                                        <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /,response -->
            <!-- Modal -->
            <div class="modal fade" id="promptModal" tabindex="-1" role="dialog" aria-labelledby="promptModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="promptModalLabel">Prompts for '<span class="target-action">delivery-pickup</span>'</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <?php $session = $this->session->get_userdata(); ?>
                                <input type="hidden" name="id" value=""/>
                                <input type="hidden" name="actionid" value=""/>
                                <input type="hidden" name="agentid" value="<?php echo $session['wt_agent']?>"/>
                                <input type="hidden" name="userid" value="<?php echo get_client_user_id()?>"/>
                                <div class="col-md-4">
                                    <label for="parameter_name">NAME</label>
                                    <input type="text" class="form-control" name="parameter_name" id="parameter_name" value="" disabled>
                                </div>
                                <div class="col-md-4">
                                    <label for="entity">ENTITY</label>
                                    <input type="text" class="form-control" name="entity" id="entity" value="" disabled>
                                </div>
                                <div class="col-md-4">
                                    <label for="value">VALUE</label>
                                    <input type="text" class="form-control" name="value" id="value" value="" disabled>
                                </div>
                            </div>
                            <br/>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-terminal"></i></span>
                                    <input class="form-control" placeholder="Enter a prompt variant" type="text" name="prompt">
                        <span class="input-group-btn">
                          <button type="button" class="btn btn-info btn-flat btn-add-prompt"><i class="fa fa-plus"></i></button>
                        </span>
                                </div>
                            </div>
                            <br/>
                            <div class="table">
                                <table class="table table-hover tblprompt">
                                    <thead>
                                    <th>PROMPTS</th>
                                    <th></th>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</section>

<?php $contexts = explode(',',$intent->context);

foreach ($contexts as $context){
    $contextArr[] = "'".$context."'";
}

$selectContextArr = implode(',',$contextArr);

?>

<script>

    $(function(){

        $('select[name=\'context[]\']').val([<?php echo $selectContextArr ?>]); $('select[name=\'context[]\']').trigger('change');

        $( ".is_required" ).on('ifChanged',function() {

            var chckValue = $(this).iCheck('update')[0].checked;
            var tr = $(this).closest('tr');

            var parameter_name = tr.children().eq(1).text();
            var entity = tr.children().eq(2).text();
            var value = tr.children().eq(3).text();
            var trid = $(this).closest('tr').attr('id');
            var role = trid.split('-');
            var actionid = $(this).closest('tr').attr('role');


            if (chckValue === false) {
                $('#prompt-'+this.id).html('...');
            } else {
                $('#prompt-'+this.id).html('<button type="button" class="btn btn-link btn-icon" data-toggle="modal" data-target="#promptModal" data-parameter="'+parameter_name+'" data-entity="'+entity+'" data-value="'+value+'" data-id="'+actionid+'" data-role = "'+role[1]+'">Define prompts...</button>');
            }
        });

        $('#promptModal').on('show.bs.modal', function(e) {
            
            var invoker = $(e.relatedTarget);
            var actionid = $(invoker).data('id');
            var parameter_name = $(invoker).data('parameter');
            var entity = $(invoker).data('entity');
            var value = $(invoker).data('value');
            var role = $(invoker).data('role');

            $('#promptModal input[name="parameter_name"]').val(parameter_name);
            $('#promptModal input[name="entity"]').val(entity);
            $('#promptModal input[name="value"]').val(value);
            $('#promptModal input[name="id"]').val(role);
            $('#promptModal input[name="actionid"]').val(actionid);

            $('.target-action').html(parameter_name);

            $.ajax({
                type: 'GET',
                url: site_url + 'intents/getactionprompts/'+actionid,
                dataType: 'json',
                success: function (json) {

                    $.each(json, function (i, e) {

                        html ='<tr>';
                        html +='<td>'+ e.prompt+'<input type="hidden" name="prompts['+parameter_name+'][]" value="'+ e.prompt+'"></td>';
                        html +='<td><button type="button" class="btn btn-danger btn-icon" onclick="$(this).closest(\'tr\').remove();removePrompt(\''+ actionid+'\',\''+ i+'\',\''+ e.id+'\');"><i class="fa fa-minus-square-o"></i></button></td>';
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
            window.location.reload();

        });

        $('.btn-add-prompt').on('click',function(){

            var prompt = $('input[name=\'prompt\']').val();
            var value = $('#promptModal input[name="parameter_name"]').val();
            var id = $('#promptModal input[name="id"]').val();
            var actionid = $('#promptModal input[name="actionid"]').val();
            var agentid = $('#promptModal input[name="agentid"]').val();
            var userid = $('#promptModal input[name="userid"]').val();

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

            var data = "agentid="+agentid+"&userid="+userid+"&actionid="+actionid+"&intentid=<?php echo $intent->id?>&prompt="+prompt;

            $.ajax({
                type: 'POST',
                url: site_url + 'intents/updateprompts',
                data : data,
                dataType: 'json',
                success: function (json) {
                    $('#prompt-'+ actionid).remove();
                }
            });

            return false;


        });
    });


    var rowvalues = <?php echo $rowvalues?>;
    var rows = <?php echo $rows?>;
    var responserows = <?php echo $responserow?>;

    $('.btn-add').on('click', function () {
        var usersays = $('input[name=\'usersays\']').val();

        if (usersays != '') {

            $.ajax({
                type: 'POST',
                url: site_url + 'intents/addusersay/',
                data : "speech="+usersays.toString(),
                dataType: 'json',
                success: function (json) {

                    html = '<tbody id="usersays-'+rowvalues+'" >';
                    html += '<tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-'+rowvalues+'" aria-expanded="false" aria-controls="group-of-rows-'+rowvalues+'">';
                    html += '<td onclick="details(\''+rowvalues+'\')"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;' + usersays + '<input type="hidden" name="intent['+rowvalues+'][usersay]" value="'+usersays+'"></td>';
                    html += '<td class=""><button class="btn btn-danger btn-icon" type="button" onclick="removeValues(\''+rowvalues+'\');"><i class="fa fa-minus-square-o"></i> Remove</td>';
                    html += '</tr>';
                    html += '</tbody>';
                    html += '<tbody id="group-of-rows-' + rowvalues + '" class="collapse">';
                    html += '<tr>';
                    html += '<th>PARAMETER NAME</th>';
                    html += '<th>ENTITY</th>';
                    html += '<th>RESOLVED VALUE</th>';
                    html += '</tr>';

                    $.each(json.parameters, function (i, e) {
                        html += '<tr>';
                        $.each(this, function (k, v) {

                            html += '<td>' + v + '<input value="' + v + '" type="hidden" name="parameters[' + rowvalues + '][' + rows + '][' + k + ']"></td>';

                        });
                        html += '</tr>';
                        rows++;
                    });
                    html += '</tbody>';

                    $('.tblusersays thead').after(html);
                    $('input[name=\'usersays\']').val('');
                    rowvalues++;

                    addAction(json.parameters);

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    if (xhr.status != 0) {
                        alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }

            });

            return true;
        }

        return false;
    });

    function removePrompt(actionid,id,promptid){

        $.ajax({
            type: 'GET',
            url: site_url + 'intents/deleteprompt/'+promptid,
            dataType: 'json',
            success: function (json) {

            }
        });

        return false;
    }



    function details(id){

        if ($('#usersays-parameters-'+id).hasClass('active')){
            $('#usersays-parameters-'+id).removeClass('active');
            $('#usersays-parameters-'+id).hide();
        } else {
            $('#usersays-parameters').hide();
            $('#usersays-parameters-'+id).show();
            $('#usersays-parameters-'+id).addClass('active');
        }
    }

    function removeValues(id){

        if (id){
            $('#usersays-'+id).remove();
            $('#group-of-rows-'+id).remove();
            return true
        }

        return false;

    }

    function addAction(parameters){
        var key = $( ".action_table tbody tr" ).length;

            $.each(parameters, function (i, e) {

                var matchingItems = $.grep(actions, function (item) {
                    return item.parameter_name === e.parameter_name;
                });
                if (matchingItems.length === 0){
                    actions.push(e);
                    key++;
                    html = '<tr id="action-'+key+'">';
                    html += '<td class="text-center">';
                    html += '<input type="checkbox" value="1" name="actions['+key+'][is_required]">';
                    html +='</td>';
                    $.each(this, function (index, value) {

                        if (index == 'resolved_value'){
                            var varvalue = '$'+actions[i].parameter_name;
                        } else {
                            var varvalue = value;
                        }
                        html += '<td>' + varvalue + '<input value="' + varvalue + '" type="hidden" name="actions['+key+'][' + index + ']"></td>';
                    });
                    html += '<td class="text-center">';
                    html += '<input type="checkbox" value="1" name="actions['+key+'][is_list]">';
                    html +='</td>';
                    html += '<td><div id="prompt"></div></td>';
                    html += '<td><button type="button" class="btn btn-danger btn-icon" onclick="$(\'#action-'+key+'\').remove()"><i class="fa fa-close"></i></button></td>';
                    html += '</tr>';

                    $('.action_table tbody').append(html);
                    key++;

                    console.log(actions);

                    $('input').iCheck({
                        checkboxClass: 'icheckbox_square-blue',
                        radioClass: 'iradio_square-blue',
                        increaseArea: '20%' /* optional */
                    });
                }
            });

    }

    $('.btn-add-response').on('click', function () {

        var response = $('input[name=\'response\']').val();

        html = '<tr id="response-'+responserows+'">';
        html +='<td>'+response+'<input value="' + response + '" type="hidden" name="textresponse['+responserows+']"></td>';
        html +='<td><button type="button" class="btn btn-danger btn-icon" onclick="$(\'#response-'+responserows+'\').remove()"><i class="fa fa-close"></i></button></td>';
        html +='</tr>';

        $('.response_table tbody').append(html);
        responserows++;

        $('input[name=\'response\']').val('');
    });
</script>