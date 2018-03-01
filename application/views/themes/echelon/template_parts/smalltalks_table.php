<?php $table_data = array(
    _l('small_talk'),
    _l('options'));

render_datatable($table_data, 'small-talks');
?>
<script>
    $(function() {
        var exRowTable = $('.table-small-talks').DataTable({
            responsive: true,
            ajax: site_url + 'smalltalk/list_smalltalks/'+client_id,
            language: {
                processing: '<div class="dt-loader">Loading...</div>'
            },
            columns: [
                { 'aaData': 'small_talk_name' },
                { 'aaData': 'options' }
            ],
            "autoWidth": false,
            processing: true,
            order: [[0, 'desc']]
        });
    });

    function deleteSmalltalk(element){


        var id = $(element).data('id');
        var url = $(element).data('url');

        swal({
                title: "<?php echo _l('confirmation');?>",
                text: "<?php echo sprintf(_l('delete_warning'),_l('small_talk'));?>",
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
                            $('.table-small-talks').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "success");
                        } else {
                            $('.table-small-talks').DataTable().ajax.reload();
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