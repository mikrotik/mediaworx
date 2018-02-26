<?php if(is_client_logged_in()){ ?>
<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> <?php echo APP_VERSION?>
    </div>
    <strong>
        <?php echo date('Y'); ?> <?php echo _l('clients_copyright',get_option('companyname')); ?>
    </strong>
</footer>
<?php //get_template_part('aside'); ?>
<?php } ?>