<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico"/>

    <title>OISF Portal</title>


    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/assets/css/portal/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <%--<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">--%>
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/css/portal/creative.min.css" rel="stylesheet">
    <style>





        @import url(http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900);
        @import url(http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700);

        .roboto {
            font-family: "Roboto";
        }

        .roboto-c {
            font-family: "Roboto Condensed";
        }

        .col-md-4 {
            margin-bottom: 2% !important;
        }

        .col-sm-6 {
            margin-bottom: 3% !important;
        }

        .fw-100 {
            font-weight: 100;
        }

        .fw-300 {
            font-weight: 300;
        }

        .fw-400 {
            font-weight: 400;
        }

        .fw-500 {
            font-weight: 500;
        }

        .fw-700 {
            font-weight: 700;
        }

        .fw-900 {
            font-weight: 900;
        }

        header div img {
            width: 100%;
            height: 100%;
        }

        .container {
            max-width: 1160px;
        }

        header {
            position: relative;
            /*top: 74px;*/
            width: 100%;
            height: 150px;
            margin-top: 80px;
        }

        #mainNav {
            /*height: 74px;*/
            position: fixed;
            background-color: #fff;
            /*max-height: 74px;*/
        }

        .carousel-item {
            height: 100%;
            background: no-repeat center center scroll;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        #person img {
            display: block;
            position: relative;
            margin: auto;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }

        .imageoverlaped {
            margin: 0px;
            position: absolute;
            bottom: 0px;
            z-index: 1000;
            background-color: transparent;
            color: black;
            font-weight: bold;
        }

        .tag {
            width: 95%;
            height: 22%;
            margin-left: 5%;
            margin-right: 5%;
            float: left;
            position: absolute;
            left: 0px;
            bottom: 0px;
            z-index: 1000;
            background-color: transparent;
            padding: 5px;
            color: black;
            font-weight: bold;
        }

        .middlecontainer {
            display: flex;
            justify-content: center;
            background: transparent;
            margin-bottom: 20px;
        }

        .middle {
            background: transparent;
            align-self: center;
            padding: 0rem;
        }

        * {
            font-family: 'Roboto Condensed', sans-serif;
        }

        a {
            color: black !important;
        }

        section {
            padding: 4rem !important;
        }

        #contact {
            padding: 0px !important;
            padding-top: 5px !important;
        }

        #person {
            padding: 10px !important;
        }

        #standard {
            padding-bottom: 20px !important;
            padding-top: 50px !important;
            background-color: #F1F5F8;
        }

        #service {
            padding-top: 50px !important;
        }

        #about {
            background-color: #F1F5F8 !important;
            color: black !important;
        }

        #feedback {
            background-color: #F1F5F8 !important;
            color: black !important;
        }

        .light {
            border-color: black !important;
        }

        #about > div > div > div.col-md-4.text-center > h2, #about > div > div > div.col-md-4.text-center > p {
            color: black !important;
        }

        #standrardcontent > div > div > div > div > h4 > a {
            color: #02BDD5 !important;
        }

        .btn-light {
            background-color: #02BDD5 !important;
        }

        /*h1,*/
        /*h2,*/
        /*h3,*/
        /*h4,*/
        /*h5,*/
        /*h6 {*/
        /*font-family: 'Roboto Condensed', sans-serif !important;*/
        /*border: none !important;*/
        /*font-weight: lighter !important;*/
        /*}*/

        .navelecolorbottom {
            /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#1e5799+0,207cca+37,7db9e8+39 */
            background: #692D91;
            /*height: 5px!important;!* Old browsers *!*/
            background: -moz-linear-gradient(top, #692D91 20%, #ffffff 0%, #ffffff 29%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, #692D91 20%, #ffffff 0%, #ffffff 29%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, #692D91 20%, #ffffff 0%, #ffffff 29%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#692D91', endColorstr='#B4B2D7', GradientType=0); /* IE6-9 */
        }

        p {
            color: #404040;
            /*font-weight: 300!important;*/
            font-size: 15px;
            margin: 0px;
        }

        li {
            color: #404040;
        }

        li a {
            color: #404040 !important;
        }

        #service p {
            margin: 0 !important;
            padding: 0 !important;

        }

        #standrardcontent > .row {
            margin-top: 50px;
        }

        .servicecontent {
            margin-top: 50px;
        }

        b, strong {
            font-weight: lighter;
        }

        #mainNav .navbar-nav > li.nav-item > a.nav-link.active, #mainNav .navbar-nav > li.nav-item > a.nav-link:focus.active {
            color: #404040 !important;
        }

        .search-container {
            /*float: right;*/
        }

        .search-container input[type=text] {
            width: 250px;
            height: 30%;
            padding: 6px;
            font-size: 17px;
            border: none;
            border: 1px solid lightgray;
            border-radius: 10px;
        }

        .search-container input[type=text]:focus, .search-container button:focus {
            outline: none;
        }

        .search-container button {
            background: transparent;
            font-size: 22px;
            border: none;
            cursor: pointer;
            color: slategrey;
        }

        .search-container button:hover {
            background: #ccc;
        }

        #carouselExampleIndicators > a.carousel-control-prev {
            opacity: 1 !important;
        }

        #carouselExampleIndicators > a.carousel-control-next {
            opacity: 1 !important;
        }

        .carousel-control-prev img:hover {
            opacity: .3;
        }

        #carouselExampleIndicators > a.carousel-control-next > div > img:hover {
            opacity: .3;
        }
        .active{
        background-color: #fff!important;
        }



        @media (min-width: 800px) {
            #aboutrow {
                display: flex;
                justify-content: space-between;
                height: 100%;
            }

            #abouttext {
                width: 45%;

            }

            #slider {
                width: 44.4%;
            }
        }

        @media (max-width: 800px) {
            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                font-family: 'Roboto Condensed', sans-serif !important;
                color: #404040;
                border: none !important;
                font-weight: lighter !important;
                font-size: 20px;
            }

            #aboutrow {
                display: block;
                height: 100%;
            }

            #abouttext {
                display: block;

            }

            #slider {
                display: block;
                height: 200px;
            }
        }

        @media (max-width: 576px) {
            #standrardcontent > div > div {
                margin-bottom: 30px;
            }
        }

        @media (min-height: 500px) {
            :root {
                --scale: 5;
            }
        }

        @media (min-height: 800px) {
            :root {
                --scale: 5;
            }
        }

        @media (min-height: 1000px) {

        }
        @media (max-width: 992px){
            .dropdownPushLeft{
                margin-left: 0px !important;
            }
        }

        .btn-primary {
            background-color: #800080;
            border-color: #f05f40;
        }

        body {
            -webkit-transition-timing-function: ease;
            -o-transition-timing-function: ease;
            transition-timing-function: ease;
            -webkit-transition-duration: .35s;
            -o-transition-duration: .35s;
            transition-duration: .35s;
            -webkit-transition-property: padding-top;
            -o-transition-property: padding-top;
            transition-property: padding-top;
        }

        .autocomplete-suggestion {

            font-size: 15px!important;
            border-bottom: 1px;
        }

        .dropdownPushLeft{
            margin-left: -25px;
        }

    </style>

    <%--style for fab--%>
    <style>
        /* Style the back-to-top floating button */
        .sf-back-to-top {
            background:#b8cddd;
            /*background:transparent;*/
            color: white; /* text/arrow color */
            display: none;
            z-index: 999;
            /* float in bottom right corner */
            /* 20 pixels from edge */
            position: fixed;
            right: 20px;
            bottom: 20px;
            /* size of button is 50 pixels*/
            width: 50px;
            height: 50px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            /* round button */
            -webkit-border-radius: 50%;
            border-radius: 50%;
        }

        a.sf-back-to-top {
            font-weight: 600;
            letter-spacing: 2px;
            font-size: 12px;
            text-transform: uppercase;
            text-align: center;
            line-height: 1.6;
            padding-left: 2px;
            padding-top: 4px;
        }

        a.sf-back-to-top .arrow:before {
            content: "\e02d";
            font-family: 'squarespace-ui-font';
            font-style: normal;
            font-weight: 600;
            font-size: 18px;
            line-height: 1;
            speak: none;
            -webkit-font-smoothing: antialiased;
            content: "\e02d";
            text-align: center;
            display: block;
            vertical-align: middle;
            transform: rotate(-90deg);
            -webkit-transform: rotate(-90deg);
            -moz-transform: rotate(-90deg);
            -ms-transform: rotate(-90deg);
            -o-transform: rotate(-90deg);
            cursor: pointer;
            margin-left: -4px;
        }
        #carouselExampleIndicators > ol > li.active{
            background-color: #693f92!important;
        }
    </style>

    <%--style for small display--%>
    <style>
        @media only screen and (max-width: 950px) {
            #mainNav {
                /*height: 74px;*/
                position: relative;
                background-color: #fff;
                /*max-height: 74px;*/
            }
            header{
                margin-top: 0px!important;
            }

        }
    </style>

</head>

<body id="page-top">

<!-- Navigation -->


<nav class="navbar navbar-toggleable-md navbar-expand-lg navbar-light fixed-top navbar-shrink bg-faded" id="mainNav"
     role="navigation">

    <%--<img src="<%=request.getContextPath()%>/assets/portal/img/logo/logosmall.png" width="8%" height="8%"/>--%>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="true"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand pull-right">
        <img class="navabar-brand" src="/assets/portal/img/logo/bd_gov.png">
    </a>


    <div class=" collapse navbar-collapse" id="navbarResponsive" style="justify-content: center">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="#home" style="color:purple;">
                    <div style="position: relative;">
                        Home
                        <div class="navelecolorbottom" style="position: absolute;width: 100%;min-height: 0px;">

                        </div>
                    </div>

                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="#about" style="color:purple;">
                    <div style="position: relative;">
                        About
                        <div class="navelecolorbottom" style="position: absolute;width: 100%;min-height: 0px;">

                        </div>
                    </div>

                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="#standard" style="color:purple;">

                    <div style="position: relative;">
                        Standards
                        <div class="navelecolorbottom" style="position: absolute;width: 100%;min-height: 0px;">

                        </div>
                    </div>

                </a>

            </li>

            <li class="nav-item dropdown dropdownPushLeft">
                <a class="nav-link dropdown-toggle" href="#" id="" data-toggle="dropdown" aria-haspopup="true"
                   aria-expanded="false">

                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="left: -130px;">
                    <a class="dropdown-item" href=" <%=request.getContextPath()%>/portal/datastandard">Data
                        Standards</a>
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/portal/intstandard">Integration
                        Standards</a>
                    <a class="dropdown-item" style="opacity: 0.7;" href="#">Security Standards</a>
                    <%--<a class="dropdown-item" href=" <%=request.getContextPath()%>/portal/securitystandard">Security Standards</a>--%>
                    <a class="dropdown-item" style="opacity: 0.7;" href="#">Deployment Standards</a>
                    <%--<a class="dropdown-item" href=" <%=request.getContextPath()%>/portal/deploymentPolicy">Deployment Standards</a>--%>
                    <a class="dropdown-item" style="opacity: 0.7;" href="#">Technology Standards</a>
                    <%--<a class="dropdown-item" href="  <%=request.getContextPath()%>/portal/technologystandard">Technology Standards</a>--%>

                    <a class="dropdown-item" style="opacity: 0.7;" href="#">Application Standards</a>
                    <a class="dropdown-item" style="opacity: 0.7;" href="#">Biometric Standards</a>
                    <a class="dropdown-item" style="opacity: 0.7;" href="#">Payment Standards</a>
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/portal/ccdsstandard">CCDS Standards</a>
                    <%--<a class="dropdown-item" href="   <%=request.getContextPath()%>/portal/applicationstandard">Application Standards</a>--%>
                </div>
            </li>


            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="#service" style="color:purple;">

                    <div style="position: relative;">
                        Services
                        <div class="navelecolorbottom" style="position: absolute;width: 100%;min-height: 0px;">

                        </div>
                    </div>
                </a>

            </li>
            <li class="nav-item dropdown dropdownPushLeft">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">

                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="left: -100px;">
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/portal/corelist">Core Services</a>
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/portal/sharedlist">Shared
                        Services</a>
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/portal/serviceregistration">System
                        Registration</a>
                </div>
            </li>


            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="<%=request.getContextPath()%>/portal/guidelines" style="color:purple;">

                    <div style="position: relative;">
                        Guidelines
                        <div class="navelecolorbottom" style="position: absolute;width: 100%;min-height: 0px;">

                        </div>
                    </div>
                </a>
            </li>
            <li class="nav-item">
                <%--<a class="nav-link js-scroll-trigger" href="#feedback" style="color:purple;">--%>
                <a class="nav-link js-scroll-trigger" href="<%=request.getContextPath()%>/portal/feedback"
                   style="color:purple;">

                    <div style="position: relative;">
                        Contact
                        <div class="navelecolorbottom" style="position: absolute;width: 100%;min-height: 0px;">

                        </div>
                    </div>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav mr-auto" style="padding-left: 20px;">
            <li class="nav-item pull-right">
                <div class=" search-container">
                    <form class="navbar-form form-inline" role="form" method="get" action="<%=request.getContextPath()%>/portal/query">
                        <div class="form-group">

                            <input id="searchinput" type="text" class="" placeholder="Search.." name="search" style="min-width: 300px!important;"/>
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </div>
                        <%--<div class="input-group-addon" ><i class="fa fa-search"></i></div>--%>
                        <%--<div class="input-group-btn">--%>
                        <%--<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>--%>
                        <%--</div>--%>

                    </form>
                </div>
            </li>

        </ul>

    </div>

    <a class="navbar-brand pull-right ">

        <img src="/assets/portal/img/logo/a2i.png">
    </a>


</nav>

<header id="home">
    <div style="position:relative;height: 100%">
        <img src="<%=request.getContextPath()%>/assets/portal/img/header/header.jpg">
        <div style="position:absolute;top:50%;left:50%;transform: translate(-50%,-50%)">
            <img src="<%=request.getContextPath()%>/assets/portal/img/logo/logo.png">
        </div>
    </div>


</header>



<div style="position: relative;width: 100%">
    <section class="bg-primary" id="about" style="display: flex;align-items: center; ">
        <div class="container" style="height: 100%">
            <div class="row" id="aboutrow" style="display: flex;">
                <div id="abouttext">
                    <h2 class="section-heading roboto-c fw-700" style="color: #683392!important;font-size: 21px;">${about.title}</h2>
                    <p class="mb-4 roboto fw-300" style="font-size: 14px;">${about.description}</p>

                </div>
                <div id="slider" style="border: none;height: calc(72px*var(--scale));width: 600px;">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="5000"
                         style="height:100%">
                        <ol class="carousel-indicators">
                            <li style="background-color: #787878;" data-target="#carouselExampleIndicators" data-toggle="tab" data-slide-to="0" class="active"></li>
                            <li style="background-color: #787878;" data-target="#carouselExampleIndicators" data-toggle="tab" data-slide-to="1"></li>
                            <li style="background-color: #787878;" data-target="#carouselExampleIndicators" data-toggle="tab" data-slide-to="2"></li>
                            <li style="background-color: #787878;" data-target="#carouselExampleIndicators" data-toggle="tab" data-slide-to="3"></li>
                            <%--<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>--%>
                            <%--<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>--%>
                            <%--<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>--%>
                            <%--<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>--%>


                        </ol>
                        <div class="carousel-inner" role="listbox" style="height:100%">
                            <!-- Slide One - Set the background image for this slide in the line below -->
                            <div class="carousel-item active"
                                 style="background-image: url('<%=request.getContextPath()%>/assets/portal/img/imageslider/page/page1.png');background-color:white;background-size:100% 100%;">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3></h3>
                                    <p></p>
                                </div>
                            </div>
                            <!-- Slide Two - Set the background image for this slide in the line below -->
                            <div class="carousel-item"
                                 style="background-image: url('<%=request.getContextPath()%>/assets/portal/img/imageslider/page/page2.png');background-color:white;background-size:100% 100%;">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3></h3>
                                    <p></p>
                                </div>
                            </div>
                            <!-- Slide Three - Set the background image for this slide in the line below -->
                            <div class="carousel-item"
                                 style="background-image: url('<%=request.getContextPath()%>/assets/portal/img/imageslider/page/page3.png');background-color:white;background-size:100% 100%;">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3></h3>
                                    <p></p>
                                </div>
                            </div>
                            <div class="carousel-item "
                                 style="background-image: url('<%=request.getContextPath()%>/assets/portal/img/imageslider/page/page4.png');background-color:white;background-size:100% 100%;">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3></h3>
                                    <p></p>
                                </div>
                            </div>


                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                           data-slide="prev" style="background-color: transparent;">
                            <div style="background-color: transparent;width: 34px;height: 34px;position: relative;border-radius: 225px;margin-left: -110%;box-shadow:0px 0px 5px 3px lightgrey">
                                <img src="<%=request.getContextPath()%>/assets/portal/img/imageslider/back.png"
                                     style="position: absolute;top: -4.8px;left: -4px;width: 45px;height: 45px;">
                            </div>

                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                           data-slide="next" style="background-color: transparent;">
                            <div style="background-color: transparent;width: 34px;height: 34px;position: relative;border-radius: 225px;margin-right: -110%;box-shadow:0px 0px 5px 3px lightgrey">
                                <img src="<%=request.getContextPath()%>/assets/portal/img/imageslider/next.png"
                                     style="position: absolute;top: -4.8px;left: -4px;height: 45px;width: 45px;">
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--<section class="bg-primary" id="person" style="background-color:white!important;min-height: 285px;display: flex;align-items: center">--%>
    <%--<div class="container">--%>
    <%--<div class="row" style="position: relative;">--%>
    <%--<a href="#" style="position: absolute;right: 0px;bottom: 0px;z-index: 10;    color: #83bbce!important;font-size: 14px;">More ...</a>--%>
    <%--<div class="col-md-3" style="text-align:center">--%>
    <%--<div >--%>
    <%--<img src="<%=request.getContextPath()%>/assets/portal/img/person/Mustafa-Jabbar.png">--%>
    <%--<p class="roboto-c fw-500" style="color: #683392!important;font-size: 25px;">--%>
    <%--Mustafa Jabbar</p>--%>
    <%--<p class="roboto fw-300" style="font-size: 16px;">Hon'ble Minister</p>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="col-md-3" style="text-align:center">--%>
    <%--<img src="<%=request.getContextPath()%>/assets/portal/img/person/SAJEEB-WAZED.png">--%>
    <%--<p class="roboto-c fw-500" style="color: #683392!important;font-size: 25px;">--%>
    <%--Sajeeb Wazed</p>--%>
    <%--<p class="roboto fw-300" style="font-size: 16px;">Adviser to Hon'ble PM</p>--%>
    <%--</div>--%>
    <%--<div class="col-md-3" style="text-align:center">--%>
    <%--<img src="<%=request.getContextPath()%>/assets/portal/img/person/Zunaid-Ahmed-Palak-MP.png">--%>
    <%--<p class="roboto-c fw-500" style="color: #683392!important;font-size: 25px;">--%>
    <%--Zunaid Ahmed Palak</p>--%>
    <%--<p class="roboto fw-300" style="font-size: 16px;">Hon'ble State Minister</p>--%>
    <%--</div>--%>
    <%--<div class="col-md-3" style="text-align:center">--%>
    <%--<img src="<%=request.getContextPath()%>/assets/portal/img/person/Anir-Chowdhury.png">--%>
    <%--<p class="roboto-c fw-500" style="color: #683392!important;font-size: 25px;">Anir Chowdhury</p>--%>
    <%--<p class="roboto fw-300" style="font-size: 16px;">Policy Advisor</p>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</section>--%>

    <section id="standard">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading roboto fw-300"
                        style="color: purple!important;font-size: 25px;transform: scaleY(1.2);">STANDARDS &
                        PROTOCOLS</h2>
                </div>
            </div>
            <div class="row" style="margin-top: 35px;">
                <div class="col-lg-12">

                    <h3 class="roboto fw-400" style="color: #404040;">
                        ${standard.title}
                    </h3>

                    <p class="roboto fw-300" style="font-size: 16px;">${standard.description}
                    </p>
                    <h3 class="roboto fw-400" style="color: #404040;">${protocol.title}</h3>

                    <%--<pre>--%>
                    ${protocol.description}
                    <%--</pre>--%>
                </div>
            </div>
        </div>

        <div class="container" id="standrardcontent" style="margin-bottom: 34px;">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-8 ">
                    <a href="<%=request.getContextPath()%>/portal/datastandard" style=" height: 377px;width: 356px;">
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG1.png"
                             style="width:100%;height: 100%; box-shadow: 5px 5px 10px lightgrey; ">

                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/Data-Standerd.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">
                                <h4 class="roboto-c fw-500"
                                    style="color:#1fbeff; top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    Data
                                    Standards</h4>

                            </div>
                        </div>
                    </a>

                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="<%=request.getContextPath()%>/portal/intstandard" style=" height: 377px;width: 356px;">
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG2.png"
                             style="width:100%;height: 100%;box-shadow:  5px 5px  10px lightgrey">
                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/Integration-Standards.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">
                                <h4 class="roboto-c fw-500"
                                    style="color:#1fbeff; top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    Integration Standards</h4>

                            </div>
                        </div>
                    </a>
                </div>

                <div style="opacity: .7;" class="col-lg-4 col-md-4 col-sm-6 ">
                    <%--<a href="<%=request.getContextPath()%>/portal/securitystandard"--%>
                    <a href="#standard"
                       style=" min-height: 300px;width: 356px;">
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG1.png"
                             style="width:100%;height: 100%;box-shadow:  5px 5px  10px lightgrey">
                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/Security-Standards.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">
                                <h4 class="roboto-c fw-500"
                                    style="/*color:#1fbeff;*/ top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    Security Standards</h4>

                            </div>
                        </div>
                    </a>
                </div>


                <div style="opacity: .7;" class="col-lg-4 col-md-4 col-sm-6  ">
                    <a href="#standard" style=" height: 377px;width: 356px;">
                    <%--<a href="<%=request.getContextPath()%>/portal/deploymentPolicy" style=" height: 377px;width: 356px;">--%>
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG2.png"
                             style="width:100%;height: 100%;box-shadow:  5px 5px  10px lightgrey">
                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/Deployment-Standards.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">
                                <h4 class="roboto-c fw-500"
                                    style="/*color:#1fbeff;*/ top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    Deployment Standards</h4>

                            </div>
                        </div>
                    </a>
                </div>

                <div style="opacity: .7;" class="col-lg-4 col-md-4 col-sm-6 ">
                    <a href="#standard" style=" height: 377px;width: 356px;">
                    <%--<a href="<%=request.getContextPath()%>/portal/technologystandard" style=" height: 377px;width: 356px;">--%>
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG1.png"
                             style="width:100%;height: 100%;box-shadow:  5px 5px  10px lightgrey">
                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/Data-Integrity-Policy.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">
                                <h4 class="roboto-c fw-500"
                                    style="/*color:#1fbeff;*/ top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    Technology Standards</h4>
                            </div>
                        </div>
                    </a>
                </div>
                <div style="opacity: .7;" class="col-lg-4 col-md-4 col-sm-6">
                    <a href="#standard" style=" height: 377px;width: 356px;">
                    <%--<a href="<%=request.getContextPath()%>/portal/applicationstandard" style=" height: 377px;width: 356px;">--%>
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG2.png"
                             style="width:100%;height: 100%;box-shadow:  5px 5px  10px lightgrey">
                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/Software-Architectural-Standard.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">
                                <h4 class="roboto-c fw-500"
                                    style="/*color:#1fbeff;*/ top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    Application Standards</h4>
                            </div>
                        </div>
                    </a>
                </div>


                <div style="opacity: .7;" class="col-lg-4 col-md-4 col-sm-6">
                    <a href="#standard" style=" height: 377px;width: 356px;">
                    <%--<a href="<%=request.getContextPath()%>/portal/biometricstandard" style=" height: 377px;width: 356px;">--%>
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG1.png"
                             style="width:100%;height: 100%; box-shadow: 5px 5px 10px lightgrey;">

                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/Biometric-Standards.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">
                                <h4 class="roboto-c fw-500"
                                    style="/*color:#1fbeff;*/ top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    Biometric Standards</h4>

                            </div>
                        </div>
                    </a>

                </div>
                <div style="opacity: .7;" class="col-lg-4 col-md-4 col-sm-6  ">
                    <a href="#standard" style=" height: 377px;width: 356px;">
                    <%--<a href="<%=request.getContextPath()%>/portal/paymentstandard" style=" height: 377px;width: 356px;">--%>
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG2.png"
                             style="width:100%;height: 100%; box-shadow: 5px 5px 10px lightgrey;">

                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/Payment-Standards.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">

                                <h4 class="roboto-c fw-500"
                                    style="/*color:#1fbeff;*/ top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    Payment Standards</h4>

                            </div>
                        </div>
                    </a>

                </div>
                <div  class="col-lg-4 col-md-4 col-sm-6">
                    <a href="<%=request.getContextPath()%>/portal/ccdsstandard" style=" height: 377px;width: 356px;">
                    <%--<a href="<%=request.getContextPath()%>/portal/ccdsstandard" style=" height: 377px;width: 356px;">--%>
                        <img src="<%=request.getContextPath()%>/assets/portal/img/standard/BoxBG1.png"
                             style="width:100%;height: 100%; box-shadow: 5px 5px 10px lightgrey;">

                        <div class="imageoverlaped">
                            <img src="<%=request.getContextPath()%>/assets/portal/img/standard/CCDS-Standards.png"
                                 style="width: 100%;
    height: 100%;">
                            <div class="tag">
                                <h4 class="roboto-c fw-500"
                                    style="color:#1fbeff; top: 50%; position: absolute;transform: translateY(-50%);font-size: 20px;">
                                    CCDS Standards</h4>

                            </div>
                        </div>
                    </a>

                </div>

            </div>
        </div>
    </section>


    <%--fab--%>
    <a href="#" class="sf-back-to-top"><i class="fa fa-angle-up" style="font-size:36px"></i></a>

    <section id="service" style="min-height: 450px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading roboto fw-300"
                        style="color: purple!important; transform: scaleY(1.2);font-size: 25px;">${services.title}</h2>
                </div>
            </div>
            <div class="row" style="margin-top:15px;">
                <div class="col-lg-12 " style="margin: 20px 0px 10px 0px;">
                    <p class="roboto fw-300" style="font-size: 14px;">${services.description}
                    </p>

                </div>
            </div>

            <div class="row servicecontent">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <a href="<%=request.getContextPath()%>/portal/corelist" style="text-decoration: none">
                        <div class="middlecontainer">
                            <div class="middle">
                                <img src="<%=request.getContextPath()%>/assets/portal/img/service/Core-Services.png">
                            </div>
                            <div class="col-md-9 ">
                                <h4 class="roboto fw-400" style="font-size: 20px;">${core.title}</h4>
                                <p class="roboto fw-300" style="font-size: 13px;">${core.description}</p>

                            </div>
                        </div>
                    </a>

                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <a href="<%=request.getContextPath()%>/portal/sharedlist" style="text-decoration: none">
                        <div class="middlecontainer">
                            <div class="middle">
                                <img src="<%=request.getContextPath()%>/assets/portal/img/service/Share-Service.png">
                            </div>
                            <div class="col-md-9">
                                <h4 class="roboto fw-400" style="font-size: 20px;">${shared.title}</h4>
                                <p class="roboto fw-300" style="font-size: 13px;">${shared.description}</p>

                            </div>
                        </div>
                    </a>

                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">

                    <a href="<%=request.getContextPath()%>/portal/serviceregistration" style="text-decoration: none">
                        <div class="middlecontainer">
                            <div class="middle">
                                <img src="<%=request.getContextPath()%>/assets/portal/img/service/Service-Registration.png">
                            </div>
                            <div class="col-md-9">
                                <h4 class="roboto fw-400" style="font-size: 20px;">${reg.title} </h4>
                                <p class="roboto fw-300" style="font-size: 13px;">

                                    ${reg.description}
                                </p>


                            </div>
                        </div>
                    </a>

                </div>

            </div>


        </div>
    </section>

    <section id="feedback" style="background-color:#ffffff !important">

    </section>


    <section id="contact" style="background-color:#F1F5F8 !important;">
        <div class="container">
            <div class=" footer page-footer-custom " style="/*margin-right:2%;margin-left:2%;*/">

                <div class="row" style="padding-top: 10px;">
                    <div class="col-md-3">
                        <ul class=" text-left">
                            <h4 class="roboto-c fw-400"
                                style=" border-bottom: none ;padding-bottom: 5px; color: purple!important; font-size: 22px;">
                                CONTACTS</h4>

                            <%--<a href="http://www.doptor.gov.bd" target="_blank">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;">Login</li>
                            </a>--%>
                            <a href="#">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;">Condition for
                                    Use
                                </li>
                            </a>

                            <a href="#">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;">Contact</li>
                            </a>
                            <a href="#">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;">Site Map</li>
                            </a>
                        </ul>
                    </div>

                    <div class="col-md-6">
                        <ul class=" text-left">
                            <h4 class="roboto-c fw-400"
                                style=" border-bottom: none ;padding-bottom: 5px; color: purple!important; font-size: 22px;">
                                IMPORTANT LINKS</h4>

                            <a href="http://www.pmo.gov.bd">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;">Prime
                                    Minister's Office
                                </li>
                            </a>
                            <a href="http://www.cabinet.gov.bd/">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;">Cabinet
                                    Division
                                </li>
                            </a>
                            <a href="http://www.ptd.gov.bd/">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;"> Ministry of
                                    Post,Telecommunication
                                </li>
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;"> and
                                    Information Technology
                                </li>
                            </a>
                            <a href="http://a2i.pmo.gov.bd/">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;">a2i Programme
                                </li>
                            </a>
                            <a href="http://doptor.gov.bd">
                                <li class="roboto fw-300" style="font-size: 14px;list-style-type: none;">Doptor Login
                                </li>
                            </a>
                        </ul>
                    </div>


                    <div class="col-md-3"
                         style="display: flex;flex-direction: column;justify-content: center;align-items: center;">

                        <div class="logo_a2i" style="margin-top:5%;">
                            <div class="logo_a2i" style="margin-top:5%;">
                                <img src="/assets/portal/img/logo/a2i.png" width="41"
                                     height="41" width="41" style="margin-right:  10px;">
                                <img src="/assets/portal/img/logo/bd_gov.png" width="41"
                                     height="41" width="41">

                                <%--<img src="<%=request.getContextPath()%>/assets/portal/img/logo/a2i.png" width="41"
                                     height="45" style="margin-top:5%;">
                                <img src="<%=request.getContextPath()%>/assets/portal/img/logo/bd_gov.png" width="41"
                                     height="45">
    --%>
                            </div>

                            <div class="copy-right-title" style="margin-top:5%;">
                                <p class="roboto fw-300" style="font-size: 10px;">
                                    Copyrights &copy; 2018 All Rights Reserved<br>
                                    Government of the People's Republic of Bangladesh</p>
                            </div>

                        </div>
                        <!-- end of row -->
                    </div>

                    <!-- end of container -->
                </div>
            </div>


        </div>

    </section>
    <div style="height:45px;background-color:#9698C8">
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="<%=request.getContextPath()%>/assets/js/portal/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/portal/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/portal/jquery.easing.min.js"></script>

    <script>


        var HIGH = 1;
        var LOW = 0;
        var priority = -1;

        function activenavitem($selector) {
            var downarrow = '';
            $('#navbarResponsive > ul > li > a > div >i').remove();
            $('#navbarResponsive > ul > li > a > div > div').css('min-height', 0);
            $selector.append(downarrow);
//        $('div',$selector).css('min-height',$('#mainNav').height()-$('#mainNav').height()*.53);
            $('div', $selector).css('min-height', 20);
        }

        function applyforactivate() {
            if (priority == HIGH) {
                var $selector = $('#navbarResponsive > ul > li:nth-child(1) > a > div');
                activenavitem($selector);
            }
            else if (priority == LOW) {
                var $selector = $('#navbarResponsive > ul > li > a.active > div');
                activenavitem($selector);
            }
            else {
                var $selector = $('#navbarResponsive > ul > li:nth-child(1) > a > div');
                activenavitem($selector);
                var linkpart = window.location.hash;
                var link = (linkpart != '') ? linkpart : 'home';
                $('html,body').animate({scrollTop: ($(link).offset().top - 74)}, 'slow');
            }
        }

        function controlScrollAndActivation() {
            // Collapse Navbar
            var navbarCollapse = function (document) {
                if ($("#mainNav").offset().top > 74) {
                    // $("#mainNav").addStyle("background-color","#fff");
                } else {
                    //  $("#mainNav").addStyle("background-color","transparent");
                    $('#navbarResponsive > ul > li > a > i').remove();
                }

            };


            // Collapse the navbar when page is scrolled
            $(document).scroll(function (event, ex) {
                navbarCollapse($(this));
            });

            // Activate scrollspy to add active class to navbar items on scroll
            $('body').scrollspy({
                target: '#mainNav',
                offset: 500
            });
            $(window).on('activate.bs.scrollspy', function () {
                applyforactivate();
            });


            $('#navbarResponsive > ul > li:nth-child(1) > a').click(function () {
//            var link = $(this).attr('href');
//            $('html,body').animate({scrollTop: ($(link).offset().top - 140)},'slow');
                applyforactivate();
            });

            $(document).scroll(function () {
                var doc = $(document);
                var win = $(window);
                var docTop = doc.scrollTop();
                var winheight = window.innerHeight;

                var scrollposition = (docTop < winheight) ? docTop : (docTop + winheight);
                if (scrollposition < 120) {
                    priority = HIGH;
                    applyforactivate();
                } else {
                    priority = LOW;
                    applyforactivate();
                }

            });

            applyforactivate();
        }

        function controllScroll() {
            // Smooth scrolling using jQuery easing
            $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html, body').animate({
                            scrollTop: (target.offset().top - 74)
                        }, 1000, "easeInOutExpo");
                        $('a.js-scroll-trigger[href*="#"]:not([href="#"])').removeClass('active');
                        $(this).addClass('active');
                        return false;
                    }
                }
            });
        }

        $(document).ready(function () {




            controllScroll();
            controlScrollAndActivation();

        });

        // var selectBody = $('body');
        // var selectNavbarCollapse = $('.navbar-collapse');
        //
        // var heightNavbarCollapsed = $('.navbar').outerHeight(true);
        // var heightNavbarExpanded = 0;
        //
        // paddingSmall();
        //
        // selectNavbarCollapse.on('show.bs.collapse', function () {
        //     if (heightNavbarExpanded == 0) heightNavbarExpanded = heightNavbarCollapsed + $(this).outerHeight(true);
        //     paddingGreat();
        // })
        // selectNavbarCollapse.on('hide.bs.collapse', function () {
        //     paddingSmall();
        // })
        //
        // $(window).resize(function () {
        //     if ((document.documentElement.clientWidth > 767) && selectNavbarCollapse.hasClass('in')) {
        //         selectNavbarCollapse.removeClass('in').attr('aria-expanded', 'false');
        //         paddingSmall();
        //     }
        // });
        //
        //
        // function paddingSmall() {
        //     selectBody.css('padding-top', heightNavbarCollapsed + 'px');
        // }
        //
        // function paddingGreat() {
        //     selectBody.css('padding-top', heightNavbarExpanded + 'px');
        // }
        //
        //
        //
        //
        //
        //
        //
        //
        //        })


    </script>

    <%--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--%>
    <%--<link rel="stylesheet" href="/resources/demos/style.css">--%>
    <%--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
    <%--<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>--%>
    <script src="<%=request.getContextPath()%>/assets/js/portal/jquery.autocomplete.min.js"></script>
    <link href="<%=request.getContextPath()%>/assets/js/portal/main.css" rel="stylesheet">
    <script>


        $(document).ready(function() {

            $('#standard').delay(800).fadeIn(500);
            $('#service').delay(1500).fadeIn(500);
            $('#contact').delay(2200).fadeIn(500);



            $('#searchinput').autocomplete({
                serviceUrl: '<%=request.getContextPath()%>/searchtest',
                paramName: "tagName",
                delimiter: ",",
                transformResult: function(response) {

                    return {
                        //must convert json to javascript object before process
                        suggestions: $.map($.parseJSON(response), function(item) {


                            var link='<a href="<%=request.getContextPath()%>/portal/servicemeta/'+item.serviceId+'">'+item.nameEng+'</a>';
                            var urllink='<%=request.getContextPath()%>/portal/servicemeta/'+item.serviceId;
                            return { value: item.nameEng,url:urllink};
                           // return (link );
                        })

                    };

                },
                onSelect:function(suggestion){
                  //
                    console.log(suggestion);
                    window.location = suggestion.url;

                   // alert(suggestion.nameEng);
                }


            });


        });
    </script>

    <%--method for back to top --%>
    <script>
        var amountScrolled = 300;

        $(window).scroll(function() {
            if ( $(window).scrollTop() > amountScrolled ) {
                $('a.sf-back-to-top').fadeIn('slow');
            } else {
                $('a.sf-back-to-top').fadeOut('slow');
            }
        });

        $('a.sf-back-to-top').click(function() {
            $('html, body').animate({
                scrollTop: 0
            }, 700);
            return false;
        });
    </script>
</body>

</html>

