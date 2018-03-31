<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body _buttons">
                        <?php if (has_permission('echelon','','create')) { ?>
                            <a href="#" data-url="<?php echo admin_url()?>/intents/intent" data-toggle="modal" data-target="#new-intent" class="btn btn-info mright5 test pull-left display-block">
                                <?php echo _l('new_intent'); ?></a>
                        <?php } ?>
                    </div>
                </div>
                <div class="panel_s">
                    <div class="panel-body">
                        <div class="clearfix"></div>
                        <?php render_datatable(array(
                            _l('intents_dt_intent_name'),
                            _l('options')
                        ),'intents'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- New Intent Modal-->
<div class="modal fade new-intent" id="new-intent" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><?php echo _l('new_intent'); ?></h4>
            </div>
            <div class="modal-body">
                <form action="" class="intent-form" autocomplete="off" enctype="multipart/form-data" method="post" accept-charset="utf-8" novalidate="novalidate">
                    <input type="hidden" name="is_admin" value="<?php echo is_admin()?>"/>
                    <div class="form-group">
                        <label for="intent_name"><?php echo _l('intent_name'); ?></label>
                        <input type="text" class="form-control" name="intent_name" id="intent_name" value="">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                <?php if(has_permission('intents','','create')){ ?>
                    <a href="#" class="btn btn-info" onclick="new_intent(); return false;"><?php echo _l('confirm'); ?></a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<!--./new intent modal-->
<?php init_tail(); ?>
<script>

    var title_text = "<?php echo sprintf(_l('delete_confirmation'),_l('intent'));?>";
    var exRowTable;

    $(function(){
        exRowTable = initDataTable('.table-intents');

        /** Validate Intent Form*/
        _validate_form($('.intent-form'),
            {intent_name:'required'}
        );

        $('#new-intent').on('show.bs.modal', function(e) {
            var invoker = $(e.relatedTarget);
            var url = $(invoker).data('url');

            $('#new-intent form').attr('action',url);
        });


        $('.table-intents tbody').on('click', '.row-details', function () {

            var tr = $(this).closest('tr');
            var row = exRowTable.row( tr );
            var id = $(this).data('id');

            if ( row.child.isShown() ) {
                row.child.hide();
                tr.removeClass('shown');
                $(this).removeClass('fa-minus-square-o');
                $(this).addClass('fa-plus-square-o');
            }
            else {
                row.child( format(row.data(),id) ).show();
                tr.addClass('shown');
                $(this).removeClass('fa-plus-square-o');
                $(this).addClass('fa-minus-square-o');
            }
        });
    });

    function format ( rowData,intentid ) {
        var div = $('<div/>').addClass( 'table child-'+intentid );

        $.ajax( {
            type: 'GET',
            url: admin_url + 'intents/getfollowupintent/'+intentid,
            dataType: 'json',
            success: function ( json ) {
                html =      '<table class="table table-hover tblchild-'+intentid+'">';
                html +=     '<tbody></tbody>';
                html +=     '</table>';
                div.html(html);

                var ctrbtn;

                $.each(json, function (i, e) {

                    $.ajax({
                        type: 'GET',
                        url: admin_url + 'intents/getfollowupintent/' + e.id,
                        dataType: 'json',
                        success: function (followup) {
                            ctrbtn = '';
                            if (followup.length != 0) {
                                ctrbtn = 'fa fa-plus-square-o control';

                            }

                            htmlRow =     '<tr class="child-row-'+e.id+' details_control details_control_id-'+intentid+'-'+i+'" data-id="'+ e.id+'" role="row">';
                            htmlRow +=     '<td onclick="getDetails(this,\''+ e.id+'\')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="'+ctrbtn+'"></i>&nbsp;&nbsp;<i class="fa fa-level-down text-info"></i>&nbsp;&nbsp;<i class="fa fa-circle-thin text-info"></i>&nbsp;&nbsp;'+e.intent_name+'</td>';
                            htmlRow += '<td><button type="button" data-toggle="modal" data-target="#new-intent" data-url="<?php echo admin_url().'intents/followup/'?>' + e.id + '" class="btn btn-link fa fa-plus"><?php echo _l("link_followup")?></button> ';
                            htmlRow +=     '<a href="<?php echo admin_url().'intents/intent/'?>'+e.id+'" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a> ' ;
                            htmlRow +=    '<a href="#" class="btn btn-danger btn-icon" data-id="'+e.id+'" data-url="<?php echo admin_url().'intents/delete'?>" onclick="deleteIntent(this)"><i class="fa fa-remove"></i></a></td>';
                            htmlRow +=     '</tr>';
                            if (followup.length != 0) {
                                htmlRow += '<tr id="row-' + e.id + '"><td colspan="3"></td></tr>';
                            }

                            $('.tblchild-'+intentid+' tbody').append(htmlRow);
                        }
                    });

                });
            }
        } );

        return div;
    }

    function getDetails(element,intentid){

        var activeRowCount = $('tr.active-'+intentid).length;
        var div = $('<div/>').addClass( 'table child-'+intentid );

        if (activeRowCount){

            $('.child-row-'+intentid).removeClass('active-'+intentid);
            $('#row-'+intentid).html('<td colspan="3"></td>');

            $(element).find('i.control').removeClass('fa-minus');
            $(element).find('i.control').addClass('fa-plus');

        } else {
            $(element).find('i.control').removeClass('fa-plus');
            $(element).find('i.control').addClass('fa-minus');

            $.ajax( {
                type: 'GET',
                url: admin_url + 'intents/getfollowupintent/'+intentid,
                dataType: 'json',
                success: function ( json ) {

                    html =      '<table class="table table-hover tblchild-'+intentid+'">';
                    html +=     '<tbody></tbody>';
                    html +=     '</table>';
                    div.html(html);

                    $('.child-row-'+intentid).addClass('active-'+intentid);
                    var ctrbtn;

                    $.each(json, function (i, e) {

                        $.ajax({
                            type: 'GET',
                            url: admin_url + 'intents/getfollowupintent/' + e.id,
                            dataType: 'json',
                            success: function (followup) {
                                ctrbtn = '';
                                if (followup.length != 0) {
                                    ctrbtn = 'fa fa-plus-square-o control';

                                }

                                htmlRow =     '<tr class="child-row-'+e.id+' details_control details_control_id-'+intentid+'-'+i+'" data-id="'+ e.id+'" role="row">';
                                htmlRow +=     '<td onclick="getDetails(this,\''+ e.id+'\')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="'+ctrbtn+'"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-level-down text-info"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-circle-thin text-info"></i>&nbsp;&nbsp;'+e.intent_name+'</td>';
                                htmlRow += '<td><button type="button" data-toggle="modal" data-target="#new-intent" data-url="<?php echo admin_url().'intents/followup/'?>' + e.id + '" class="btn btn-link fa fa-plus"><?php echo _l("link_followup")?></button> ';
                                htmlRow +=     '<a href="<?php echo admin_url().'intents/intent/'?>'+e.id+'" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a> ' ;
                                htmlRow +=    '<a href="#" class="btn btn-danger btn-icon" data-id="'+e.id+'" data-url="<?php echo admin_url().'intents/delete'?>" onclick="deleteIntent(this)"><i class="fa fa-remove"></i></a></td>';
                                htmlRow +=     '</tr>';
                                if (followup.length != 0) {
                                    htmlRow += '<tr id="row-' + e.id + '"><td colspan="3"></td></tr>';
                                }

                                $('.tblchild-'+intentid+' tbody').append(htmlRow);
                            }
                        });

                    });
                }
            } );

            $('#row-'+intentid+' td').append(div);
        }

    }

    function deleteIntent(element){


        var id = $(element).data('id');
        var url = $(element).data('url');

        swal({
                title: "<?php echo _l('confirmation');?>",
                text: title_text,
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function(isConfirm) {
                if (isConfirm) {
                    $.post(url+'/'+id).done(function(response) {
                        response = JSON.parse(response);
                        if (response.success == true) {
                            $('.table-intents').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "success");
                        } else {
                            $('.table-intents').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "warning");
                        }
                    });
                } else {
                    swal("Cancelled", "Cancelled", "error");
                }
            });

        return false;
    }

    function new_intent()
    {
        $('.intent-form').submit();
    }
</script>
</body>
</html>