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
                Blank page
                <small>it all starts here</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Examples</a></li>
                <li class="active">Blank page</li>
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
