

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="html" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en"><head>

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

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- Plugin CSS <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"> -->


    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/css/portal/creative.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/assets/css/portal/customportlet.css" rel="stylesheet">




    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>

    <%--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">--%>



    <%--start: toast message--%>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>

    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet">
    <%--end: toast message--%>


    <style>
        #container h1 a,
        #container h2 a{
            color: #683392!important;
            font-size: 21px!important;
            font-weight: 700!important;
            font-family: "Roboto Condensed"!important;
        }

        #container p,#container li {
            color: #404040 !important;
            font-size: 14px !important;
            font-weight: 300 !important;
            font-family: "Roboto" !important;
        }
        #keypoints p,#keypoints li{
            color: #404040!important;
            font-size: 14px!important;
            font-weight: 300!important;
            font-family: "Roboto"!important;
        }



    </style>


    <style>
        .first{
            /*margin-top: 55px!important;*/
            margin-bottom: 2%

        }
        .second{
            margin-top: 45px!important;
            /*margin-left: -10px;*/
        }
        .third{
            margin-top: -10px!important;
        }
        .fourth{
            margin-top: 15px!important;
            background-color: #F6F6F6;
        }
        p{
            margin-left: 15px!important;
        }
        pre{
            color: green!important;
            font-weight: 800!important;

        }
        .urllink{
            color: green!important;
            font-weight: 600!important;
        }
    </style>

</head>

<body id="page-top" style="position: relative; top: 0px;">

<!-- Navigation -->
<%@ include file="../includes/portletheader.jsp" %>


<div id="container" class="first">
    <div class="container second" >
        <pre style="font-size: 20px"> Home > <a class="urllink" href="<%=request.getContextPath()%>/portal#service">Services</a> > System Registration</pre>

    </div>
    <div class="container fourth" style="background-color: #F6F6F6;">


        <h2>
            <a class="btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#defination" style="font-size: 25px">What is System Registration
                <span class="caret"></span>

            </a>
        </h2>


        <p></p>
        <%--<div id="keypoints">--%>
        <%--<h2>Key Points</h2>--%>
        <%--<ul>--%>
        <%--<li>Standards are rules establishing how data are described and recorded in a consistent--%>
        <%--format.--%>
        <%--</li>--%>
        <%--<li>Using standards makes data more usable to more than just the project or person that--%>
        <%--created the data.--%>
        <%--</li>--%>
        <%--<li>Standards are useful for integrating data from multiple resources. If the various--%>
        <%--sources agreed upon a standard to begin with, this saves time reconciling any--%>
        <%--differences.--%>
        <%--</li>--%>
        <%--<li>When collecting new data, try to find data standards for the type of data you are--%>
        <%--collecting.--%>
        <%--</li>--%>

        <%--</ul>--%>
        <%--</div>--%>
        <p></p>
        <div id="defination" class="collapse show" >

            <p>System Registration is the process of integrating different services with OISF.
                OISF is the system where different government systems are connected. So if any organizations want to share their services then they
                need to register their services with OISF. To register services firstly an application need to be registered.
                An application can contain few services. </p>

        </div>

        <h2><a class="btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#why"  style="font-size: 25px">
            System Registration in OISF



            <span class="caret"></span></a></h2>
        <div id="why" class="collapse show" >

            <p>The aim of Office Information and service Framework is to improve information and service delivery among government organizations.To share services any organization need to apply first in OISF. After the approval of an application the organization can provide different services. So firstly an application is registered then through the application different services are provided. </p>
            <p>Here is the few steps of application registration in OISF system:</p>
            <ul>
                <li>Step 1: Firstly, the name of the application should be given in English.</li>
                <li>Step 2: Then the name of the application should be given in Bangla.</li>
                <li>Step 3: The application URL is needed from where service will be provided.</li>
                <li>Step 4: The Redirect URL is needed. Because after processing OISF system will redirect to this URL.</li>
                <li>Step 5: A Default Page URL is needed for the redirection mechanism.</li>
                <li>Step 6: A Logout URL is needed for the user to logout from the system.</li>
                <li>Step 7: Mobile number is needed to notify about the related notification.</li>
                <li>Step 8: Email Address is needed to get application code for services.</li>
                <li>Step 9: Notification Mechanism can be choosen from Mobile No or Email.</li>
                <li>Step 10: An application icon can be provided which is not mandatory. </li>

            </ul>

        </div>

        <input type="hidden" id="success" value="${success}">
        <p style="font-size: 20px;font-weight: 700">Click the foillowing <a href="<%=request.getContextPath()%>/portal/servicereg" style="color: red!important;">Link</a>  to register your System</p>



    </div>
</div>
<script>

    $(document).ready(function () {
        //console.log("i am called");
        var x = 0;
        var success = "${param.success}";
        if(success.length>0){

            toastr.options = {
                "closeButton": true,
                "debug": false,
                "positionClass": "toast-bottom-right"
            };
            toastr.success(" আপনার সিস্টেম নিবন্ধন অনুমোদন এর জন্য প্রেরন করা হয়েছে।");
           // console.log("--e !!!!!!!!!! ed --");
        }
        // myFunction();

    })
    jQuery(function(){
        //dom ready codes
        //console.log("i am called");
    });
</script>
<%@ include file="../includes/portletfooter.jsp" %>
</body></html>


