<!-- Main content -->
<section class="content">
    <?php echo form_open_multipart($this->uri->uri_string(),array('id'=>'agent-form','class'=>'_agent-form')); ?>
    <input type="hidden" name="user_id" value="<?php echo get_client_user_id(); ?>"/>
    <div class="input-group">
        <input type="text" class="form-control" name="agent_name" placeholder="<?php echo _l('agent_name'); ?>" id="agent_name" value="<?php echo set_value('agent_name',$agent->agent_name); ?>">
        <span class="input-group-btn">
          <button type="button" class="btn btn-info btn-create"><?php echo strtoupper(_l('create'))?></button>
        </span>
    </div>
    <?php echo form_error('agent_name'); ?>
    <hr/>
    <!-- Tabs -->
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <?php if ($agent) {?>
                <li class="active"><a href="#general" data-toggle="tab"><?php echo _l('agents_tab_general');?></a></li>
                <li><a href="#mlsetting" data-toggle="tab"><?php echo _l('agents_tab_settings');?></a></li>
                <li><a href="#importexport" data-toggle="tab"><?php echo _l('agents_tab_import_export');?></a></li>
            <?php } ?>
        </ul>
    </div>
    <!-- ./tabs-->
    <div class="tab-content">
        <div class="tab-pane active" id="general">
            <!-- Default box -->
            <div class="box">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-input">
                                <label for="default_language" class="control-label"><?php echo _l('localization_default_language'); ?>
                                </label>
                                <i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('default_language_note'); ?>"></i>
                                <select name="default_language" id="default_language" class="form-control selectpicker" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                    <option value=""><?php echo _l('system_default_string'); ?></option>
                                    <?php foreach(list_folders(APPPATH .'language') as $language){
                                        $selected = '';
                                        if(isset($agent)){
                                            if($agent->default_language == $language){
                                                $selected = 'selected';
                                            }
                                        }
                                        ?>
                                        <option value="<?php echo $language; ?>" <?php echo $selected; ?>><?php echo ucfirst($language); ?></option>
                                    <?php } ?>
                                </select>
                                <span class="text-muted"><?php echo _l('default_language_hint');?></span>
                                <?php echo form_error('default_language'); ?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="default_timezone" class="control-label"><?php echo _l('settings_localization_default_timezone'); ?>
                            </label>
                            <select name="default_timezone" id="default_timezone" class="form-control selectpicker" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                <option value=""><?php echo _l('system_default_string'); ?></option>
                                <?php foreach(get_timezones_list() as $tkey=>$timezone){
                                    $selected = '';
                                    if(isset($agent)){
                                        if($agent->default_timezone == $tkey){
                                            $selected = 'selected';
                                        }
                                    }
                                    ?>
                                    <option value="<?php echo $tkey; ?>" <?php echo $selected; ?>><?php echo ucfirst($timezone); ?></option>
                                <?php } ?>
                            </select>
                            <span class="text-muted"><?php echo _l('default_timezone_hint');?></span>
                            <?php echo form_error('default_timezone'); ?>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
    </div>
    <?php echo form_close(); ?>
</section>
<script>
    $(function() {

        $('.btn-create').on('click',function(){
            $('#agent-form').submit();
        });
    });
</script>
