<?php init_head(); ?>
    <div id="wrapper">
        <div class="content">
            <div class="row">
                <div class="col-md-12">
                    <?php if(has_permission('intents','','create')){ ?>
                        <div class="panel_s">
                            <div class="panel-body _buttons">
                                <button type="button" class="btn btn-info pull-left display-block" onclick="$('.intent-form').submit();"><?php echo _l('save'); ?></button>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="panel_s">
                        <div class="panel-body">
                            <?php echo form_open_multipart($this->uri->uri_string(),array('class'=>'intent-form','autocomplete'=>'off')); ?>
                            <input type="hidden" name="is_default" value="1"/>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                                        <input type="text" class="form-control" name="intent_name" id="intent_name" value="<?php echo set_value('intent_name',$intent->intent_name); ?>">
                                        <?php echo form_error('intent_name'); ?>
                                    </div>
                                    <br/>
                                    <h3>Context</h3>
                                </div>
                            </div>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php init_tail(); ?>