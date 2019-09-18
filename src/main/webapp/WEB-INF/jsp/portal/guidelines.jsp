

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="html" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
        #container {
            min-height: 60vh!important;
        }
        .title-div {
            font-size: 12px!important;
        }
    </style>

</head>

<body id="page-top" style="position: relative; top: 0px;">

<%@ include file="../includes/portletheader.jsp" %>


<div id="container" class="first">
    <div class="container second " >
        <pre style="font-size: 20px"> Home > Guidelines</pre>

    </div>
    <%--<div class="container third" >--%>
        <%--<p style="font-size: 26px; font-weight: 500;color: #693293;margin-left: 10px">${title}</p>--%>
    <%--</div>--%>


    <div class="container fourth" >

        <div style="display: flex;justify-content: flex-start;flex-wrap: wrap">

            <%--<div class="row">--%>

            <%--<c:forEach var="d3ata" items="${owners}">--%>
                <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 a">
                    <div class="main-box-div " style="background-color: white">

                        <div class="col-xs-7-new left  ">

                            <a href="#">

                                <img style="width: 90%;height: 100%;position: relative;top: 50%;left: 50%;    transform: translate(-50%,-50%);"
                                     src="<%=request.getContextPath()%>/assets/img/serviceicon/compliance.png"
                                     onerror="this.src='<%=request.getContextPath()%>/assets/img/soon.png';">

                            </a>


                        </div>
                        <div class="col-xs-5-new  purpleHeader" style="background-color: #693293">

                            <%--<c:if test="${data.serviceCount!=0}">--%>
                                <%--download button by forhad--%>
                                <%--download doc--%>

                                <%--<c:set var="string1" value="${data.nameEng}"/>--%>
                                <%--<c:set var="string2" value="${fn:replace(string1,' ', '')}" />--%>

                                <a  href="<%=request.getContextPath()%>/assets/portaldoc/oisfcompliance.pdf">
                                    <div style="margin-left: 8px" class="title-div center-block"><i class="fa fa-download"></i></div>

                                </a> &nbsp;
                                <%--<br/>--%>


                                <a href="<%=request.getContextPath()%>/assets/portaldoc/oisfcompliance.pdf">
                                    <div class="title-div center-block"> OISF Compliance </div>
                                </a>
                            <%--</c:if>--%>

                        </div>


                    </div>
                </div>
            <%--</c:forEach>--%>


            <%--<c:forEach var="data" items="${owners}">--%>
                <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 a">
                    <div class="main-box-div " style="background-color: white">

                        <div class="col-xs-7-new left  ">

                            <a href="#">

                                <img style="width: 90%;height: 100%;position: relative;top: 50%;left: 50%;    transform: translate(-50%,-50%);"
                                     src="<%=request.getContextPath()%>/assets/img/serviceicon/systemregistration.png"
                                     onerror="this.src='<%=request.getContextPath()%>/assets/img/soon.png';">

                            </a>


                        </div>
                        <div class="col-xs-5-new  purpleHeader" style="background-color: #693293">

                            <%--<c:if test="${data.serviceCount!=0}">--%>
                                <%--download button by forhad--%>
                                <%--download doc--%>

                                <%--<c:set var="string1" value="${data.nameEng}"/>--%>
                                <%--<c:set var="string2" value="${fn:replace(string1,' ', '')}" />--%>

                                <a  href="<%=request.getContextPath()%>/assets/portaldoc/systemregistration.pdf">
                                    <div style="margin-left: 8px" class="title-div center-block"><i class="fa fa-download"></i></div>

                                </a> &nbsp;
                                <%--<br/>--%>


                                <a href="<%=request.getContextPath()%>/assets/portaldoc/systemregistration.pdf">
                                    <div class="title-div center-block"> System Registration </div>
                                </a>
                            <%--</c:if>--%>

                        </div>


                    </div>
                </div>
            <%--</c:forEach>--%>


            <%--<c:forEach var="data" items="${owners}">--%>
                <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 a">
                    <div class="main-box-div " style="background-color: white">

                        <div class="col-xs-7-new left  ">

                            <a href="#">

                                <img style="width: 90%;height: 100%;position: relative;top: 50%;left: 50%;    transform: translate(-50%,-50%);"
                                     src="<%=request.getContextPath()%>/assets/img/serviceicon/sso.png"
                                     onerror="this.src='<%=request.getContextPath()%>/assets/img/soon.png';">

                            </a>


                        </div>
                        <div class="col-xs-5-new  purpleHeader" style="background-color: #693293">

                            <%--<c:if test="${data.serviceCount!=0}">--%>
                                <%--download button by forhad--%>
                                <%--download doc--%>

                                <%--<c:set var="string1" value="${data.nameEng}"/>--%>
                                <%--<c:set var="string2" value="${fn:replace(string1,' ', '')}" />--%>

                                <a  href="<%=request.getContextPath()%>/assets/portaldoc/ssointegration.pdf">
                                    <div style="margin-left: 8px" class="title-div center-block"><i class="fa fa-download"></i></div>

                                </a> &nbsp;
                                <%--<br/>--%>


                                <a href="<%=request.getContextPath()%>/assets/portaldoc/ssointegration.pdf">
                                    <div class="title-div center-block">SSO Integration </div>
                                </a>
                            <%--</c:if>--%>

                        </div>


                    </div>
                </div>
            <%--</c:forEach>--%>


            <%--<c:forEach var="data" items="${owners}">--%>
                <div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 a">
                    <div class="main-box-div " style="background-color: white">

                        <div class="col-xs-7-new left  ">

                            <a href="#">

                                <img style="width: 90%;height: 100%;position: relative;top: 50%;left: 50%;    transform: translate(-50%,-50%);"
                                     src="<%=request.getContextPath()%>/assets/img/serviceicon/serviceintegration.png"
                                     onerror="this.src='<%=request.getContextPath()%>/assets/img/soon.png';">

                            </a>


                        </div>
                        <div class="col-xs-5-new  purpleHeader" style="background-color: #693293">

                            <%--<c:if test="${data.serviceCount!=0}">--%>
                                <%--download button by forhad--%>
                                <%--download doc--%>

                                <%--<c:set var="string1" value="${data.nameEng}"/>--%>
                                <%--<c:set var="string2" value="${fn:replace(string1,' ', '')}" />--%>

                                <a  href="<%=request.getContextPath()%>/assets/portaldoc/serviceintegration.pdf">
                                    <div style="margin-left: 8px" class="title-div center-block"><i class="fa fa-download"></i></div>

                                </a> &nbsp;
                                <%--<br/>--%>


                                <a href="<%=request.getContextPath()%>/assets/portaldoc/serviceintegration.pdf">
                                    <div class="title-div center-block"> Service Integration </div>
                                </a>
                            <%--</c:if>--%>

                        </div>


                    </div>
                </div>
            <%--</c:forEach>--%>


            <%--&lt;%&ndash;<c:forEach var="data" items="${owners}">&ndash;%&gt;--%>
                <%--<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 a">--%>
                    <%--<div class="main-box-div " style="background-color: white">--%>

                        <%--<div class="col-xs-7-new left  ">--%>

                            <%--<a href="#">--%>

                                <%--<img style="width: 90%;height: 100%;position: relative;top: 50%;left: 50%;    transform: translate(-50%,-50%);"--%>
                                     <%--src="<%=request.getContextPath()%>/${data.logoUrl}"--%>
                                     <%--onerror="this.src='<%=request.getContextPath()%>/assets/img/soon.png';">--%>

                            <%--</a>--%>


                        <%--</div>--%>
                        <%--<div class="col-xs-5-new  purpleHeader" style="background-color: #693293">--%>

                            <%--&lt;%&ndash;<c:if test="${data.serviceCount!=0}">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;download button by forhad&ndash;%&gt;--%>
                                <%--&lt;%&ndash;download doc&ndash;%&gt;--%>

                                <%--&lt;%&ndash;<c:set var="string1" value="${data.nameEng}"/>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<c:set var="string2" value="${fn:replace(string1,' ', '')}" />&ndash;%&gt;--%>

                                <%--<a  href="#">--%>
                                    <%--<div style="margin-left: 8px" class="title-div center-block"><i class="fa fa-download"></i></div>--%>

                                <%--</a> &nbsp;--%>
                                <%--&lt;%&ndash;<br/>&ndash;%&gt;--%>


                                <%--<a href="#">--%>
                                    <%--<div class="title-div center-block"> Name of Doc </div>--%>
                                <%--</a>--%>
                            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>

                        <%--</div>--%>


                    <%--</div>--%>
                <%--</div>--%>
            <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>


            <%--&lt;%&ndash;<c:forEach var="data" items="${owners}">&ndash;%&gt;--%>
                <%--<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 a">--%>
                    <%--<div class="main-box-div " style="background-color: white">--%>

                        <%--<div class="col-xs-7-new left  ">--%>

                            <%--<a href="#">--%>

                                <%--<img style="width: 90%;height: 100%;position: relative;top: 50%;left: 50%;    transform: translate(-50%,-50%);"--%>
                                     <%--src="<%=request.getContextPath()%>/${data.logoUrl}"--%>
                                     <%--onerror="this.src='<%=request.getContextPath()%>/assets/img/soon.png';">--%>

                            <%--</a>--%>


                        <%--</div>--%>
                        <%--<div class="col-xs-5-new  purpleHeader" style="background-color: #693293">--%>

                            <%--&lt;%&ndash;<c:if test="${data.serviceCount!=0}">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;download button by forhad&ndash;%&gt;--%>
                                <%--&lt;%&ndash;download doc&ndash;%&gt;--%>

                                <%--&lt;%&ndash;<c:set var="string1" value="${data.nameEng}"/>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<c:set var="string2" value="${fn:replace(string1,' ', '')}" />&ndash;%&gt;--%>

                                <%--<a  href="#">--%>
                                    <%--<div style="margin-left: 8px" class="title-div center-block"><i class="fa fa-download"></i></div>--%>

                                <%--</a> &nbsp;--%>
                                <%--&lt;%&ndash;<br/>&ndash;%&gt;--%>


                                <%--<a href="#">--%>
                                    <%--<div class="title-div center-block"> Name of Doc </div>--%>
                                <%--</a>--%>
                            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>

                        <%--</div>--%>


                    <%--</div>--%>
                <%--</div>--%>
            <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                <%----%>
                <%----%>




            <%--</div>--%>
        </div>


    </div>

</div>

<%@ include file="../includes/portletfooter.jsp" %>


</body></html>
<%--hello ... --%>