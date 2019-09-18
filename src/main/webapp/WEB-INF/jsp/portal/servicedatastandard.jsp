<%--
  Created by IntelliJ IDEA.
  User: reve
  Date: 1/29/2018
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>
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

    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico"/>

    <title>OISF Portal</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/assets/css/portal/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <%--<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">--%>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">

    <!-- Plugin CSS <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"> -->



    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/css/portal/creative.min.css" rel="stylesheet">
    <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css" rel="stylesheet">--%>
    <link href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/assets/css/common/datatablecustom.css" rel="stylesheet" type="text/css"/>
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
    </style>

</head>

<body id="page-top">

<!-- Navigation -->
<!-- Navigation -->

<c:if test="${urlnames.type==1}">
    <c:set var="urltitle" value="Shared"></c:set>
    <c:set var="bool" value="1"></c:set>
</c:if>
<c:if test="${urlnames.type==0}">
    <c:set var="urltitle" value="Core"></c:set>
    <c:set var="bool" value="0"></c:set>
</c:if>
<%@ include file="../includes/portletheader.jsp" %>
<div class="first" >
    <div class="container second">
        <pre style="font-size: 20px"> Home  ><a class="urllink" href="<%=request.getContextPath()%>/portal#standard"> Standards </a> <c:if test="${bool==0}">> <a class="urllink" href="<%=request.getContextPath()%>/portal/corelist">${urltitle} Services</a></c:if><c:if test="${bool==1}">><a class="urllink" href="<%=request.getContextPath()%>/portal/sharedlist">${urltitle} Services</a></c:if>> <a class="urllink" href="<%=request.getContextPath()%>/portal/servicelist/${urlnames.id}">${urlnames.nameEng}  </a>> Data Standard</pre>
    </div>

    <div class="container third">

        <p style="font-size: 26px; font-weight: 600;color: #693293">Service
        Data Standard</p>
    </div>
    <div class="container fourth" >

        <div class="portlet box ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-social-dribbble font-green"></i>

                </div>

            </div>
            <c:set var="detail" value="${service}"></c:set>
            <p style="margin-left: 10px;font-size: 22px"><b style="font-weight: 500;color: #693293"> Data Standard : </b>${detail.nameEng}</p>
            <div class="portlet-body flip-scroll">
                <%--<div class="table-responsive" >--%>
                    <%--<table border="1px" class="table table-striped table-bordered table-hover" style="background-color: white">--%>

                        <%--<tbody>--%>
                        <%--<tr>--%>
                            <%--<td>--%>
                                <%--<p><strong>Reference No</strong></p>--%>
                            <%--</td>--%>
                            <%--<td>--%>
                                <%--<p>${service.dbStandRefNum}</p>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td colspan="2">--%>
                                <%--<p style="text-align: center;"><strong>Service Invoking Fields</strong></p>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>--%>
                                <%--<p><strong>Mandatory Fields</strong></p>--%>
                                <%--<ol>--%>
                                    <%--<c:forEach var="data" items="${fields}">--%>
                                        <%--<c:if test="${data.type==1}">--%>
                                            <%--<c:if test="${data.isMandatory>0}">--%>
                                                <%--<li>--%>
                                                        <%--${data.nameEng}--%>
                                                <%--</li>--%>
                                            <%--</c:if>--%>
                                        <%--</c:if>--%>

                                    <%--</c:forEach>--%>
                                <%--</ol>--%>
                            <%--</td>--%>
                            <%--<td>--%>
                                <%--<p><strong>Optional Fields</strong></p>--%>
                                <%--<ol>--%>

                                    <%--<c:forEach var="data" items="${fields}">--%>
                                        <%--<c:if test="${data.type==1}">--%>
                                            <%--<c:if test="${data.isMandatory<1}">--%>
                                                <%--<li>--%>
                                                        <%--${data.nameEng}--%>
                                                <%--</li>--%>
                                            <%--</c:if>--%>
                                        <%--</c:if>--%>

                                    <%--</c:forEach>--%>
                                <%--</ol>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td colspan="2">--%>
                                <%--<p style="text-align: center;"><strong>Service Response Fields</strong></p>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td colspan="2">--%>
                                <%--<ol>--%>

                                    <%--<c:forEach var="data" items="${fields}">--%>
                                        <%--<c:if test="${data.type==2}">--%>

                                            <%--<li>--%>
                                                    <%--${data.nameEng}--%>
                                            <%--</li>--%>
                                        <%--</c:if>--%>


                                    <%--</c:forEach>--%>
                                <%--</ol>--%>
                            <%--</td>--%>
                        <%--</tr>--%>
                        <%--</tbody>--%>

                    <%--</table>--%>
                <%--</div>--%>

                <p></p>
                <p></p>


                <p style="text-align: center;"><strong>Field Details</strong></p>

                <div class="table-responsive" style="background-color: white">

                    <table class="table table-striped table-bordered table-hover">


                        <tbody>
                        <tr>
                            <td>
                                <p><strong>Field Name</strong></p>
                            </td>
                            <td>
                                <p><strong>Field Type</strong></p>
                            </td>
                            <td>
                                <p><strong>Detail description</strong></p>
                            </td>
                        </tr>

                        <c:forEach var="data" items="${fields}">
                            <tr>
                                <td>
                                        ${data.nameEng}
                                </td>
                                <td>
                                        ${data.fieldType}
                                </td>
                                <td>
                                        ${data.description}
                                </td>

                            </tr>


                        </c:forEach>



                        </tbody>


                    </table>
                </div>
            </div>
        </div>

    </div>

</div>

<%@ include file="../includes/portletfooter.jsp" %>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>



<script>

    var scrollLimitTracker = [];
    $(document).ready(function(){

        $('#datatable').DataTable({
            "sDom": '<"row" <"col-md-6 col-sm-12"l><"col-md-6 col-sm-12"f>><"table-scrollable"t><"row" <"col-md-5 col-sm-12"i><"col-md-7 col-sm-12"p>>'
        });


    });
</script>
</body>

</html>

