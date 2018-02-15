<?php $table_data = array(
    '',
    _l('intent_name'),
    _l('options'));

render_datatable($table_data, 'intents');
?>
<script>
    var exRowTable;
    var intentrows = 0;
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
                {
                    className:      'details-control',
                    orderable:      false,
                    aaData:           'controllers',
                    defaultContent: ''
                },
                { 'aaData': "intent_name"},
                { 'aaData': 'options' }
            ],
            "autoWidth": false,
            processing: true,
            order: [[1, 'asc']]
        });

        $('.table-intents tbody').on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = exRowTable.row( tr );
            var intentid = $(this).find('i').data('intent');



            if ( row.child.isShown() ) {
                row.child.hide();
                tr.removeClass('shown');
                $(this).find('i').removeClass('fa-minus');
                $(this).find('i').addClass('fa-plus');
            }
            else {
                row.child( format(row.data(),intentid) ).show();
                tr.addClass('shown');
                $(this).find('i').removeClass('fa-plus');
                $(this).find('i').addClass('fa-minus');
            }
        } );
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
                    htmlRow =     '<tr class="child-row-'+e.id+' details_control details_control_id-'+intentid+'-'+i+'" data-id="'+ e.id+'" role="row">';
                    htmlRow +=     '<td onclick="getDetails(this,\''+ e.id+'\')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-plus control"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-level-down text-info"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-circle-thin text-info"></i>&nbsp;&nbsp;'+e.intent_name+'</td>';
                    htmlRow +=     '<td><a href="<?php echo site_url().'intents/followup/'?>'+e.id+'" class="btn btn-warning btn-icon"><i class="fa fa-random"></i></a> ' ;
                    htmlRow +=     '<a href="<?php echo site_url().'intents/intent/'?>'+e.id+'" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a> ' ;
                    htmlRow +=    '<a href="#" class="btn btn-danger btn-icon" data-id="'+e.id+'" data-url="<?php echo site_url().'intents/delete'?>" onclick="deleteIntent(this)"><i class="fa fa-remove"></i></a></td>';
                    htmlRow +=     '</tr>';
                    htmlRow += '<tr id="row-'+ e.id+'"><td colspan="3"></td></tr>';

                    $('.tblchild-'+intentid+' tbody').append(htmlRow);

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
                url: site_url + 'intents/getfollowupintent/'+intentid,
                dataType: 'json',
                success: function ( json ) {

                    html =      '<table class="table table-hover tblchild-'+intentid+'">';
                    html +=     '<tbody></tbody>';
                    html +=     '</table>';
                    div.html(html);

                    $('.child-row-'+intentid).addClass('active-'+intentid);


                    $.each(json, function (i, e) {
                        htmlRow =     '<tr class="child-row-'+e.id+' details_control details_control_id-'+intentid+'-'+i+'" data-id="'+ e.id+'" role="row">';
                        htmlRow +=     '<td onclick="getDetails(this,\''+ e.id+'\')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-plus control"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-level-down text-info"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-circle-thin text-info"></i>&nbsp;&nbsp;'+e.intent_name+'</td>';
                        htmlRow +=     '<td><a href="<?php echo site_url().'intents/followup/'?>'+e.id+'" class="btn btn-warning btn-icon"><i class="fa fa-random"></i></a> ' ;
                        htmlRow +=     '<a href="<?php echo site_url().'intents/intent/'?>'+e.id+'" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a> ' ;
                        htmlRow +=    '<a href="#" class="btn btn-danger btn-icon" data-id="'+e.id+'" data-url="<?php echo site_url().'intents/delete'?>" onclick="deleteIntent(this)"><i class="fa fa-remove"></i></a></td>';
                        htmlRow +=     '</tr>';

                        $('.tblchild-'+intentid+' tbody').append(htmlRow);
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
                title: "Are you sure?",
                text: "You will not be able to recover this agent!",
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
