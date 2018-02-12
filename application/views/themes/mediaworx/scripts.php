<?php app_jquery_validation_plugin_js($locale); ?>
<script src="<?php echo base_url('assets/plugins/jquery-validation/additional-methods.min.js'); ?>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(template_assets_path().'/bower_components/bootstrap/dist/js/bootstrap.min.js');?>"></script>
<!-- Select2 -->
<script src="<?php echo base_url(template_assets_path().'/bower_components/select2/dist/js/select2.full.min.js');?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url(template_assets_path().'/bower_components/fastclick/lib/fastclick.js')?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(template_assets_path().'/dist/js/adminlte.min.js')?>"></script>
<!-- Sparkline -->
<script src="<?php echo base_url(template_assets_path().'/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js')?>"></script>
<!-- jvectormap  -->
<script src="<?php echo base_url(template_assets_path().'/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js')?>"></script>
<script src="<?php echo base_url(template_assets_path().'/plugins/jvectormap/jquery-jvectormap-world-mill-en.js')?>"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(template_assets_path().'/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')?>"></script>
<!-- iCheck -->
<script src="<?php echo base_url(template_assets_path().'/plugins/iCheck/icheck.min.js')?>"></script>
<!-- Sweetalert -->
<script src="<?php echo base_url('/assets/plugins/sweetalert/sweetalert.js')?>"></script>
<!-- DataTables -->
<script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net/js/jquery.dataTables.min.js')?>"></script>
<script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')?>"></script>
<script src="<?php echo base_url(template_assets_path().'/js/custom.js')?>"></script>
<script src="<?php echo base_url(template_assets_path().'/js/taginput.js')?>"></script>
<?php
// DONT REMOVE THIS LINE
do_action('customers_after_js_scripts_load');
?>
<script>
    $(function(){
        //Initialize Select2 Elements
        $('.select2').select2()
    });
</script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>
