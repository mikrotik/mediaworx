<?php $table_data = array(
    _l('entities_entity_name'),
    _l('options'));

render_datatable($table_data, 'entities');
?>
<script>
    $(function() {
        var exRowTable = $('.table-entities').DataTable({
            responsive: true,
            ajax: site_url + 'entities/list_entities/'+client_id,
            language: {
                processing: '<div class="dt-loader">Loading...</div>'
            },
            columns: [
                { 'aaData': 'entity_name' },
                { 'aaData': 'options' }
            ],
            "autoWidth": false,
            processing: true,
            order: [[0, 'desc']]
        });
    });

    function deleteEntity(element){


        var id = $(element).data('id');
        var url = $(element).data('url');

        swal({
                title: "<?php echo _l('confirmation');?>",
                text: "<?php echo sprintf(_l('delete_warning'),_l('entity'));?>",
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
                            $('.table-entities').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "success");
                        } else {
                            $('.table-entities').DataTable().ajax.reload();
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