<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Agents
        <small>Manager</small>
    </h1>
</section>
<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-address-card-o"></i> <?php if (isset($title)){ echo $title; } ?></h3>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-info pull-right" onclick="$('#agent-form').submit();"> <?php echo _l('save'); ?></button>
            </div>
        </div>
    </div>
    <div class="box box-default">
        <div class="box-header with-border">
            <?php
            echo form_open_multipart($this->uri->uri_string(),array('id'=>'agent-form','class'=>'_agent-form'));
            ?>
            <!-- Custom Tabs -->
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab_1" data-toggle="tab">General</a></li>
                    <?php if ($agent) {?>
                    <li><a href="#tab_2" data-toggle="tab">Languages</a></li>
                    <li><a href="#tab_3" data-toggle="tab">ML Settings</a></li>
                    <li><a href="#tab_4" data-toggle="tab">Import & Export</a></li>
                    <?php } ?>
                </ul>
            </div>
            <div class="tab-content">
                <div class="tab-pane active" id="tab_1">
<!-- General tab-->
                    <input type="hidden" name="userid" value="<?php echo get_client_user_id() ?>"/>
                    <input type="hidden" name="agentid" value="<?php echo set_value('agentid',$agent->agentid); ?>"/>
                    <div class="row">
                        <div class="col-md-12">
                            <label for="agent_name"><?php echo _l('agents_name'); ?></label>
                            <input type="text" class="form-control" name="agent_name" id="agent_name" value="<?php echo set_value('agent_name',$agent->agent_name); ?>">
                            <?php echo form_error('agent_name'); ?>
                        </div>
                    </div>
                    <div class="row">
                        <?php if (!$agent){?>
                            <div class="col-md-6">
                                <label for="default_language" class="control-label"><?php echo _l('localization_default_language'); ?>
                                </label>
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
                                <span class="text-muted">Primary language for your agent. Other languages can be added later.</span>
                                <?php echo form_error('default_language'); ?>
                            </div>
                        <?php } else { ?>
                            <div class="col-md-4">
                                <?php if($agent->agent_image == NULL){ ?>
                                    <div class="form-group">
                                        <label for="agent_image" class="agent-image"><?php echo _l('client_profile_image'); ?></label>
                                        <input type="file" name="agent_image" class="form-control" id="agent_image">
                                    </div>
                                <?php } ?>
                                <?php if($agent->agent_image != NULL){ ?>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-8">
                                                <img src="<?php echo agent_image_url($agent->agentid,'thumb'); ?>" class="client-profile-image-thumb">
                                            </div>
                                            <div class="col-md-3 text-right">
                                                <a href="<?php echo site_url('agents/remove_agent_image/'.$agent->agentid); ?>"><i class="fa fa-remove text-danger"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label for="description" class="description"><?php echo _l('agent_description'); ?></label>
                                    <?php $value=( isset($agent) ? $agent->description : ''); ?>
                                    <textarea name="description" class="form-control" rows="10"><?php echo $value?></textarea>
                                </div>
                            </div>
                        <?php } ?>
                        <div class="col-md-6 <?php echo isset($agent) ? "col-md-offset-4" : ""?>">
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
                            <span class="text-muted">Date and time requests are resolved using this timezone.</span>
                            <?php echo form_error('default_timezone'); ?>
                        </div>
                    </div>
                    <br/>
                    <div class="row">
                        <div class="col-md-12">
                            <label for="google_project"><?php echo _l('agents_google_project'); ?></label>
                            <input type="text" class="form-control" name="google_project" id="google_project" value="<?php echo set_value('google_project',$agent->google_project); ?>">
                            <span class="text-muted">Enables Cloud functions, Actions on Google and permissions management.</span>
                            <?php echo form_error('google_project'); ?>
                        </div>
                    </div>
                    <?php if ($agent) { ?>
                        <br/>
                        <div class="row">
                            <div class="col-md-12"><h4>API KEYS</h4></div>
                            <div class="col-md-6">
                                <div class="form-group input-group">
                                    <span class="input-group-addon bg-blue-active">Client access token</span>
                                    <?php $value=( isset($agent) ? $agent->client_access_token : ''); ?>
                                    <input class="form-control" value="<?php echo $value?>" disabled="" type="text">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group input-group">
                                    <span class="input-group-addon bg-blue-active">Developer access token</span>
                                    <?php $value=( isset($agent) ? $agent->developer_access_token : ''); ?>
                                    <input class="form-control" value="<?php echo $value?>" disabled="" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12"><h4>LOGGING</h4></div>
                            <div class="col-md-3">
                                <div class="onoffswitch">
                                    <?php
                                    if (isset($agent) && $agent->logging){
                                        $checked = 'checked';
                                    }
                                    ?>
                                    <input type="checkbox" data-switch-url="<?php echo site_url()?>agents/change_agent_logging" name="onoffswitch" class="onoffswitch-checkbox" id="c_<?php echo $agent->agentid?>" data-id="<?php echo $agent->agentid?>" <?php echo $checked?>>
                                    <label class="onoffswitch-label" for="c_<?php echo $agent->agentid?>"></label>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
<!--general tab-->
                </div>
                <?php if ($agent) {?>
                <div class="tab-pane" id="tab_2">
                    <div class="col-md-6">
                        <label for="default_language" class="control-label"><?php echo _l('localization_default_language'); ?>
                        </label>
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
                        <span class="text-muted">Primary language for your agent. Other languages can be added later.</span>
                        <?php echo form_error('default_language'); ?>
                    </div>
                </div>
                <div class="tab-pane" id="tab_3">
                    <div class="row">
                        <div class="col-md-12">
                            <h4>MATCH MODE</h4>
                            <p>Select the match mode that suits your agent best.</p>
                            <ul>
                                <li><i class="fa fa-arrow-right"></i> Use the <strong>Hybrid (Rule-based and ML)</strong> mode for agents with a small number of examples/templates in intents, especially the ones using composite entities.</li>
                                <li><i class="fa fa-arrow-right"></i> Use <strong>ML only</strong> mode for agents with a large number of examples in intents, especially the ones using @sys.any</li>
                            </ul>
                            <br/>
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
                                <option value="hybird" <?php echo $hybird?>>Hybird (Rule-based and ML)</option>
                                <option value="mlonly" <?php echo $mlonly?>>ML Only ( Non-rule-based )</option>
                            </select>
                            <hr/>
                            <h4>ML Classification Threshold</h4>
                            <p>Define the threshold value for the confidence score. If the returned value is less than the threshold value, then a fallback intent will be triggered or, if there is no fallback intents defined, no intent will be triggered.</p>
                            <?php $value=( isset($agent) ? $agent->threshold : ''); ?>
                            <input name="threshold" class="form-control" value="<?php echo $value?>"/>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab_4">
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1">
                            <button class="btn btn-info" type="button"><i class="fa fa-file-zip-o"></i> <b>Export as zip</b></button>
                        </div>
                        <div class="col-md-8">
                            <p>Create a backup of the agent</p>
                        </div>
                    </div>
                    <br/>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1">
                            <button class="btn btn-info" type="button"><i class="fa fa-file-zip-o"></i> <b>Restore from zip</b></button>
                        </div>
                        <div class="col-md-8">
                            <p>Replace the current agent version with a new one. All the intents and entities in the older version will be deleted.</p>
                        </div>
                    </div>
                    <br/>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1">
                            <button class="btn btn-info" type="button"><i class="fa fa-file-zip-o"></i> <b>Import from zip</b></button>
                        </div>
                        <div class="col-md-8">
                            <p>Upload new intents and entities without deleting the current ones. Intents and entities with the same name will be replaced with the newer version.</p>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
        <?php echo form_close(); ?>
    </div>
</section>