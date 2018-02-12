<?php $table_data = array(
    _l('intent_name'),
    _l('options'));

render_datatable($table_data, 'intents');
?>
<script>
    $(function() {
        var exRowTable = $('.table-intents').DataTable({
            responsive: true,
            ajax: site_url + 'intents/list_intents/'+client_id,
            language: {
                processing: '<div class="dt-loader">Loading...</div>'
            },
            columns: [
                { 'aaData': 'intent_name' },
                { 'aaData': 'options' }
            ],
            "autoWidth": false,
            processing: true,
            order: [[0, 'desc']]
        });
    });

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
