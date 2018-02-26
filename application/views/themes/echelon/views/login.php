<div class="login-box">
    <div class="login-logo">
        <a href="/"><b>MEDIA<span style="color : #F26539 ">WOKS</span></b>.IO</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg"><?php if (isset($title)){ echo $title; } ?></p>

        <?php echo form_open($this->uri->uri_string(),array('class'=>'bgwhite p15 login-form')); ?>
        <div class="form-group has-feedback">
            <input type="email" autofocus="true" class="form-control" placeholder="<?php echo _l('clients_login_email'); ?>" name="email" id="email">
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="<?php echo _l('clients_login_password'); ?>" name="password" id="password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <?php if(get_option('use_recaptcha_customers_area') == 1 && get_option('recaptcha_secret_key') != '' && get_option('recaptcha_site_key') != '' && is_connected('google.com')){ ?>
            <div class="g-recaptcha" data-sitekey="<?php echo get_option('recaptcha_site_key'); ?>"></div>
            <?php echo form_error('g-recaptcha-response'); ?>
        <?php } ?>
        <div class="row">
            <div class="col-xs-8">
                <div class="checkbox icheck">
                    <label>
                        <input type="checkbox"> <?php echo _l('clients_login_remember'); ?>
                    </label>
                </div>
            </div>
            <!-- /.col -->
            <div class="col-xs-4">
                <button type="submit" class="btn btn-primary btn-block btn-flat"><?php echo _l('clients_login_login_string'); ?></button>
            </div>
            <!-- /.col -->
        </div>
        <?php echo form_close(); ?>

        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
                Facebook</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
                Google+</a>
        </div>
        <!-- /.social-auth-links -->

        <a href="<?php echo site_url('clients/forgot_password'); ?>"><?php echo _l('customer_forgot_password'); ?></a><br>
        <?php if(get_option('allow_registration') == 1) { ?>
            <div class="social-auth-links text-center">
                <p>- OR -</p>
            </div>
            <a href="<?php echo site_url('clients/register'); ?>" class="btn btn-success btn-block"><?php echo _l('clients_register_string'); ?>
            </a>
        <?php } ?>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->