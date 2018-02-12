<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Entities
        <small>Version 2.0</small>
    </h1>
</section>
<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-address-card-o"></i> Entity</h3>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-info pull-right" onclick="$('#entity-form').submit();"><?php echo _l('save'); ?></button>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <?php
            echo form_open_multipart($this->uri->uri_string(),array('id'=>'entity-form','class'=>'_entity-form'));
            ?>
            <div class="row">
                <div class="col-md-12">
                    <label for="entity_name"><?php echo _l('entities_name'); ?></label>
                    <input type="text" class="form-control" name="entity_name" id="entity_name" value="<?php echo set_value('entity_name',$entity->entity_name); ?>">
                    <?php echo form_error('entity_name'); ?>
                </div>
            </div>
            <br/>
            <div class="form-group">
                <label class="checkbox-inline">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" name="isOverridable" value="1" checked> Define synonyms
                        </label>
                    </div>
                </label>
                <label class="checkbox-inline">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" name="automatedExpansion" value="1"> Allow automated expansion
                        </label>
                    </div>
                </label>
            </div>
            <div class="row">
                <div class="col-md-5"><input type="text" class="form-control" name="reference" id="reference" value=""></div>
                <div class="col-md-5"><input type="text" class="form-control bootstrap-tagsinput" name="synonyms" id="synonyms" value="" data-role="tagsinput"></div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-info pull-right" id="btnadd-values"><?php echo _l('entities_value_add'); ?></button>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?php $rowvalues = 0?>
                    <div class="table">
                        <table class="table stripped-table-data entity_values">
                            <thead>
                            <tr>
                                <th>Reference</th>
                                <th>Synonyms</th>
                                <th>Options</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if ($entity_values) { ?>
                                <?php foreach ($entity_values as $value) { ?>
                                    <tr id="reference-<?php echo $rowvalues?>">
                                        <td><?php echo $value['reference']?>
                                            <input type="hidden" name="entity[<?php echo $rowvalues?>][reference]" value="<?php echo $value['reference']?>">
                                        </td>
                                        <td><?php echo $value['synonym']?>
                                            <input type="hidden" name="entity[<?php echo $rowvalues?>][synonym]" value="<?php echo $value['synonym']?>">
                                        </td>
                                        <td><button class="btn btn-danger btn-icon" type="button" onclick="removeValues('<?php echo $rowvalues?>');"id="btnremove-values"><i class="fa fa-minus-square-o"></i> Remove</td>
                                    </tr>
                                    <?php $rowvalues++;} ?>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</section>
<script>
    var rowvalues = <?php echo $rowvalues?>
        // Usersays Button - INTENTS

        $('#btnadd-values').on('click', function () {

            var reference = $('input[name=\'reference\']').val();
            var synonyms = $('input[name=\'synonyms\']').val();

            if (reference != '') {

                html = "<tr id='reference-" + rowvalues + "'>";
                html += '<td>' + reference + '<input type="hidden" name="entity['+rowvalues+'][reference]" value="'+reference+'"></td>';
                html += '<td>' + synonyms + '<input type="hidden" name="entity['+rowvalues+'][synonym]" value="'+synonyms+'"></td>';
                html += '<td class=""><button class="btn btn-danger btn-icon" type="button" onclick="removeValues(\''+rowvalues+'\');"id="btnremove-values"><i class="fa fa-minus-square-o"></i> Remove</td>';
                html += '</tr>';

                $('.entity_values tbody').append(html);
                $('input[name=\'reference\']').val('');
                $('input[name=\'synonyms\']').tagsinput('removeAll');
                rowvalues++;

                return true;
            }

            return false;
        });

    function removeValues(id){

        if (id){
            $('#reference-'+id).remove();
            return true
        }

        return false;

    }
</script>