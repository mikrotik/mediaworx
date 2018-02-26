<!-- Bootstrap 3.3.7 -->
<?php echo app_script(template_assets_path().'/bower_components/bootstrap/dist/js','bootstrap.min.js'); ?>
<!-- iCheck -->
<?php echo app_script(template_assets_path().'/plugins/iCheck','icheck.min.js'); ?>
<?php if(is_client_logged_in()){ ?>
    <?php if(get_option('dropbox_app_key') != ''){ ?>
        <script type="text/javascript" src="https://www.dropbox.com/static/api/2/dropins.js" id="dropboxjs" data-app-key="<?php echo get_option('dropbox_app_key'); ?>"></script>
    <?php } ?>
    <!-- SlimScroll -->
    <?php echo app_script(template_assets_path().'/bower_components/jquery-slimscroll','jquery.slimscroll.min.js'); ?>
    <!-- FastClick -->
    <?php echo app_script(template_assets_path().'/bower_components/fastclick/lib','fastclick.js'); ?>
    <!-- AdminLTE App -->
    <?php echo app_script(template_assets_path().'/dist/js','adminlte.min.js'); ?>
    <!-- AdminLTE for demo purposes -->
    <?php //echo app_script(template_assets_path().'/dist/js','demo.js'); ?>
    <!-- Sweetalert -->
    <script src="<?php echo base_url('/assets/plugins/sweetalert/sweetalert.js')?>"></script>
    <!-- DataTables -->
    <script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net/js/jquery.dataTables.min.js')?>"></script>
    <script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')?>"></script>
    <!-- Select2 -->
    <script src="<?php echo base_url(template_assets_path().'/bower_components/select2/dist/js/select2.full.min.js');?>"></script>
<?php } ?>
<script>
    $(function () {

        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
        $('.sidebar-menu').tree();
    });
</script>