<?php init_head(); ?>
    <div id="wrapper">
        <div class="content">
            <div class="row">
                <div class="col-md-12">
                    <?php if(has_permission('entities','','create')){ ?>
                        <div class="panel_s">
                            <div class="panel-body _buttons">
                                <a href="<?php echo admin_url('entities/entity'); ?>" class="btn btn-info pull-left display-block"><?php echo _l('new_entity'); ?></a>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="panel_s">
                        <div class="panel-body">
                            <div class="clearfix"></div>
                            <?php
                            $table_data = array(
                                _l('entity_dt_name'),
                                _l('options')
                            );
                            render_datatable($table_data,'entities');
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php init_tail(); ?>
<script>
    $(function(){
        initDataTable('.table-entities');
    });

    function deleteEntity(element){


        var id = $(element).data('id');
        var url = $(element).data('url');

        swal({
                title: "Are you sure?",
                text: "You will not be able to recover this agent!",
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
                            $('.table-entities').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "success");
                        } else {
                            $('.table-entities').DataTable().ajax.reload();
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
