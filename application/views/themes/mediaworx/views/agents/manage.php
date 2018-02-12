<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Agents
        <small>Version 2.0</small>
    </h1>
</section>
<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-address-card-o"></i> Agent List</h3>
            <div class="box-tools pull-right">
                <a href="<?php echo site_url('agents/agent'); ?>" class="btn btn-info pull-right"><i class="fa fa-plus-square"></i> <?php echo _l('clients_agent_create'); ?></a>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <?php get_template_part('agents_table'); ?>
        </div>
    </div>
</section>