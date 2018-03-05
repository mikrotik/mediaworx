<!-- Bootstrap 3.3.7 -->
<?php echo app_script(template_assets_path().'/bower_components/bootstrap/dist/js','bootstrap.min.js'); ?>
<!-- iCheck -->
<?php echo app_script(template_assets_path().'/plugins/iCheck','icheck.min.js'); ?>
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
    <!-- Custom JS -->
    <?php echo app_script(template_assets_path().'/js','custom.js'); ?>
    <!-- AdminLTE for demo purposes -->
    <?php //echo app_script(template_assets_path().'/dist/js','demo.js'); ?>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@1.6.0/src/loadingoverlay.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@1.6.0/extras/loadingoverlay_progress/loadingoverlay_progress.min.js"></script>
    <!-- Sweetalert -->
    <script src="<?php echo base_url('/assets/plugins/sweetalert/sweetalert.js')?>"></script>
    <!-- DataTables -->
    <script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net/js/jquery.dataTables.min.js')?>"></script>
    <script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')?>"></script>
    <!-- Select2 -->
    <script src="<?php echo base_url(template_assets_path().'/bower_components/select2/dist/js/select2.full.min.js');?>"></script>
    <!-- JQuery Cookies -->
    <?php echo app_script(template_assets_path().'/js','jquery.cookie.js'); ?>
    <script src="<?php echo base_url('assets/js/taginput.js')?>"></script>
<?php } ?>
<script>
    $(function () {

        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
        <?php if (get_client_user_id()) { ?>

        var agent = $.cookie("agent");

        $('#asidebar_dropdown').val(agent);
        $('#asidebar_dropdown').trigger('change');

        $('.sidebar-menu').tree();

        $('#asidebar_dropdown').on('change',function(){

            var value = $(this).val();

            if ($.isNumeric(value)){

                $.cookie("agent", value,{expires : 2});
            } else {
                window.location = site_url+'/'+value;
            }
        });

        $('[data-toggle="tooltip"]').tooltip();

        //Initialize Select2 Elements
        $('.select2').select2();
        <?php } ?>
    });
</script>