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
                                <select name="contexts" class="form-control select2" multiple="multiple" data-placeholder="Select context"
                                        style="width: 100%;">
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
                                    <span class="input-group-addon"><i class="fa fa-comment-o"></i></span>
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
                                    <div class="table">
                                        <table class="table table-responsive table-hover action_table">
                                            <thead class="alert-info" style="font-weight: bold">
                                                <th class="text-center">REQUIRED</th>
                                                <th>PARAMETER NAME</th>
                                                <th>ENTITY</th>
                                                <th>VALUE</th>
                                                <th class="text_center">IS LIST</th>
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
                                                    <tr id="action-<?php echo $key?>">
                                                        <td class="text-center"><input type="checkbox" value="1" name="actions[<?php echo $key?>][is_required]" <?php echo ($action['is_required'] ? "checked" : "")?>></td>
                                                        <td data-key="parameter_name"><?php echo $parameter->parameter_name?><input value="<?php echo $parameter->parameter_name?>" type="hidden" name="actions[<?php echo $key?>][parameter_name]"></td>
                                                        <td><?php echo $parameter->entity?><input value="<?php echo $parameter->entity?>" type="hidden" name="actions[<?php echo $key?>][entity]"></td>
                                                        <td><?php echo $action['value']?><input value="<?php echo $action['value']?>" type="hidden" name="actions[<?php echo $key?>][resolved_value]"></td>
                                                        <td class="text-center"><input type="checkbox" value="1" name="actions[<?php echo $key?>][is_list]" <?php echo ($action['is_list'] ? "checked" : "")?>></td>
                                                        <td><div id="prompt"></div></td>
                                                        <td><button type="button" class="btn btn-danger btn-icon" onclick="$('#action-'+<?php echo $key?>).remove()"><i class="fa fa-close"></i></button> </td>
                                                    </tr>
                                                <?php } ?>
                                                </tbody>
                                        </table>
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
                                <select name="contexts" class="form-control select2" multiple="multiple" data-placeholder="Select context"
                                        style="width: 100%;">
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /,response -->
            <?php echo form_close(); ?>
        </div>
    </div>
</section>
<script>
    var rowvalues = <?php echo $rowvalues?>;
    var rows = <?php echo $rows?>;

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
                    html = '<tr id="action-'+key+'">';
                    html += '<td class="text-center">';
                    html += '<input type="checkbox" value="1" name="actions['+key+'][is_required]">';
                    html +='</td>';
                    $.each(this, function (index, value) {

                        if (index == 'resolved_value'){
                            var varvalue = '$'+actions[key].parameter_name;
                        } else {
                            var varvalue = value;
                        }
                        html += '<td>' + varvalue + '<input value="' + varvalue + '" type="hidden" name="actions['+key+'][' + index + ']"></td>';
                    });
                    html += '<td class="text-center">';
                    html += '<input type="checkbox" value="1" name="actions['+key+'][is_list]">';
                    html +='</td>';
                    html += '<td>';
                    html += '<td><div id="prompt"></div></td>';
                    html += '</td>';
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
</script>