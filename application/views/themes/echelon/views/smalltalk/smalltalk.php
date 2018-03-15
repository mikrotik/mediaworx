<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><?php if (isset($title)){ echo $title; } ?></h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-info pull-right" onclick="$('#small-talk-form').submit();"><?php echo _l('save'); ?></button>
            </div>
        </div>
        <div class="box-body">
            <?php
            echo form_open_multipart($this->uri->uri_string(),array('id'=>'small-talk-form','class'=>'_entity-form'));
            ?>
            <div class="row">
                <div class="col-md-12">
                    <label for="entity_name"><?php echo _l('small_talk_name'); ?></label>
                    <input type="text" class="form-control" name="small_talk_name" id="small_talk_name" value="<?php echo set_value('small_talk_name',$small_talk->small_talk_name); ?>">
                    <?php echo form_error('small_talk_name'); ?>
                    <br/>
                    <h4 class="bold no-margin font-medium"><?php echo _l('actions_parameters')?> <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('actions_parameters_help'); ?>"></i></h4>
                    <hr/>
                    <div class="form-group">
                        <?php $value = (isset($small_talk) ? $small_talk->action : "")?>
                        <input type="text" name="action" class="form-control" value="<?php echo $value?>" placeholder="<?php echo _l('actions_parameters')?>">
                    </div>
                </div>
            </div>
            <br/>
            <div class="clearfix"></div>
            <div class="col-md-5 form-group">
                <input type="text" class="form-control" placeholder="<?php echo _l('small_talk_question');?>" name="pattern" id="pattern" value="">
            </div>
            <div class="col-md-5 form-group">
                <input type="text" class="form-control bootstrap-tagsinput" placeholder="<?php echo _l('small_talk_answer');?>" name="response" id="response" value="" data-role="tagsinput">
            </div>
            <div class="col-md-2 buttons">
                <button type="button" class="btn btn-info pull-right" id="btnadd-dialog"><?php echo _l('add'); ?></button>
            </div>
            <div class="clearfix"></div>
            <div class="table">
                <table class="table stripped-table-data dialog">
                    <thead>
                    <th><?php echo _l('small_talk_question');?></th>
                    <th><?php echo _l('small_talk_answer');?></th>
                    <th><?php echo _l('options');?></th>
                    </thead>
                    <?php $dialog_row = 0?>
                    <tbody>
                    <?php if ($small_talk_references) {?>
                        <?php foreach ($small_talk_references as $small_talk_reference) { ?>
                            <tr id="dialog-<?php echo $dialog_row?>">
                                <td><?php echo $small_talk_reference['pattern']?>
                                    <input type="hidden" name="dialog[<?php echo $dialog_row?>][pattern]" value="<?php echo $small_talk_reference['pattern']?>">
                                </td>
                                <td><?php echo $small_talk_reference['response']?>
                                    <input type="hidden" name="dialog[<?php echo $dialog_row?>][response]" value="<?php echo $small_talk_reference['response']?>">
                                </td>
                                <td><button class="btn btn-info btn-icon btnedit-values" type="button" onclick="editDialog('<?php echo $dialog_row?>');" id="btnedit-values"><i class="fa fa-edit"></i> Edit </button> <button class="btn btn-danger btn-icon btnremove-values" type="button" onclick="removeDialog('<?php echo $dialog_row?>'); " id="btnremove-values"><i class="fa fa-minus-square-o"></i> Remove</td>
                            </tr>
                            <?php $dialog_row++;} ?>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
            <?php echo form_close(); ?>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->

</section>
<script>
    $(function(){

        var dialog_row = <?php echo $dialog_row?>;

        $('#btnadd-dialog').on('click', function () {

            var question = $('input[name=\'pattern\']').val();
            var answer = $('input[name=\'response\']').val();

            $('.btnedit-values').removeAttr('disabled');
            $('.btnremove-values').removeAttr('disabled');

            if (question != "") {

                html = "<tr id='dialog-" + dialog_row + "'>";
                html += '<td>' + question + '<input type="hidden" name="dialog[' + dialog_row + '][pattern]" value="' + question + '"></td>';
                html += '<td>' + answer + '<input type="hidden" name="dialog[' + dialog_row + '][response]" value="' + answer + '"></td>';
                html += '<td class=""><button class="btn btn-info btn-icon btnedit-values" type="button" onclick="editDialog(\'' + dialog_row + '\');"><i class="fa fa-edit"></i> Edit </button> | <button class="btn btn-danger btn-icon btnremove-values" type="button" onclick="removeDialog(\'' + dialog_row + '\');"><i class="fa fa-minus-square-o"></i> Remove</button></td>';
                html += '</tr>';

                $('.dialog tbody').append(html);
                $('input[name=\'pattern\']').val('');
                $('input[name=\'response\']').tagsinput('removeAll');
                $('input[name=\'response\']').focus();
                dialog_row++;

                return true;

            }

            return false;
        });

    });

    /** POST Entity Form */
    function new_dialog()
    {
        $('.small-talk-form').submit();
    }

    /** Remove Reference */
    function removeDialog(id){

        if (id){
            $('#dialog-'+id).remove();
            return true
        }
        return false;
    }

    /** Edit Reference */
    function editDialog(id){

        var question = $('input[name=\'dialog['+id+'][pattern]\']').val();
        var answer = $('input[name=\'dialog['+id+'][response]\']').val();


        if (id){
            $('.btnedit-values').attr('disabled','disabled');
            $('.btnremove-values').attr('disabled','disabled');
            $('input[name=\'pattern\']').val(question);
            $('input[name=\'response\']').tagsinput('add', answer);
            $('#dialog-'+id).remove();
            return true
        }

        return false;

    }
</script>