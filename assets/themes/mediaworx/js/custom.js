$(function(){

    $('#asidebar_dropdown').on('change',function(e){

        var wt_agent = this.value;

        if ($.isNumeric(wt_agent) == true){

            $.ajax({
                url: site_url + 'agents/change_worktop/'+wt_agent,
                type: 'post',
                dataType: 'json',
                beforeSend: function() {
                },
                complete: function() {

                },
                success: function(html) {

                }
            });
        }
    });
});