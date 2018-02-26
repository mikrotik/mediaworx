<?php
echo $head;
if(is_client_logged_in() && $use_navigation == true){
    get_template_part('header');
    get_template_part('navigation');
}
?>
<?php if(is_client_logged_in()) {?>
<!-- Site wrapper -->
<div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Main content -->
<?php } ?>
        <?php echo $view; ?>

<?php if(is_client_logged_in()) {?>

    </div>
<?php } ?>
    <?php
    echo $footer;
    echo $scripts;
    ?>
</div>
</body>
</html>