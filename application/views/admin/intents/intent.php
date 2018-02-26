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
                            <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                            <input type="text" class="form-control" name="intent_name" id="intent_name" value="<?php echo set_value('intent_name',$intent->intent_name); ?>">
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-md-8">
                                <!-- Usersays-->
                                <h4 class="bold no-margin font-medium"><?php echo _l('usersays')?></h4>
                                <hr/>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-quote-right"></i></span>
                                    <input class="form-control" placeholder="<?php echo _l('usersays')?>" type="text" name="usersays">
                                    <span class="input-group-btn">
                                      <button type="button" class="btn btn-info btn-flat btn-add-usersay"><i class="fa fa-plus"></i></button>
                                    </span>
                                </div>
                                <?php $usersay_row = 0;
                                    $btn_detail = "";
                                    $parameter_rows = 0;
                                ?>
                                <div class="table">
                                    <table class="table stripped-table-data table-hover table-usersays">
                                        <thead>
                                            <th><?php echo _l('usersays')?></th>
                                            <th><?php echo _l('options')?></th>
                                        </thead>
                                        <tbody class="usersays-tbody">
                                        <?php if ($intentusersays) { ?>
                                            <?php foreach ($intentusersays as $key=>$intentusersay) { ?>
                                                <?php $parameters = json_decode($intentusersay['parameters']); ?>
                                                <?php if ($parameters) { ?>
                                                    <?php $btn_detail = "<i class='fa fa-plus btn-details' onclick='userSayDetails(this,".$usersay_row.")'></i>&nbsp;&nbsp;"?>
                                                <?php } ?>
                                                <tr id="usersay-<?php echo $usersay_row?>">
                                                    <td><?php echo $btn_detail ?><?php echo $intentusersay['usersay']?>
                                                        <input value="<?php echo $intentusersay['usersay']?>" type="hidden" name="usersays[<?php echo $usersay_row?>][usersay]">
                                                    </td>
                                                    <td><button type="button" class="btn btn-danger btn-icon" onclick="$('#usersay-'+<?php echo $usersay_row?>).remove()"><i class="fa fa-close"></i></button></td>
                                                </tr>
                                                <?php if ($intentusersay['parameters']) { ?>
                                                    <tr id="usersay-parameters-<?php echo $usersay_row?>" style="display:none" class="alert-info">
                                                        <th><?php echo _l('intents_parameter_name')?></th>
                                                        <th><?php echo _l('entity')?></th>
                                                        <th><?php echo _l('intents_resolved_value')?></th>
                                                    </tr>
                                                    <?php foreach ($parameters as $parameter) { ?>
                                                    <tr id="parameters-<?php echo $usersay_row?>" style="display:none">
                                                        <?php foreach ($parameter as $pkey=>$value) { ?>
                                                            <td><?php echo $value?><input value="<?php echo $value?>" type="hidden" name="parameters[<?php echo $usersay_row?>][<?php echo $parameter_rows?>][<?php echo $pkey?>]"></td>
                                                        <?php } ?>
                                                    </tr>
                                                    <?php $parameter_rows++;} ?>
                                                <?php } ?>
                                                <?php $usersay_row++; } ?>
                                        <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                                <br/>
                                <!-- /usersays -->
                                <!-- Actions -->
                                <h4 class="bold no-margin font-medium"><?php echo _l('actions')?></h4>
                                <hr/>
                                <!-- /actions -->
                                <!-- Responses -->
                                <h4 class="bold no-margin font-medium"><?php echo _l('response')?></h4>
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
<?php init_tail(); ?>
<script>
    $(function(){

        var usersay_row = <?php echo $usersay_row?>;
        var response_row = <?php echo $response_row?>;
        var parameter_rows = <?php echo $parameter_rows?>;

        /** Validate Entity Form*/
        _validate_form($('.intent-form'),
            {intent_name:'required'}
        );

        /** Add User says*/
        $('.btn-add-usersay').on('click', function () {

            var usersays = $('input[name=\'usersays\']').val();
            var btn_details = '';

            if (usersays != ""){

                $.ajax({
                    type: 'POST',
                    url: admin_url + 'intents/usersayparameters/',
                    data : "usersay="+usersays.toString(),
                    dataType: 'json',
                    success: function (json) {

                        if (json.parameters.length > 0){

                            btn_details = '<i class="fa fa-plus btn-details" onclick="userSayDetails(this,\''+usersay_row+'\')"></i>&nbsp;&nbsp;';

                        }

                        usersayHtml = '<tr id="usersay-'+usersay_row+'">';
                        usersayHtml +='<td>'+btn_details+usersays+'<input type="hidden" name="usersays['+usersay_row+'][usersay]" value="'+usersays+'"></td>';
                        usersayHtml +='<td><button class="btn btn-danger btn-icon" type="button" onclick="removeUsersay(\''+usersay_row+'\');"><i class="fa fa-close"></i></td>';
                        usersayHtml +='</tr>';

                        if (json.parameters.length > 0) {

                            usersayHtml += '<tr id="usersay-parameters-'+usersay_row+'" style="display:none" class="alert-info">';
                            usersayHtml += '<th><?php echo _l('intents_parameter_name')?></th>';
                            usersayHtml += '<th><?php echo _l('entity')?></th>';
                            usersayHtml += '<th><?php echo _l('intents_resolved_value')?></th>';
                            usersayHtml += '</tr>';

                            $.each(json.parameters, function (i, e) {
                                usersayHtml += '<tr id="parameters-'+usersay_row+'" style="display:none">';
                                $.each(this, function (k, v) {

                                    usersayHtml += '<td>' + v + '<input value="' + v + '" type="hidden" name="parameters[' + usersay_row + '][' + parameter_rows + '][' + k + ']"></td>';

                                });
                                usersayHtml += '</tr>';
                                parameter_rows++;
                            });
                        }

                        $('input[name=\'usersays\']').val("");
                        $('input[name=\'usersays\']').focus();

                        $('.usersays-tbody').append(usersayHtml);

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

    function userSayDetails(element,row){

        if ($('#usersay-parameters-'+row).hasClass('active')){
            $(element).removeClass('fa-minus');
            $(element).addClass('fa-plus');
            $('#usersay-parameters-'+row).removeClass('active');
            $('#usersay-parameters-'+row).hide();
            $('#parameters-'+row).hide();

        } else {
            $(element).removeClass('fa-plus');
            $(element).addClass('fa-minus');
            $('#usersay-parameters-'+row).show();
            $('#usersay-parameters-'+row).addClass('active');
            $('#parameters-'+row).show();
        }

    }

    function new_intent()
    {
        $('.intent-form').submit();
    }

    function removeUsersay(id){

        if (id){
            $('#usersay-'+id).remove();
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
</script>
</body>
</html>
