<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <div class="box-tools pull-right">
                <button type="button" data-url="<?php echo $this->uri->uri_string()?>/intent" data-toggle="modal" data-target="#new-intent" class="btn btn-info btn-flat btn-sm mright5 test pull-right display-block">
                    <?php echo strtoupper(_l('upload')); ?></button>
                <button type="button" onclick="train()" class="btn btn-default btn-flat btn-sm mright5 test pull-left display-block">
                    <?php echo strtoupper(_l('train')); ?></button>
            </div>
            <br/>
        </div>
        <div class="box-body">
            <div class="col-md-6">
                <div id="training-result"><pre></pre></div>
            </div>
            <div class="col-md-6">
                <div id="vocabulary"></div>
            </div>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->

</section>
<script>
    function train()
    {
        $.ajax({
            type: 'GET',
            url: site_url+'training/train',
            dataType: 'json',
            beforeSend: function () {

            },
            success: function (json) {

                var jsonObj = JSON.parse(json.success);
                var jsonPretty = JSON.stringify(jsonObj, null, '\t');

                $('#training-result pre').html(jsonPretty);

            },
            error: function (xhr, ajaxOptions, thrownError) {
                if (xhr.status != 0) {
                    alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            }

        });
    }
</script>