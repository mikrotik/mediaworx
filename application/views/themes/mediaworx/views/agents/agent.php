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
                <li><a href="#settings" data-toggle="tab"><?php echo _l('agents_tab_settings');?></a></li>
                <li><a href="#importexport" data-toggle="tab"><?php echo _l('agents_tab_import_export');?></a></li>
            <?php } ?>
        </ul>
    </div>
    <!-- ./tabs-->
    <div class="tab-content">
        <div class="tab-pane active" id="general">
            <div class="row">
                <?php if ($agent) { ?>
                <div class="col-md-3">
                    <div class="box">
                        <div class="box-body">
                            <img class="profile-user-img img-responsive img-circle" src="<?php echo agent_image_url($agent->id,'thumb'); ?>" alt="<?php echo _l('client_profile_image'); ?>">

                            <h3 class="profile-username text-center"><?php echo ($agent ? $agent->agent_name : "") ?></h3>

                            <div class="form-group">
                                <label for="agent_image" class="agent-image"><?php echo _l('client_profile_image'); ?></label>
                                <br/>
                                <span class="btn btn-default btn-file btn-flat">
                                    <i class="fa fa-upload"></i> <?php echo _l('browse')?> <input name="agent_image" type="file">
                                </span>
                                <span class="btn btn-flat pull-right">
                                    <a href="<?php echo site_url('agents/remove_agent_image/'.$agent->id); ?>" class="text-danger"><i class="fa fa-remove"></i> Remove</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <div class="<?php echo ($agent ? "col-md-9" : "col-md-12")?>">
                    <!-- Default box -->
                    <div class="box">
                        <div class="box-body">
                            <div class="row">
                                <?php if ($agent) { ?>
                                    <div class="col-md-12">
                                        <div class="form-input">
                                            <label for="description" class="description"><?php echo _l('agent_description'); ?></label>
                                            <?php $value=( isset($agent) ? $agent->description : ''); ?>
                                            <textarea name="description" class="form-control" rows="10"><?php echo $value?></textarea>
                                        </div>
                                    </div>
                                <?php } ?>
                                <br/>
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
                                <br/>
                                <div class="col-md-12">
                                    <div class="form-input">
                                        <label for="google_project"><?php echo _l('agents_google_project'); ?></label>
                                        <input type="text" class="form-control" name="google_project" id="google_project" placeholder="<?php echo _l('agents_create_google_project')?>" value="<?php echo set_value('google_project',$agent->google_project); ?>">
                                        <span class="text-muted"><?php echo _l('agent_google_project_hint');?></span>
                                    </div>
                                </div>
                                <br/>
                                <div class="col-md-12"><h4><?php echo _l('title_api_keys')?></h4></div>
                                <div class="col-md-6">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon bg-blue-active"><?php echo _l('client_access_token');?></span>
                                        <?php $value=( isset($agent) ? $agent->client_access_token : ''); ?>
                                        <input class="form-control" id="client-access-token" value="<?php echo $value?>" style="pointer-events:none;" type="text">
                                    </div>
                                    <a href="#" class="btn btn-link btn-post-options" onclick="copyToClipboard('#client-access-token')" >Copy <b><?php echo _l('client_access_token');?></b> to clipboard</a>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon bg-blue-active"><?php echo _l('developer_access_token');?></span>
                                        <?php $value=( isset($agent) ? $agent->developer_access_token : ''); ?>
                                        <input class="form-control" id="developer-access-token" value="<?php echo $value?>" style="pointer-events:none;" type="text">
                                    </div>
                                    <a href="#" class="btn btn-link btn-post-options" onclick="copyToClipboard('#developer-access-token')" >Copy <b><?php echo _l('developer_access_token');?></b> to clipboard</a>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </div>
        <div class="tab-pane" id="settings">
            <div class="box">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4><?php echo _l('agent_matchmode')?></h4>
                            <p><?php echo _l('agent_matchmode_note')?></p>
                            <div class="col-md-offset-1">
                                <ul style="list-style-type:disc">
                                    <li><?php echo _l('mlsetting_hybird')?></li>
                                    <li><?php echo _l('mlsetting_ml')?></li>
                                </ul>
                            </div>
                            <div class="form-input">
                                <?php
                                $hybird = "";
                                $mlonly = "";
                                ?>
                                <select name="matchmode" class="form-control selectpicker" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>">
                                    <option value=""><?php echo _l('system_default_string'); ?></option>
                                    <?php if (isset($agent) && $agent->matchmode == "hybird") { ?>
                                        <?php $hybird = "selected";?>
                                    <?php } elseif (isset($agent) && $agent->matchmode == "mlonly") { ?>
                                        <?php $mlonly = "selected"?>
                                    <?php } ?>
                                    <option value="hybird" <?php echo $hybird?>><?php echo _l('mlsetting_select_hybird')?></option>
                                    <option value="mlonly" <?php echo $mlonly?>><?php echo _l('mlsetting_select_mlonly')?></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h4><?php echo _l('agent_threshold')?></h4>
                            <p><?php echo _l('agent_threshold_note')?></p>
                            <?php $value=( isset($agent) ? $agent->threshold : ''); ?>
                            <input name="threshold" class="form-control" value="<?php echo $value?>"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane" id="importexport">
            <h1>Coming soon...</h1>
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

    function copyToClipboard(element) {
        var $temp = $("<input>");
        $("body").append($temp);
        $temp.val($(element).val()).select();
        document.execCommand("copy");
        $temp.remove();
    }
</script>
