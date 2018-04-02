<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <div class="box-tools pull-right">
                <button type="button" data-url="<?php echo $this->uri->uri_string()?>/intent" data-toggle="modal" data-target="#new-intent" class="btn btn-info btn-flat btn-sm mright5 test pull-left display-block">
                    <?php echo _l('new_intent'); ?></button>
            </div>
            <br/>
        </div>
        <div class="box-body">
            <?php get_template_table('intents/intents_table'); ?>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->

</section>
<!-- Create intent modal-->
<div class="modal fade new-intent" id="new-intent" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><?php echo _l('new_intent'); ?></h4>
            </div>
            <div class="modal-body">
                <form action="" class="intent-form" autocomplete="off" enctype="multipart/form-data" method="post" accept-charset="utf-8" novalidate="novalidate">
                    <input type="hidden" name="agent_id" value="<?php echo $this->agent_scope?>">
                    <div class="form-group">
                        <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                        <input type="text" class="form-control" name="intent_name" id="intent_name" value="">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                <a href="#" class="btn btn-info" onclick="new_intent(); return false;"><?php echo _l('confirm'); ?></a>
            </div>
        </div>
    </div>
</div>
<!-- ./create intent modal-->
<script>
    $(function(){

        /** Validate Entity Form*/
        _validate_form($('.intent-form'),
            {intent_name:'required'}
        );

        $('#new-intent').on('show.bs.modal', function(e) {
            var invoker = $(e.relatedTarget);
            var url = $(invoker).data('url');

            $('#new-intent form').attr('action',url);
        });
    });

    function new_intent()
    {
        $('.intent-form').submit();
    }
</script>