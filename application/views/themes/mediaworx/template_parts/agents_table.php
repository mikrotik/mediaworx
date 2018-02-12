<?php $table_data = array(
    _l('agent_name'),
    _l('options'));

render_datatable($table_data, 'agents');
?>
<script>
    $(function() {
        var exRowTable = $('.table-agents').DataTable({
            responsive: true,
            ajax: site_url + 'agents/list_agents/'+client_id,
            language: {
                processing: '<div class="dt-loader">Loading...</div>'
            },
            columns: [
                { 'aaData': 'agent_name' },
                { 'aaData': 'options' }
            ],
            "autoWidth": false,
            processing: true,
            order: [[0, 'desc']]
        });
    });

    function deleteAgent(element){


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
                            $('.table-agents').DataTable().ajax.reload();
                            swal("Deleted!", response.message, "success");
                        } else {
                            $('.table-agents').DataTable().ajax.reload();
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
