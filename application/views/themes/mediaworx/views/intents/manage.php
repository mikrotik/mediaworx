<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Intents
        <small>Version 2.0</small>
    </h1>
</section>
<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-address-card-o"></i> Intent List</h3>
            <div class="box-tools pull-right">
                <a href="<?php echo site_url('intents/intent'); ?>" class="btn btn-info pull-right"><i class="fa fa-plus-square"></i> <?php echo _l('clients_intent_create'); ?></a>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <?php get_template_part('intents_table'); ?>
        </div>
    </div>
</section>