<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body _buttons">
                        <?php if (has_permission('intents','','create')) { ?>
                            <a href="#" onclick="new_intent()" data-toggle="modal" data-target="#new-intent" class="btn btn-info mright5 test pull-left display-block">
                                <?php echo _l('new_intent'); ?></a>
                        <?php } ?>
                    </div>
                </div>
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('intents_intent_name'),
                            _l('options')
                        ),'intents'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade new-intent" id="new-intent" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><?php echo _l('new_intent'); ?></h4>
            </div>
            <div class="modal-body">
                <?php echo form_open_multipart($this->uri->uri_string().'/intent',array('class'=>'intent-form','autocomplete'=>'off')); ?>
                <div class="form-group">
                    <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                    <input type="text" class="form-control" name="intent_name" id="intent_name" value="">
                </div>
                <?php echo form_close(); ?>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                <?php if(has_permission('intents','','create')){ ?>
                <a href="#" class="btn btn-info" onclick="new_intent(); return false;"><?php echo _l('confirm'); ?></a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<?php init_tail(); ?>
<script>
    $(function(){
        initDataTable('.table-intents');

        /** Validate Entity Form*/
        _validate_form($('.intent-form'),
            {intent_name:'required'}
        );

        return false;
    });

    function new_intent()
    {
        $('.intent-form').submit();
    }


    function deleteIntent(element){


        var id = $(element).data('id');
        var url = $(element).data('url');

        swal({
                title: "<?php echo _l('confirmation');?>",
                text: "<?php echo sprintf(_l('delete_warning'),_l('intent'));?>",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function(isConfirm) {
                if (isConfirm) {
                    $.post(url+'/'+id).done(function(response) {
                        response = JSON.parse(response);
                        if (response.success == true) {
                            $('.table-intents').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "success");
                        } else {
                            $('.table-intents').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "warning");
                        }
                    });
                } else {
                    swal("Cancelled", "Cancelled", "error");
                }
            });

        return false;
    }
</script>
</body>
</html>
