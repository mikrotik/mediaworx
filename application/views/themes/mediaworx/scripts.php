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
    <!-- Sweetalert -->
    <script src="<?php echo base_url('/assets/plugins/sweetalert/sweetalert.js')?>"></script>
    <!-- Custom JS -->
    <?php echo app_script(template_assets_path().'/js','custom.js'); ?>
    <!-- DataTables -->
    <script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net/js/jquery.dataTables.min.js')?>"></script>
    <script src="<?php echo base_url(template_assets_path().'/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')?>"></script>
    <!-- JQuery Cookies -->
    <?php echo app_script(template_assets_path().'/js','jquery.cookie.js'); ?>
    <!-- Tag It -->
    <?php echo app_script(template_assets_path().'/js','taginput.js'); ?>
    <!-- Select2 -->
    <script src="<?php echo base_url(template_assets_path().'/bower_components/select2/dist/js/select2.full.min.js');?>"></script>

<?php } ?>
<script>
    var agent = 0;

    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });

        <?php if (get_client_user_id()) { ?>
            $('.sidebar-menu').tree();
            $('[data-toggle="tooltip"]').tooltip();

            agent = $.cookie("agent");

        //Initialize Select2 Elements
        $('.select2').select2();

        if (agent) {
            $('#asidebar_dropdown').val(agent);
            $('#asidebar_dropdown').trigger('change');
        }

        $('#asidebar_dropdown').on('change',function(){

            var value = $(this).val();

            if ($.isNumeric(value)){
                $.cookie('agent', null, { path: '/' });
                $.cookie("agent", value,{path: '/',expires : 2});

                location.reload();
            } else {
                window.location = site_url+'/'+value;
            }
        });

        <?php } ?>
    });

    /**
     * TODO - put this function into custom js file
     * */
    <?php if (get_client_user_id()) {?>
    // General validate form function
    function _validate_form(form, form_rules, submithandler) {

        var f = $(form).validate({
            rules: form_rules,
            messages: {},
            ignore: [],
            submitHandler: function(form) {
                if (typeof(submithandler) !== 'undefined') {
                    submithandler(form);
                } else {
                    return true;
                }
            }
        });

        var custom_required_fields = $(form).find('[data-custom-field-required]');

        if (custom_required_fields.length > 0) {
            $.each(custom_required_fields, function() {
                $(this).rules("add", {
                    required: true
                });
                var name = $(this).attr('name');
                var label = $(this).parents('.form-group').find('[for="' + name + '"]');
                if (label.length > 0) {
                    if (label.find('.req').length == 0) {
                        label.prepend(' <small class="req text-danger">* </small>');
                    }
                }
            });
        }

        $.each(form_rules, function(name, rule) {
            if ((rule == 'required' && !jQuery.isPlainObject(rule)) || (jQuery.isPlainObject(rule) && rule.hasOwnProperty('required'))) {
                var label = $(form).find('[for="' + name + '"]');
                if (label.length > 0) {
                    if (label.find('.req').length == 0) {
                        label.prepend(' <small class="req text-danger">* </small>');
                    }
                }
            }
        });

        return false;
    }
    <?php } ?>
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
