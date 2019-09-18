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
            font-weight: 800 !important;

        }

        .urllink {
            color: green !important;
            font-weight: 600 !important;
        }
        .collapsing {

            transition: 800ms ease-in-out;
            /*display: none;*/
        }
    </style>

</head>

<body id="page-top" style="position: relative; top: 0px;">

<!-- Navigation -->
<%@ include file="../includes/portletheader.jsp" %>


<div id="container" class="first">
    <div class="container second">
        <pre style="font-size: 20px"> Home > <a class="urllink" href="">Search</a> </pre>

    </div>
    <div class="container fourth" style="background-color: #F6F6F6;">
        <h2><a class="btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#owner" style="font-size: 25px">
            Search Criteria "${searchParam}" Matched Following Service Root</a></h2>
        <div id="owner" class="collapse show">
            <div class="portlet-body" style="background-color: white;margin-bottom: 2% ;margin-top: 2%">
                <div class="table-scrollable table-responsive">
                    <table id="datatable2" class="table table-striped table-bordered table-hover" cellspacing="0"
                           width="100%">
                        <thead>
                        <tr>
                            <th style="font-size: 18px"></th>

                        </tr>
                        </thead>

                        <tbody>
                        <%--jstl for loop--%>

                        <%--&lt;%&ndash;<c:set var="url" value="servicelist"+></c:set>&ndash;%&gt;--%>


                        <c:forEach var="items" items="${searchData}">

                            <c:if test="${items.type==1}">
                                <tr class="list-group">
                                    <td class="list-group-item"><a href="<%=request.getContextPath()%>/${items.url}">
                                            ${items.nameEng}</a>
                                    </td>
                                </tr>
                            </c:if>
                        </c:forEach>

                        <%--for loop end--%>

                        </tbody>
                    </table>
                </div>


            </div>
        </div>


        <h2><a class="btn btn-link dropdown-toggle" data-toggle="collapse" data-target="#service"
               style="font-size: 25px">Search Criteria "${searchParam}" Matched Following Services</a></h2>
        <div id="service" class="collapse show">
            <div class="portlet-body " style="background-color: white;margin-bottom: 2% ;margin-top: 2%">
                <div class="table-scrollable table-responsive">
                    <table id="datatable" class="table table-striped table-bordered table-hover" cellspacing="0"
                           width="100%">
                        <thead>
                        <tr>
                            <th style="font-size: 18px"></th>

                        </tr>
                        </thead>

                        <tbody>
                        <%--jstl for loop--%>

                        <%--&lt;%&ndash;<c:set var="url" value="servicelist"+></c:set>&ndash;%&gt;--%>


                        <c:forEach var="items" items="${searchData}">

                            <c:if test="${items.type==2}">
                                <tr>

                                    <td style="margin-bottom: 2px"><a
                                            href="<%=request.getContextPath()%>/${items.url}">
                                            ${items.nameEng}</a>
                                        <a class="pull-right" style="color: #0a6aa1!important; margin-left: 8px"
                                           href="/portal/serviceintstandard/${items.id}">Integration Standard</a>

                                        <a class="pull-right" style="color: #0a6aa1!important;margin-left: 8px"
                                           href="/portal/servicedbstandard/${items.id}">Data Standard</a>
                                        <a class="pull-right" style="color: #0a6aa1!important;margin-left: 8px"
                                           href="/portal/servicemeta/${items.id}">Metadata</a>
                                            <%--<ul class="list-group">--%>
                                            <%--<li  class="list-group-item" >MetaData</li>--%>
                                            <%--<li  class="list-group-item" >Data Standard</li>--%>
                                            <%--<li  class="list-group-item" >Integration Standard</li>--%>
                                            <%--</ul>--%>
                                    </td>
                                </tr>
                            </c:if>
                        </c:forEach>

                        <%--for loop end--%>

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
    $(document).ready(function () {

        $('#datatable').DataTable({
            "sDom": '<"row" <"col-md-6 col-sm-12"l><"col-md-6 col-sm-12"f>><"table-scrollable"t>' +
            '<"row" <"col-md-5 col-sm-12"i><"col-md-7 col-sm-12"p>>'
        });
        $('#datatable2').DataTable({
            "sDom": '<"row" <"col-md-6 col-sm-12"l><"col-md-6 col-sm-12"f>><"table-scrollable"t>' +
            '<"row" <"col-md-5 col-sm-12"i><"col-md-7 col-sm-12"p>>'
        });


    });
</script>
</body>
</html>


