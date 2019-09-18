/**
 * Created by Bony on 10/23/2017.
 */
var FormValidation = function () {
    var e = function () {
            var e = $("#form_b"),
                r = $(".alert-danger", e),
                i = $(".alert-success", e);

            e.validate({
                errorElement: "span", errorClass: "help-block help-block-error",
                focusInvalid: !1, ignore: "", messages: {
                    select_multi: {
                        maxlength: jQuery.validator.format("Max {0} items allowed for selection"),
                        minlength: jQuery.validator.format("At least {0} items must be selected")
                    }
                }, rules: {

                    //app reg
                    appname: {
                        minlength: 2,
                        required: !0,
                        maxlength:55,
                        checkSpacedEngname: true,
                    },
                    appnamebng:{
                        minlength: 2,
                        required: !0,
                        maxlength:55,
                        checkSpacedBngname: true,
                    },
                    email: {required: !0, email: !0},
                    link: {required: !0, url: !0},
                    redirect_url: {required: !0, url: !0},
                    default_page_url:{required: !0, url: !0},
                    logout_url:{required: !0, url: !0},
                    mobile: {
                        number: !0,
                        minlength: 11
                    },
                    digits: {required: !0, digits: !0},
                    select: {required: !0},
                    select_multi: {
                        required: !0, minlength: 1,
                        maxlength: 3
                    },
                    email: {
                        required: true
                    },
                    subject: {
                        required: true,
                        maxlength: 40
                    },
                    message:{
                        required: true
                    }



                },  messages: {
                    appname: {
                        required: "Appname in English is required",
                        minlength: "Enter atleast 3 Charecter",
                        maxlength: "Name Can not be over 15 Charecter"
                    },
                    appnamebng: {
                        required: "Appname in Bangla is required",
                        minlength: "Enter atleast 3 Charecter",
                        maxlength: "Name Can not be over 115 Charecter"
                    },

                },
                invalidHandler: function (e, t) {
                    i.hide(), r.show(), App.scrollTo(r, -200)
                },
                highlight: function (e) {
                    $(e).closest(".form-group").addClass("has-error")
                },
                unhighlight: function (e) {
                    $(e).closest(".form-group").removeClass("has-error")
                },
                success: function (e) {
                    e.closest(".form-group").removeClass("has-error")

                },
                submitHandler: function (e) {
                    i.show(), r.hide(),e.submit()

                }
            });
        },

        t = function () {
            jQuery().wysihtml5 && $(".wysihtml5").size() > 0 && $(".wysihtml5").wysihtml5({stylesheets: ["../assets/global/plugins/bootstrap-wysihtml5/wysiwyg-color.css"]})
        };
    $.validator.addMethod('checkEngname', function(value, element) {
        return this.optional(element) ||  (/^[a-zA-Z0-9]*$/.test(value));

    }, " No space or Number or  Special Charecter or  Bangla  character is allowed");

    $.validator.addMethod('checkBngname', function(value, element) {
        return this.optional(element) || (!/\s/g.test(value)  &&!/[^\u0980-\u09ff]/.test(value));

    }, " No space or Number or  No  Special Charecter or  English character is allowed");


    $.validator.addMethod('checkSpacedEngname', function(value, element) {
        return this.optional(element) || (/^[a-zA-Z0-9\s]*$/.test(value));



    }, "No Bangla  character or Special Charecter or Number  is allowed");


    $.validator.addMethod('checkSpacedBngname', function(value, element) {
        return this.optional(element) || (!/[^\u0980-\u09ff!/\s]/.test(value));

    }, "No English character or Special Charecter or Number  is allowed");

    return {
        init: function () {
            t(), e()
        }
    }
}();



jQuery(document).ready(function () {
    console.log("---------------------start: form validation file called ----------------------------");
    FormValidation.init()
    console.log("---------------------end: form validation file called ----------------------------");


});
