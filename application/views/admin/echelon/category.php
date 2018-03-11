<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body _buttons">
                        <a href="<?php echo admin_url('echelon'); ?>" class="btn btn-default mright5 test pull-left display-block">
                            <?php echo _l('back'); ?></a>
                        <a href="#" onclick="new_category()" class="btn btn-info mright5 test pull-right display-block">
                            <?php echo _l('save'); ?></a>
                    </div>
                </div>
                <div class="panel_s">
                    <div class="panel-body">
                        <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'category-form','autocomplete'=>'off')); ?>
                        <div class="form-group">
                            <label for="category"><?php echo _l('category'); ?></label>
                            <input type="text" class="form-control" name="category" id="category" value="<?php echo set_value('category',$category->category); ?>">
                        </div>
                        <button type="button" data-toggle="modal" data-target="#new-pattern" class="btn btn-info mright5 test pull-right display-block">
                            <?php echo _l('add_pattern'); ?></button>
                        <?php echo form_close(); ?>
                        <div class="clearfix"></div>
                        <br/>
                        <?php $pattern_row = 0;?>
                        <div class="table">
                            <table class="table stripped-table-data table-hover table-pattern">
                                <thead>
                                <th><?php echo _l('pattern')?></th>
                                <th><?php echo _l('options')?></th>
                                </thead>
                                <tbody>
                                <?php foreach ($echelonpatterns as $echelonpattern) { ?>
                                    <tr id="pattern-<?php echo $pattern_row?>">
                                        <td><?php echo $echelonpattern["pattern"]?></td>
                                        <td>
                                            <button class="btn btn-primary btn-icon" type="button" onclick="editPattern(<?php echo $echelonpattern["id"]?>);"><i class="fa fa-edit"></i>
                                            <button class="btn btn-danger btn-icon" type="button" onclick="removePattern(<?php echo $pattern_row?>,<?php echo $echelonpattern["id"]?>);"><i class="fa fa-close"></i>
                                        </td>
                                    </tr>
                                    <?php $pattern_row++;}?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade new-pattern" id="new-pattern" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><?php echo _l('pattern'); ?></h4>
            </div>
            <div class="modal-body">
                <form action="" id="pattern-form" class="pattern-form" autocomplete="off" enctype="multipart/form-data" method="post" accept-charset="utf-8" novalidate="novalidate">
                    <input type="hidden" name="patternid" value=""/>
                    <div class="form-group">
                        <label for="category"><?php echo _l('pattern'); ?></label>
                        <input type="text" class="form-control" name="pattern" id="pattern" value="">
                    </div>
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

                            </tbody>
                        </table>
                    </div>
                    <!-- /responses -->
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                <?php if(has_permission('echelon','','create')){ ?>
                    <button type="button" class="btn btn-info btn-add-pattern"><?php echo _l('confirm'); ?></button>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<?php init_tail(); ?>
<script>

    var response_row = 0;
    var pattern_row = <?php echo $pattern_row?>;

    $(function(){

        /** Validate Entity Form*/
        _validate_form($('.category-form'),
            {category:'required'}
        );

        /** Add Responses*/
        $('.btn-add-pattern').on('click', function (event) {

            event.preventDefault();
            var patternData = $("form#pattern-form").serialize();
            var patternid = $("#new-pattern input[name=\'patternid\']").val();

            $.ajax({
                type: 'POST',
                url: admin_url + '/echelon/add_pattern/<?php echo $category->id?>',
                data : patternData,
                dataType: 'json',
                success: function (json) {

                    $("#new-pattern").modal("hide");

                    if (patternid)
                    {
                        location.reload();
                    }

                    patternHtml = '<tr id="pattern-'+pattern_row+'">';
                    patternHtml +='<td>'+json.pattern+'</td>';
                    patternHtml +='<td><button class="btn btn-primary btn-icon" type="button" onclick="editPattern(\''+json.id+'\');"><i class="fa fa-edit"></i><button class="btn btn-danger btn-icon" type="button" onclick="removePattern(\''+pattern_row+'\',\''+json.id+'\');"><i class="fa fa-close"></i></td>';
                    patternHtml +='</tr>';

                    $('.table-pattern tbody').append(patternHtml);

                    pattern_row++;
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    if (xhr.status != 0) {
                        alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }

            });

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


        $('#new-pattern').on('hidden.bs.modal', function () {

            $('input[name=\'patternid\']').val("");
            $('input[name=\'pattern\']').val("");
            $('input[name=\'pattern\']').focus();
            $('.response-tbody').html("");
        })

    });

    function editPattern(id)
    {
        $("#new-pattern").modal("show");

        $.ajax({
            type: 'GET',
            url: admin_url + '/echelon/edit_pattern/'+id,
            dataType: 'json',
            success: function (json) {

                $("#new-pattern input[name=\'pattern\']").val(json.pattern['pattern']);
                $("#new-pattern input[name=\'patternid\']").val(id);

                $.each(json.responses, function (k, v) {
                    responseHtml = '<tr id="response-'+response_row+'">';
                    responseHtml +='<td>'+ v.response+'<input type="hidden" name="responses['+response_row+'][response]" value="'+ v.response+'"></td>';
                    responseHtml +='<td><button class="btn btn-danger btn-icon" type="button" onclick="removeResponse(\''+response_row+'\',\''+ v.id+'\');"><i class="fa fa-close"></i></td>';
                    responseHtml +='</tr>';

                    $('#new-pattern .response-tbody').append(responseHtml);

                    response_row++;

                });

            },
            error: function (xhr, ajaxOptions, thrownError) {
                if (xhr.status != 0) {
                    alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            }

        });

    }

    function removePattern(row,id){

        if (id){

            $.ajax({
                type: 'GET',
                url: admin_url + '/echelon/remove_pattern/'+id,
                success: function () {
                    $('#pattern-'+row).remove();
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    if (xhr.status != 0) {
                        alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }

            });
            return true
        }

        return false;

    }

    function removeResponse(row,id=""){

        if (id){

            $.ajax({
                type: 'GET',
                url: admin_url + '/echelon/remove_response/'+id,
                dataType: 'json',
                success: function (json) {
                    $('#response-'+row).remove();
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    if (xhr.status != 0) {
                        alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }

            });
            return true
        }

        $('#response-'+row).remove();

        return false;
    }

    function new_category()
    {
        $('.category-form').submit();
    }

</script>
</body>
</html>
