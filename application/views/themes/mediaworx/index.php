<?php
echo $head;
?>
<div class="wrapper">
    <?php
        if(is_client_logged_in() && $use_navigation == true){
            get_template_part('header');
            get_template_part('navigation');
        }
    ?>
    <?php  if(is_client_logged_in()) { ?>
    <div class="content-wrapper">
        <?php } ?>
        <?php echo $view; ?>
        <?php  if(is_client_logged_in()) { ?>
    </div>
    <?php } ?>
    <?php
    echo $footer;
    echo $scripts;
    ?>
</div>
</body>
</html>