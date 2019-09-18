


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="html" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">

    <title>OISF Portal</title>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/portal/portal.css" type="text/css"/>
    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/assets/css/portal/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->

    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <%--<link rel="preload" as="style" onload="this.rel='stylesheet'" href="<%=request.getContextPath()%>/assets/global/css/components-md.css" id="style_components" />--%>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/components-md.css"/>


    <!-- Plugin CSS <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"> -->


    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/css/portal/creative.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/assets/css/portal/customportlet.css" rel="stylesheet">

    <style>
        #container h1 a,
        #container h2 a {
            color: #683392 !important;
            font-size: 21px !important;
            font-weight: 700 !important;
            font-family: "Roboto Condensed" !important;
        }

        #container p, #container li {
            color: #404040 !important;
            font-size: 14px !important;
            font-weight: 300 !important;
            font-family: "Roboto" !important;
        }

        #keypoints p, #keypoints li {
            color: #404040 !important;
            font-size: 14px !important;
            font-weight: 300 !important;
            font-family: "Roboto" !important;
        }


    </style>
    <style>
        .first {
            /*margin-top: 55px !important;*/
            margin-bottom: 2%

        }

        .second {
            margin-top: 45px !important;
            /*margin-left: -10px;*/
        }

        .third {
            margin-top: -10px !important;
        }

        .fourth {
            margin-top: 15px !important;
            background-color: #F6F6F6;
        }

        p {
            margin-left: 15px !important;
        }

        pre {
            color: green !important;
            font-weight: 700;

        }

        .urllink {
            color: green !important;
            font-weight: 600 !important;
        }
        .modal.in .modal-dialog {
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            position: absolute;
            float: left;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }
        .fileinput .thumbnail {
            display: inline-block;
            margin-bottom: 5px;
            overflow: hidden;
            text-align: center;
            vertical-align: middle;
        }
        .thumbnail {
            display: block;
            padding: 4px;
            margin-bottom: 20px;
            line-height: 1.42857143;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: border .2s ease-in-out;
            -o-transition: border .2s ease-in-out;
            transition: border .2s ease-in-out;
        }
    </style>

    <%--snackbar--%>
    <style>
        /* The snackbar - position it at the bottom and in the middle of the screen */
        #snackbar {
            visibility: hidden; /* Hidden by default. Visible on click */
            min-width: 250px; /* Set a default minimum width */
            margin-left: -125px; /* Divide value of min-width by 2 */
            background-color: #333; /* Black background color */
            color: #fff; /* White text color */
            text-align: center; /* Centered text */
            border-radius: 2px; /* Rounded borders */
            padding: 16px; /* Padding */
            position: fixed; /* Sit on top of the screen */
            z-index: 1; /* Add a z-index if needed */
            left: 50%; /* Center the snackbar */
            bottom: 50%; /* 30px from the bottom */
        }

        /* Show the snackbar when clicking on a button (class added with JavaScript) */
        #snackbar.show {
            visibility: visible; /* Show the snackbar */

            /* Add animation: Take 0.5 seconds to fade in and out the snackbar.
            However, delay the fade out process for 2.5 seconds */
            -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
            animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }

        /* Animations to fade the snackbar in and out */
        @-webkit-keyframes fadein {
            from {
                bottom: 40%;
                opacity: 0;
            }
            to {
                bottom: 50%;
                opacity: 1;
            }
        }

        @keyframes fadein {
            from {
                bottom: 40%;
                opacity: 0;
            }
            to {
                bottom: 50%;
                opacity: 1;
            }
        }

        @-webkit-keyframes fadeout {
            from {
                bottom: 40%;
                opacity: 1;
            }
            to {
                bottom: 50%;
                opacity: 0;
            }
        }

        @keyframes fadeout {
            from {
                bottom: 40%;
                opacity: 1;
            }
            to {
                bottom: 50%;
                opacity: 0;
            }
        }


    </style>



    <link href="<%=request.getContextPath()%>/assets/css/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="<%=request.getContextPath()%>/assets/global/plugins/bootstrap-toastr/toastr.min.js"></script>
    <%--<script src="<%=request.getContextPath()%>/assets/admin/pages/scripts/ui-toastr.js"></script>--%>
    <%--toastr--%>
    <link href="<%=request.getContextPath()%>/assets/global/plugins/bootstrap-toastr/toastr.min.css" rel="stylesheet" type="text/css" />

    <script>

    </script>


</head>

<body id="page-top" style="position: relative; top: 0px;">

<%@ include file="../includes/portletheader.jsp" %>

<div id="container" class="first">
    <div class="container second">
        <%--<pre style="font-size: 20px"> Home > <a class="urllink" href="<%=request.getContextPath()%>/portal">Service Portal</a> > System Registration </pre>--%>
    </div>
    <div class=" container fourth" style="background-color: whitesmoke ;padding: 2%">

        <!-- The actual snackbar -->
        <div id="snackbar">Thank you for your feedback! We'll review soon.</div>


        <h4>Feedback Form:</h4>

        <form style="margin-top: 2%" method="post" enctype="multipart/form-data" novalidate="novalidate" role="form" class="form-horizontal"
              action="<%=request.getContextPath()%>/portal/feedback" id="form_b">
            <div class="form-body">


                <div class="alert alert-danger display-hide">
                    <button class="close" data-close="alert"></button> You have some form errors. Please check below. </div>
                <div class="alert alert-success display-hide">
                    <button class="close" data-close="alert"></button> Your form validation is successful! </div>


                <div class="form-group row">
                    <label class=" col-md-3 control-label">Email Address <span class="required" aria-required="true"
                                                                                  style="color: red"> * </span></label>

                    <div class="col-md-9">

                        <input required="required" type="email" data-required="1" class="form-control"
                               placeholder="Email Addreess"
                               name="email">


                    </div>

                </div>
                <div class="form-group row">
                    <label class=" col-md-3 control-label">Subject
                        <span class="required" aria-required="true" style="color: red"> * </span>
                    </label>

                    <div class="col-md-9">


                        <input required="required" type="text" data-required="1" class="form-control"
                               placeholder="Subject"
                               name="subject">

                    </div>

                </div>
                <div class="form-group row">
                    <label class=" col-md-3 control-label">Message <span class="required" aria-required="true"
                                                                                 style="color: red"> * </span></label>

                    <div class="col-md-9">


                        <%--<input required="required" type="text" class="form-control" placeholder="Message" name="message">--%>
                        <textarea id="message" name="message" placeholder="Message" class="form-control" required="required"
                                  style="height:200px;width:100%"></textarea>
                    </div>

                </div>

            </div>
            <div class="form-actions">
                <div class="row">
                    <div class="col-md-offset-9 col-md-9 " style="margin-left: 35%">
                        <button type="submit"   id="check"  class="btn btn-success">Submit</button>
                        <a href="/"><button type="button" class="btn btn-danger">Cancel</button></a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<%@ include file="../includes/portletfooter.jsp" %>



<%--<script src="${context}/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"--%>
        <%--type="text/javascript"></script>--%>
<%--<script src="${context}/assets/global/plugins/jquery-validation/js/additional-methods.min.js"--%>
        <%--type="text/javascript"></script>--%>
<%--<script src="${context}/assets/js/common/validation.js" type="text/javascript"></script>--%>
<%--<script type="text/javascript" src="${context}/assets/global/plugins/bootbox/bootbox.min.js"></script>--%>

<script src="<%=request.getContextPath()%>/assets/js/bootstrap-fileinput.js" type="text/javascript"></script>




<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
<%--form validation--%>
<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/common/validation.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/app.min.js" type="text/javascript"></script>


<script>
    function showModal() {
        bootbox.confirm({
            message: '<p class="text-center">Do you want to Register System?</p>',
            title: "",
            size:"small",
            buttons: {
                confirm: {
                    label: 'Confirm',
                    className: 'btn-success'
                },
                cancel: {
                    label: 'Cancel',
                    className: 'btn-danger'
                }
            },
            callback: function (result) {

                if(result == true){

                    $( "#form_b" ).submit();
                    $('.modal.in .modal-dialog').hide();
                    $(".modal.in .modal-dialog .btn").off("click");

                }else{
                    $('.modal.in .modal-dialog').hide();
                    $(".modal.in .modal-dialog .btn").off("click");
                }

            }
        });

    }

    // $("#form_b").validate();


    // $(document).ready(function () {
    //
    //     $('#check').click(function () {
    //
    //         if($('input[name=appname]').val()==""){
    //             // alert("Appname is empty");
    //             var html = "<span class='error' style='color:red;'>This Field Is Requierd</span>"
    //
    //             $('input[name=appname]').siblings('span').remove();
    //             $('input[name=appname]').after( html );
    //             return false;
    //         }
    //         else if($('input[name=appnamebng]').val()==""){
    //             var html = "<span class='error' style='color:red;'>This Field Is Requierd</span>"
    //             $('input[name=appnamebng]').siblings('span').remove();
    //             $('input[name=appnamebng]').after( html );
    //
    //             return false;
    //         }
    //         else if($('input[name=link]').val()==""){
    //             var html = "<span class='error' style='color:red;'>This Field Is Requierd</span>"
    //             $('input[name=link]').siblings('span').remove();
    //             $('input[name=link]').after( html );
    //             return false;
    //         }
    //         else if($('input[name=mobile]').val()==""){
    //             var html = "<span class='error' style='color:red;'>This Field Is Requierd</span>"
    //             $('input[name=mobile]').siblings('span').remove();
    //             $('input[name=mobile]').after( html );
    //             return false;
    //         }
    //         else if($('input[name=idp_url]').val()==""){
    //             var html = "<span class='error' style='color:red;'>This Field Is Requierd</span>"
    //             $('input[name=idp_url]').siblings('span').remove();
    //             $('input[name=idp_url]').after( html );
    //             return false;
    //         }
    //         else if($('input[name=redirect__url]').val()==""){
    //             var html = "<span class='error' style='color:red;'>This Field Is Requierd</span>"
    //             $('input[name=redirect__url]').siblings('span').remove();
    //             $('input[name=redirect__url]').after( html );
    //             return false;
    //         }
    //         else if($('input[name=email]').val()==""){
    //             var html = "<span class='error' style='color:red;'>This Field Is Requierd</span>"
    //             $('input[name=email]').siblings('span').remove();
    //             $('input[name=email]').after( html );
    //             return false;
    //         }
    //         else {
    //             // $("#dialog").dialog({autoOpen : false, modal : true, show : "blind", hide : "blind"});
    //             //
    //             // $("#dialog").open();
    //             showModal();
    //
    //
    //         }
    //
    //
    //
    //     })
    //
    // }
    // );

    $( document ).ready(function() {
        console.log( "ready!" );
    });

    jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
    });



</script>
<script>
    function myFunction() {
        // Get the snackbar DIV
        var x = document.getElementById("snackbar")

        // Add the "show" class to DIV
        x.className = "show";

        // After 3 seconds, remove the show class from DIV
        setTimeout(function () {
            x.className = x.className.replace("show", "");
        }, 3000);
    }

    $(document).ready(function () {
        var success = "${success}";
        if (success.length > 0)
            myFunction();

    })

</script>

</body>
</html>




