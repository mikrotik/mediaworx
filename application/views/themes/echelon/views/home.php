<!-- Main content -->
<section class="content">

    <div class="col-md-5">
        <!-- Default box -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title"><?php echo $client->company?></h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                            title="Collapse">
                        <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                </div>
            </div>
            <div class="box-body">
                <!-- chatbox-->
                <div class="panel panel-primary" style="border:0px">
                    <div class="panel-heading top-bar">
                        <div class="col-md-8 col-xs-8">
                            <h3 class="panel-title"><span class="glyphicon glyphicon-comment" style="margin-right:6px;"></span>College Enquiry Chat</h3>
                        </div>
                    </div>


                    <div class="panel-body msg_container_base">
                    </div>
                </div>
                <!-- ./chatbox-->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <!--CHAT USER BOX-->
                <div class="panel-footer">
                    <div class="input-group" id="myForm">
                        <input id="btn-input" type="text" name="usersay" class="form-control input-sm chat_input" placeholder="Write your message here...">
                        <span class="input-group-btn">
                        <button class="btn btn-primary btn-sm" id="submit" type="button">Send</button>
                        </span>
                    </div>
                </div>
            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->
    </div>

    <div class="col-md-7">
        <!-- Default box -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">JSON Response</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                            title="Collapse">
                        <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                </div>
            </div>
            <div class="box-body bot-json">
                <pre></pre>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">

            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->
    </div>

</section>
<script>
    $(function(){

        $('.btn-sm').on('click',function(){

            var usersay = $('input[name=\'usersay\']').val();


            if (usersay != "") {

                MsgSent = '<div class="row msg_container base_sent">';
                MsgSent += '    <div class="col-md-10 col-xs-10">';
                MsgSent += '        <div class="messages msg_sent">';
                MsgSent += '        <p>'+usersay+'</p>';
                MsgSent += '        </div>';
                MsgSent += '    </div>';
                MsgSent += '</div>';
                $('.msg_container_base').append(MsgSent);

                $(".msg_container_base").stop().animate({ scrollTop: $(".msg_container_base")[0].scrollHeight}, 1000);

                $.ajax({
                    type: 'POST',
                    url: site_url+'clients/chatbot',
                    data: 'usersay=' + usersay.toString(),
                    dataType: 'json',
                    beforeSend: function () {

                        MsgThinking = '<div class="row msg_container base_receive writing">';
                        MsgThinking += '    <div class="col-md-10 col-xs-10">';
                        MsgThinking += '        <div class="messages msg_receive">';
                        MsgThinking += '        <p class="thinking">Thinking</p>';
                        MsgThinking += '        </div>';
                        MsgThinking += '    </div>';
                        MsgThinking += '</div>';
                        $('.msg_container_base').append(MsgThinking);
                    },
                    success: function (json) {
                        $('.writing').remove();

                        MsgRecieve = '<div class="row msg_container base_receive">';
                        MsgRecieve += '    <div class="col-md-10 col-xs-10">';
                        MsgRecieve += '        <div class="messages msg_receive">';
                        MsgRecieve += '        <p>'+json.speech+'</p>';
                        MsgRecieve += '        </div>';
                        MsgRecieve += '    </div>';
                        MsgRecieve += '</div>';
                        $('.msg_container_base').append(MsgRecieve);

                        $('input[name=\'usersay\']').val('');
                        $('input[name=\'usersay\']').focus();

                        var jsonObj = JSON.parse(json.obj);
                        var jsonPretty = JSON.stringify(jsonObj, null, '\t');

                        $('.bot-json pre').html(jsonPretty);

                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        if (xhr.status != 0) {
                            alert(xhr.status + "\r\n" + thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    }

                });
            }
        });
    });

</script>