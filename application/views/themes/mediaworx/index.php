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
            <!--
            TODO - Dynamic Breadcrumbs
            -->
            <?php $total = $this->uri->total_segments(); ?>
            <ol class="breadcrumb">
                <li><a href="\"><i class="fa fa-dashboard"></i> Dashboard</a></li>
                <li class="active"><?php if (isset($title)){ echo $title; } ?></li>
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
