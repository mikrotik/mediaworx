<!-- Bootstrap 3.3.7 -->
<?php echo app_script(template_assets_path().'/bower_components/bootstrap/dist/js','bootstrap.min.js'); ?>
<!-- iCheck -->
<?php echo app_script(template_assets_path().'/plugins/iCheck','icheck.min.js'); ?>
<!-- Custom JS -->
<?php echo app_script(template_assets_path().'/js','custom.js'); ?>
<?php if(is_client_logged_in()){ ?>
    <?php if(get_option('dropbox_app_key') != ''){ ?>
        <script type="text/javascript" src="https://www.dropbox.com/static/api/2/dropins.js" id="dropboxjs" data-app-key="<?php echo get_option('dropbox_app_key'); ?>"></script>
    <?php } ?>
    <?php app_jquery_validation_plugin_js($locale); ?>
    <!-- SlimScroll -->
    <?php echo app_script(template_assets_path().'/bower_components/jquery-slimscroll','jquery.slimscroll.min.js'); ?>
    <!-- FastClick -->
    <?php echo app_script(template_assets_path().'/bower_components/fastclick/lib','fastclick.js'); ?>
    <!-- AdminLTE App -->
    <?php echo app_script(template_assets_path().'/dist/js','adminlte.min.js'); ?>
    <!-- Sweetalert -->
    <script src="<?php echo base_url('/assets/plugins/sweetalert/sweetalert.js')?>"></script>
    <!-- DataTables -->
    <script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net/js/jquery.dataTables.min.js')?>"></script>
    <script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')?>"></script>
<?php } ?>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });

        <?php if (get_client_user_id()) { ?>
            $('.sidebar-menu').tree();
            $('[data-toggle="tooltip"]').tooltip();
        <?php } ?>
    });
</script>
<?php
$alertclass = "";
if($this->session->flashdata('message-success')){
    $alertclass = "success";
} else if ($this->session->flashdata('message-warning')){
    $alertclass = "warning";
} else if ($this->session->flashdata('message-info')){
    $alertclass = "info";
} else if ($this->session->flashdata('message-danger')){
    $alertclass = "danger";
}
if($alertclass != ''){
    $alert_message = '';
    $alert = $this->session->flashdata('message-'.$alertclass);
    if(is_array($alert)){
        foreach($alert as $alert_data){
            $alert_message.= '<span>'.$alert_data . '</span><br />';
        }
    } else {
        $alert_message .= $alert;
    }
    ?>
    <script>
        $(function(){
            alert_float('<?php echo $alertclass; ?>','<?php echo $alert_message; ?>');
        });
    </script>
<?php } ?>
