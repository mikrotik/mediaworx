$(function(){


});

// General validate form function
function _validate_form(form, form_rules, submithandler) {

    var f = $(form).validate({
        rules: form_rules,
        messages: {},
        ignore: [],
        submitHandler: function(form) {
            if (typeof(submithandler) !== 'undefined') {
                submithandler(form);
            } else {
                return true;
            }
        }
    });

    var custom_required_fields = $(form).find('[data-custom-field-required]');

    if (custom_required_fields.length > 0) {
        $.each(custom_required_fields, function() {
            $(this).rules("add", {
                required: true
            });
            var name = $(this).attr('name');
            var label = $(this).parents('.form-group').find('[for="' + name + '"]');
            if (label.length > 0) {
                if (label.find('.req').length == 0) {
                    label.prepend(' <small class="req text-danger">* </small>');
                }
            }
        });
    }

    $.each(form_rules, function(name, rule) {
        if ((rule == 'required' && !jQuery.isPlainObject(rule)) || (jQuery.isPlainObject(rule) && rule.hasOwnProperty('required'))) {
            var label = $(form).find('[for="' + name + '"]');
            if (label.length > 0) {
                if (label.find('.req').length == 0) {
                    label.prepend(' <small class="req text-danger">* </small>');
                }
            }
        }
    });

    return false;
}