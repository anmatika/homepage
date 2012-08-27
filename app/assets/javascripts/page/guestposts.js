/**
 * Created with JetBrains RubyMine.
 * User: antti
 * Date: 8/10/12
 * Time: 10:57 PM
 * To change this template use File | Settings | File Templates.
 */
(function($)
{
    $(document).ready(function() {
        $("form#new_guestpost, form.edit_guestpost").validate({
             rules: {
                "guestpost[message]": "required",
                 "guestpost[email]": {
                     email: true
                 }
             },
             messages:{
                 "guestpost[message]": "Message is required",
                  "guestpost[email]": {
                     email: "Valid email must be given"
                 }
             },
             showErrors: function(errorMap, errorList) {
                 this.defaultShowErrors();
                 // Add class "error_label" to error labels
                 $(this.currentForm).find('label.error').addClass('error_label');
             }
             /*
             invalidHandler: function (form, validator){
                alert("errors: " + validator.numberOfInvalids());
             },
             success: function(l)
             {
                 alert("success");
             },
             submitHandler: function(form){
                 alert("submithandler");
             }
               */

        });
    });

}(jQuery));