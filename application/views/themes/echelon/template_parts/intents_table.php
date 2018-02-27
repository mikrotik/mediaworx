<?php $table_data = array(
    _l('intents_intent_name'),
    _l('options'));

render_datatable($table_data, 'intents');
?>
<script>
    var exRowTable;
    var ctrbtn;

    $(function() {
        exRowTable = $('.table-intents').DataTable({
            responsive: true,
            ajax: site_url + 'intents/list_intents/'+client_id,
            language: {
                processing: '<div class="dt-loader">Loading...</div>'
            },
            createdRow: function (row, aaData, index) {

                $(row).addClass('main-row');
                $(row).attr('data-id',index);
            },
            columns: [
                { 'aaData': 'intent_name' },
                { 'aaData': 'options' }
            ],
            "autoWidth": false,
            processing: true,
            order: [[1, 'asc']]
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
            url: site_url + 'intents/getfollowupintent/'+intentid,
            dataType: 'json',
            success: function ( json ) {
                html =      '<table class="table table-hover tblchild-'+intentid+'">';
                html +=     '<tbody></tbody>';
                html +=     '</table>';
                div.html(html);

                $.each(json, function (i, e) {

                    $.ajax({
                        type: 'GET',
                        url: site_url + 'intents/getfollowupintent/' + e.id,
                        dataType: 'json',
                        success: function (followup) {
                            ctrbtn = '';
                            if (followup.length != 0){
                                ctrbtn = 'fa fa-plus-square-o';
                            }

                            htmlRow =     '<tr class="child-row-'+e.id+'" role="row">';
                            htmlRow +=     '<td><i class="'+ctrbtn+' row-details" data-id="'+ e.id+'"></i>&nbsp;&nbsp;<i class="fa fa-level-down text-info"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-circle-thin text-info"></i>&nbsp;&nbsp;'+e.intent_name+'</td>';
                            htmlRow +=     '<td><button type="button" data-toggle="modal" data-target="#new-intent" data-url="<?php echo site_url().'intents/followup/'?>'+e.id+'" class="btn btn-link fa fa-plus"><?php echo _l("link_followup")?></button> ' ;
                            htmlRow +=     '<a href="<?php echo site_url().'intents/intent/'?>'+e.id+'" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a> ' ;
                            htmlRow +=    '<a href="#" class="btn btn-danger btn-icon" data-id="'+e.id+'" data-url="<?php echo site_url().'intents/delete'?>" onclick="deleteIntent(this)"><i class="fa fa-remove"></i></a></td>';
                            htmlRow +=     '</tr>';

                            console.log(htmlRow);
                            $('.tblchild-'+intentid+' tbody').append(htmlRow);

                        }
                    });
                });
            }
        } );

        return div;
    }


    function deleteIntent(element){


        var id = $(element).data('id');
        var url = $(element).data('url');

        swal({
                title: "<?php echo _l('confirmation');?>",
                text: "<?php echo sprintf(_l('delete_warning'),_l('intent'));?>",
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
</script>