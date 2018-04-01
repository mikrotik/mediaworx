<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <div class="box-tools pull-right">
                <a href="<?php echo site_url('agents/agent'); ?>" class="btn btn-info btn-flat btn-sm"><?php echo _l('new_agent'); ?></a>
            </div>
            <br/>
        </div>
        <div class="box-body">
            <?php get_template_table('agents/agents_table'); ?>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->

</section>