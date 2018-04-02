<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php if (isset($title)){ echo $title; } ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <?php if(get_option('favicon') != ''){ ?>
        <link href="<?php echo base_url('uploads/company/'.get_option('favicon')); ?>" rel="shortcut icon">
    <?php } ?>
    <?php echo app_stylesheet(template_assets_path().'/css','custom.css'); ?>
    <!-- Bootstrap 3.3.7 -->
    <?php echo app_stylesheet(template_assets_path().'/bower_components/bootstrap/dist/css','bootstrap.min.css'); ?>
    <!-- Font Awesome -->
    <?php echo app_stylesheet(template_assets_path().'/bower_components/font-awesome/css','font-awesome.min.css'); ?>
    <!-- Ionicons -->
    <?php echo app_stylesheet(template_assets_path().'/bower_components/Ionicons/css','ionicons.min.css'); ?>
    <!-- Theme style -->
    <?php echo app_stylesheet(template_assets_path().'/dist/css','AdminLTE.min.css'); ?>
    <?php echo app_stylesheet(template_assets_path().'/dist/css/skins','_all-skins.min.css'); ?>
    <?php if(file_exists(FCPATH.'assets/css/custom.css')){ ?>
        <link href="<?php echo base_url('assets/css/custom.css'); ?>" rel="stylesheet" type='text/css'>
    <?php } ?>
    <!-- iCheck -->
    <?php echo app_stylesheet(template_assets_path().'/plugins/iCheck/square','blue.css'); ?>
    <!-- Sweetalert -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/sweetalert/sweetalert.css');?>">
    <!-- Tag It -->
    <?php echo app_stylesheet(template_assets_path().'/css','bootstrap-tagsinput.css'); ?>
    <!-- Select2 -->
    <link rel="stylesheet" href="<?php echo base_url(template_assets_path().'/bower_components/select2/dist/css/select2.min.css')?>">
    <!-- DataTables -->
    <link rel="stylesheet" href="<?php echo base_url(template_assets_path().'/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css')?>">
    <?php render_custom_styles(array('general','tabs','buttons','customers','modals')); ?>
    <!-- jQuery 3 -->
    <?php echo app_script(template_assets_path().'/bower_components/jquery/dist','jquery.min.js'); ?><script>
        var client_id = '<?php echo get_client_user_id()?>';
    </script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- DO NOT REMOVE -->
    <?php do_action('app_customers_head',array('language'=>$language)); ?>
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition <?php echo (!is_client_logged_in() ? 'login-page' : 'skin-blue sidebar-mini')?>" <?php if(is_rtl(true)){ echo 'dir="rtl"';} ?>>