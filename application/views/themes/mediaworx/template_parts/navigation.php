<!--
    TODO - Active / Inactive Menu
-->
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?php echo contact_profile_image_url($contact->id,'thumb'); ?>" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p><?php echo $contact->firstname . ' ' .$contact->lastname; ?></p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- agent selector drop down menu -->
        <div class="form-group">
            <select class="form-control" id="asidebar_dropdown"">
            <option value=""><?php echo _l('system_default_string'); ?></option>
            <option disabled>_______________________________</option>
            <?php foreach (get_agents(get_client_user_id()) as $clientAgent) { ?>
                <option value="<?php echo $clientAgent['id']?>"><?php echo $clientAgent['agent_name']?></option>
            <?php } ?>
            <option disabled>_______________________________</option>
            <option value="agents/agent"><?php echo _l('agent_select_new_agent')?></option>
            <option value="agents"><?php echo _l('agent_select_list_agents')?></option>
            </select>
        </div>
        <!-- /.agent selector drop down menu  -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <li>
                <a href="\">
                    <i class="fa fa-th"></i> <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('agents'); ?>"><i class="fa fa-address-card-o fa-fw"></i> <span><?php echo _l('agents');?></span>
                    <span class="pull-right-container">
                      <i class="fa fa-plus pull-right"></i>
                    </span>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('intents'); ?>"><i class="fa fa-commenting fa-fw"></i> <span><?php echo _l('intents');?></span>
                    <span class="pull-right-container">
                      <i class="fa fa-plus pull-right"></i>
                    </span>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('entities'); ?>"><i class="fa fa-sitemap fa-fw"></i> <span><?php echo _l('entities');?></span>
                    <span class="pull-right-container">
                      <i class="fa fa-plus pull-right"></i>
                    </span>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('training'); ?>"><i class="fa fa-graduation-cap fa-fw"></i> <span><?php echo _l('training');?></span>
                    <span class="pull-right-container">
                      <small class="label pull-right bg-navy-active">beta</small>
                    </span>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('integrations'); ?>"><i class="fa fa-refresh fa-fw"></i> <span><?php echo _l('integrations');?></span>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('analytics'); ?>"><i class="fa fa-area-chart fa-fw"></i> <span><?php echo _l('analytics');?></span>
                    <span class="pull-right-container">
                      <small class="label pull-right bg-red">new</small>
                    </span>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('fulfillment'); ?>"><i class="fa fa-flash fa-fw"></i> <span><?php echo _l('fulfillment');?></span>
                </a>
            </li>
            <li class="header"></li>
            <li>
                <a href="<?php echo site_url('smalltalk'); ?>"><i class="fa fa-comments-o fa-fw"></i> <span><?php echo _l('intent_small_talk');?></span>
                </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>