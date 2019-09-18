

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

</head>

<body id="page-top" style="position: relative; top: 0px;">

<%@ include file="../includes/portletheader.jsp" %>

<div style="margin-top: 6%;margin-bottom: 2%">
    <div id="container" class="container" style="background-color: #F6F6F6;">


        <h2><a class=" title btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#defination" style="font-size: 25px">
            What are Architecture Standards?</a></h2>



        <p></p>

        <p></p>
        <div id="defination" class="collapse">
            <p>Architecture standards are the way by which an application can be described easily and economically. It creates a solid foundation for the application.
                In order to understand the working principal of the application, increase performance of the platform, reduce cost and avoid codes duplicity,
                we must standardize the format as well as the meaning of the architecture.</p></div>

        <h2><a class=" title btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#why" style="font-size: 25px">
            Why do we need Architecture Standards?</a></h2>


        <div id="why" class="collapse">
            <p>A software architecture is extremely important for a software project. If different groups are using different architecture  standards then it is
                very tough to understand the actual architecture of the application and there will create ambiguity. So, a standard architecture is needed to overcome
                this problem. Here are some benefits of architecture standard that will tell one more about how it can help one in his project and why one should invest in a good
                architecture standard.</p>

            <ul>
                <li>Creates a solid foundation for the software project</li>
                <li>Makes the platform scalable</li>
                <li>Increases performance of the platform</li>
                <li>Reduces costs, avoids codes duplicity</li>
                <li>Implements a vision</li>
                <li>Identifies areas for potential cost savings</li>
                <li>provides Better code maintainability</li>
                <li> Increases quality of the platform.</li>
                <li>Helps manage complexity.</li>
                <li>Makes the platform faster.</li>
                <li>Provides Higher adaptability</li>
                <li>Helps in risk management</li>
                <li> Prioritizes conflicting Goals</li>
            </ul>
        </div>

        <h2><a class=" title btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#micro" style="font-size: 25px">
            Microservice Architecture </a></h2>
        <p></p>
        <div id="micro" class="collapse">
            <p> Microservices are also known as the microservices architecture. It is an architectural style, an approach to software development in which a
                large application is built as a suite of modular services; small, independently versioned, and scalable customer-focused services with
                specific business goals, which communicate with each other over standard protocols with well-defined interfaces. As they are independently
                deployable and scalable, each service also provides a firm module boundary, even allowing for different services to be written in different
                programming languages and can also be managed by different teams.</p>
            <p>In microservices architecture, large software projects are broken down into smaller, more independent modules. Responsible for highly defined and
                discrete tasks, these individual modules communicate with each other through simple, universally accessible APIs. It is a distinctive method of
                developing software systems that has grown in popularity in recent years.</p>

            <p>The main idea behind microservices architecture is that some types of applications become easier to build and maintain when they are broken
                down into smaller, composable pieces which work together. In other words, each component is developed separately, and the application is
                then simply the sum of its constituent components. In a microservices architecture, each service runs a unique process and usually manages
                its own database. This not only provides development teams with a more decentralized approach to building software, it also allows each
                service to be deployed, rebuilt, redeployed and managed independently. </p></div>





        <h2><a class=" title btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#microben" style="font-size: 25px">
            Microservice Architecture Benefits</a></h2>
        <p></p>
        <div id="microben" class="collapse">
            <ul>
                <li>Software built as micro-services can be broken down into multiple component services, so that each of these services can be deployed and
                    then redeployed independently without compromising the integrity of an application. That means that microservice architecture gives
                    developers the freedom to independently develop and deploy services.</li>
                <li>Better fault isolation; if one micro-service fails, the others will continue to work.</li>
                <li>Code for different services can be written in different languages.</li>
                <li>Easy integration and automatic deployment; using open-source continuous integration tools such as Jenkins, etc.</li>
                <li>The micro-service architecture enables continuous delivery.</li>
                <li>Easy to understand since they represent a small piece of functionality, and easy to modify for developers, thus they can help a new team member become productive quickly.</li>
                <li> Scalability and re-usability, as well as efficiency. Easy to scale and integrate with third-party services.</li>
                <li>Components can be spread across multiple servers or even multiple data centers.</li>
                <li>Work very well with containers, such as Docker.</li>
                <li>Complement cloud activities.</li>
                <li>Micro-services simplify security monitoring because the various parts of an app are isolated. A security problem could happen in one section without affecting other areas of the
                    project.</li>
                <li>Increase the autonomy of individual development teams within an organization, as ideas can be implemented and deployed without having to coordinate with a wider IT delivery function.</li>
            </ul>
        </div>
        <h2><a class=" title btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#oisf" style="font-size: 25px">
            Architecture Standards in OISF</a></h2>
        <p></p>
        <div id="oisf" class="collapse">
            <p>In OISF, micro-services architecture standards have been implemented.
                Here, Land, Nothi, GRS can be assumed as micro-services that are independent
                to each other. Each service maintains a different database and changing
                or failure of one service does not affect others. </p></div>




    </div>
</div>

<%@ include file="../includes/portletfooter.jsp" %>

</body></html>

