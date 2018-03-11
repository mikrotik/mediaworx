<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body _buttons">
                        <?php if (has_permission('echelon','','create')) { ?>
                            <a href="#" data-url="<?php echo admin_url()?>/echelon/category" data-toggle="modal" data-target="#new-category" class="btn btn-info mright5 test pull-left display-block">
                                <?php echo _l('new_category'); ?></a>
                        <?php } ?>
                    </div>
                </div>
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('echelon_categories'),
                            _l('options')
                        ),'categories'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade new-category" id="new-category" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><?php echo _l('new_category'); ?></h4>
            </div>
            <div class="modal-body">
                <form action="" class="category-form" autocomplete="off" enctype="multipart/form-data" method="post" accept-charset="utf-8" novalidate="novalidate">
                    <div class="form-group">
                        <label for="category"><?php echo _l('category'); ?></label>
                        <input type="text" class="form-control" name="category" id="category" value="">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                <?php if(has_permission('echelon','','create')){ ?>
                    <a href="#" class="btn btn-info" onclick="new_category(); return false;"><?php echo _l('confirm'); ?></a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<?php init_tail(); ?>
<script>
    $(function(){
        initDataTable('.table-categories');

        /** Validate Entity Form*/
        _validate_form($('.category-form'),
            {category:'required'}
        );

        $('#new-category').on('show.bs.modal', function(e) {
            var invoker = $(e.relatedTarget);
            var url = $(invoker).data('url');

            $('#new-category form').attr('action',url);
        });
    });

    function new_category()
    {
        $('.category-form').submit();
    }

    function deleteCategory(element){


        var id = $(element).data('id');
        var url = $(element).data('url');

        swal({
                title: "<?php echo _l('confirmation');?>",
                text: "<?php echo sprintf(_l('delete_warning'),_l('category'));?>",
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
                            $('.table-categories').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "success");
                        } else {
                            $('.table-categories').DataTable().ajax.reload();
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
