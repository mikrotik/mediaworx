<!-- Main content -->
<section class="content">
    <?php echo form_open_multipart($this->uri->uri_string(),array('id'=>'entity-form','class'=>'_entity-form')); ?>
    <input type="hidden" name="agent_id" value="<?php echo $this->agent_scope?>"/>
    <!-- Default box -->
    <div class="box">
        <div class="box-body">
            <div class="input-group">
            <?php $value=( isset($entity) ? $entity->entity_name : '');?>
            <input type="text" class="form-control" name="entity_name" placeholder="<?php echo _l('entity_name'); ?>" id="entity_name" value="<?php echo $value ?>">
                <span class="input-group-btn">
                  <button type="button" onclick="new_entity()" class="btn btn-info btn-create"><?php echo strtoupper(_l('create'))?></button>
                </span>
            </div>
            <?php echo form_error('entity_name'); ?>
            <div class="row">
                <div class="form-group">
                    <label class="checkbox-inline">
                        <div class="checkbox icheck">
                            <label>
                                <input type="checkbox" name="isOverridable" value="1" <?php echo ($entity->isOverridable == 1) ? 'checked' : ''?>> <?php echo _l('define_synonyms')?>
                                <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('define_synonyms_note'); ?>"></i>
                            </label>
                        </div>
                    </label>
                    <label class="checkbox-inline">
                        <div class="checkbox icheck">
                            <label>
                                <input type="checkbox" name="automatedExpansion" value="1" <?php echo ($entity->automatedExpansion == 1) ? 'checked' : ''?>> <?php echo _l('allow_automated_expansion')?>
                            </label>
                        </div>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 form-group">
                    <input type="text" class="form-control" name="reference" id="reference" value="">
                </div>
                <div class="col-md-5 form-group">
                    <input type="text" class="form-control bootstrap-tagsinput" name="synonym" id="synonym" value="" data-role="tagsinput">
                </div>
                <div class="col-md-2 buttons">
                    <button type="button" class="btn btn-info btn-flat pull-right" id="btnadd-reference"><?php echo strtoupper(_l('add')); ?></button>
                </div>
            </div>
            <div class="table">
                <table class="table stripped-table-data references">
                    <thead>
                    <th><?php echo _l('entities_dt_reference');?></th>
                    <th><?php echo _l('entities_dt_synonym');?></th>
                    <th><?php echo _l('options');?></th>
                    </thead>
                    <?php $reference_row = 0?>
                    <tbody>
                    <?php if (isset($entity_references)) {?>
                        <?php foreach ($entity_references as $entity_reference) { ?>
                            <tr id="reference-<?php echo $reference_row?>">
                                <td><?php echo $entity_reference['reference']?>
                                    <input type="hidden" name="entity[<?php echo $reference_row?>][reference]" value="<?php echo $entity_reference['reference']?>">
                                </td>
                                <td><?php echo $entity_reference['synonym']?>
                                    <input type="hidden" name="entity[<?php echo $reference_row?>][synonym]" value="<?php echo $entity_reference['synonym']?>">
                                </td>
                                <td><button class="btn btn-info btn-icon btnedit-values" type="button" onclick="editReference('<?php echo $reference_row?>');" id="btnedit-values"><i class="fa fa-edit"></i> Edit </button> <button class="btn btn-danger btn-icon btnremove-values" type="button" onclick="removeReference('<?php echo $reference_row?>'); " id="btnremove-values"><i class="fa fa-minus-square-o"></i> Remove</td>
                            </tr>
                            <?php $reference_row++;} ?>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->
    <?php echo form_close(); ?>
</section>
<script>
    $(function(){

        var reference_row = <?php echo $reference_row?>;

        $('#btnadd-reference').on('click', function () {

            var reference = $('input[name=\'reference\']').val();
            var synonym = $('input[name=\'synonym\']').val();

            $('.btnedit-values').removeAttr('disabled');
            $('.btnremove-values').removeAttr('disabled');

            if (reference != "") {

                html = "<tr id='reference-" + reference_row + "'>";
                html += '<td>' + reference + '<input type="hidden" name="entity[' + reference_row + '][reference]" value="' + reference + '"></td>';
                html += '<td>' + synonym + '<input type="hidden" name="entity[' + reference_row + '][synonym]" value="' + synonym + '"></td>';
                html += '<td class=""><button class="btn btn-info btn-icon btnedit-values" type="button" onclick="editReference(\'' + reference_row + '\');"><i class="fa fa-edit"></i> Edit </button> | <button class="btn btn-danger btn-icon btnremove-values" type="button" onclick="removeReference(\'' + reference_row + '\');"><i class="fa fa-minus-square-o"></i> Remove</button></td>';
                html += '</tr>';

                $('.references tbody').append(html);
                $('input[name=\'reference\']').val('');
                $('input[name=\'synonym\']').tagsinput('removeAll');
                $('input[name=\'reference\']').focus();
                reference_row++;

                return true;

            }

            return false;
        });

    });

    /** POST Entity Form */
    function new_entity()
    {
        $('#entity-form').submit();
    }

    /** Remove Reference */
    function removeReference(id){

        if (id){
            $('#reference-'+id).remove();
            return true
        }
        return false;
    }

    /** Edit Reference */
    function editReference(id){

        var reference = $('input[name=\'entity['+id+'][reference]\']').val();
        var synonym = $('input[name=\'entity['+id+'][synonym]\']').val();


        if (id){
            $('.btnedit-values').attr('disabled','disabled');
            $('.btnremove-values').attr('disabled','disabled');
            $('input[name=\'reference\']').val(reference);
            $('input[name=\'synonym\']').tagsinput('add', synonym);
            $('#reference-'+id).remove();
            return true
        }

        return false;

    }
</script>