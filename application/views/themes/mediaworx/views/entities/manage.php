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
            <h3 class="box-title"><i class="fa fa-address-card-o"></i> Entity List</h3>
            <div class="box-tools pull-right">
                <a href="<?php echo site_url('entities/entity'); ?>" class="btn btn-info pull-right"><i class="fa fa-plus-square"></i> <?php echo _l('clients_entity_create'); ?></a>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <?php get_template_part('entities_table'); ?>
        </div>
    </div>
</section>