<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><?php if (isset($title)){ echo $title; } ?></h3>

            <div class="box-tools pull-right">
                <a href="<?php echo site_url('entities/entity'); ?>" class="btn btn-info"><?php echo _l('new_entity'); ?></a>
            </div>
        </div>
        <div class="box-body">
            <?php get_template_part('entities_table'); ?>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->

</section>