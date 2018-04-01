<?php
echo $head;
if(is_client_logged_in()){?>
<!-- Site wrapper -->
<div class="wrapper">
    <?php
        get_template_part('header');
    if ($use_navigation == true) {
        get_template_part('navigation');
    }
    ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <?php if (isset($title)){ echo $title; } ?>
                <small></small>
            </h1>
            <?php $total = $this->uri->total_segments(); ?>
            <ol class="breadcrumb">
                <li><a href="\"><i class="fa fa-dashboard"></i> Dashboard</a></li>
                <?php for ($x = 1; $x <= $total - 1; $x++) { ?>
                    <li><a href="<?php echo site_url($this->uri->segment($x))?>"><?php echo _l($this->uri->segment($x)); ?></a></li>
                <?php } ?>
                <?php if (!is_numeric($this->uri->segment($total))) { ?>
                    <li class="active"><?php echo _l($this->uri->segment($total)); ?></li>
                <?php } ?>
            </ol>
        </section>
<?php } ?>
<?php echo $view; ?>
<?php if (is_client_logged_in()) {?>
</div>
<?php }?>
<?php
    echo $footer;
    echo $scripts;
?>
<?php if (is_client_logged_in()) {?>
</div>
<?php }?>
</body>
</html>
