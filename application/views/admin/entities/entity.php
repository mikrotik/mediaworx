<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body _buttons">
                        <a href="<?php echo admin_url('entities'); ?>" class="btn btn-default mright5 test pull-left display-block">
                            <?php echo _l('back'); ?></a>
                        <a href="#" onclick="new_entity()" class="btn btn-info mright5 test pull-right display-block">
                            <?php echo _l('save'); ?></a>
                    </div>
                </div>
                <div class="panel_s">
                    <div class="panel-body">
                        <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'entity-form','autocomplete'=>'off')); ?>
                            <div class="form-group">
                                <label for="entity_name"><?php echo _l('entity_name'); ?></label>
                                <input type="text" class="form-control" name="entity_name" id="entity_name" value="<?php echo set_value('entity_name',$entity->entity_name); ?>">
                            </div>
                            <div class="form-group">
                                <div class="checkbox checkbox-primary checkbox-inline">
                                    <input type="checkbox" name="isOverridable" value="1" <?php echo ($entity->isOverridable == 1) ? 'checked' : ''?>>
                                    <label for="contact_primary">
                                        <?php echo _l('define_synonyms')?>
                                    </label>
                                </div>
                                <div class="checkbox checkbox-primary checkbox-inline">
                                    <input type="checkbox" name="automatedExpansion" value="1" <?php echo ($entity->automatedExpansion == 1) ? 'checked' : ''?>>
                                    <label for="contact_primary">
                                        <?php echo _l('allow_automated_expansion')?>
                                    </label>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-md-5 form-group">
                                <input type="text" class="form-control" name="reference" id="reference" value="">
                            </div>
                            <div class="col-md-5 form-group">
                                <input type="text" class="form-control bootstrap-tagsinput" name="synonym" id="synonym" value="" data-role="tagsinput">
                            </div>
                            <div class="col-md-2 buttons">
                                <button type="button" class="btn btn-info pull-right" id="btnadd-reference"><?php echo _l('add'); ?></button>
                            </div>
                        <div class="clearfix"></div>
                        <div class="table">
                            <table class="table stripped-table-data references">
                                <thead>
                                    <th><?php echo _l('entities_entity_reference');?></th>
                                    <th><?php echo _l('entities_entity_synonyms');?></th>
                                    <th><?php echo _l('options');?></th>
                                </thead>
                                <?php $reference_row = 0?>
                                <tbody>
                                <?php if ($entity_references) {?>
                                    <?php foreach ($entity_references as $entity_reference) { ?>
                                        <tr id="reference-<?php echo $reference_row?>">
                                            <td><?php echo $entity_reference['reference']?>
                                                <input type="hidden" name="entity[<?php echo $reference_row?>][reference]" value="<?php echo $entity_reference['reference']?>">
                                            </td>
                                            <td><?php echo $entity_reference['synonyms']?>
                                                <input type="hidden" name="entity[<?php echo $reference_row?>][synonym]" value="<?php echo $entity_reference['synonyms']?>">
                                            </td>
                                            <td><button class="btn btn-info btn-icon btnedit-values" type="button" onclick="editReference('<?php echo $reference_row?>');" id="btnedit-values"><i class="fa fa-edit"></i> Edit </button> <button class="btn btn-danger btn-icon btnremove-values" type="button" onclick="removeReference('<?php echo $reference_row?>'); " id="btnremove-values"><i class="fa fa-minus-square-o"></i> Remove</td>
                                        </tr>
                                    <?php $reference_row++;} ?>
                                <?php } ?>
                                </tbody>
                            </table>
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

        var reference_row = <?php echo $reference_row?>;

        /** Validate Entity Form*/
        _validate_form($('.entity-form'),
            {entity_name:'required'}
        );

        $('#btnadd-reference').on('click', function () {

            var reference = $('input[name=\'reference\']').val();
            var synonym = $('input[name=\'synonym\']').val();

            $('.btnedit-values').removeAttr('disabled');
            $('.btnremove-values').removeAttr('disabled');

            if (reference != "") {

                html = "<tr id='reference-" + reference_row + "'>";
                html += '<td>' + reference + '<input type="hidden" name="entity[' + reference_row + '][reference]" value="' + reference + '"></td>';
                html += '<td>' + synonym + '<input type="hidden" name="entity[' + reference_row + '][synonym]" value="' + synonym + '"></td>';
                html += '<td class=""><button class="btn btn-info btn-icon btnedit-values" type="button" onclick="editReference(\'' + reference_row + '\');"><i class="fa fa-edit"></i> Edit | <button class="btn btn-danger btn-icon btnremove-values" type="button" onclick="removeReference(\'' + reference_row + '\');"><i class="fa fa-minus-square-o"></i> Remove</td>';
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
        $('.entity-form').submit();
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

        console.log(synonym);

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
</body>
</html>
