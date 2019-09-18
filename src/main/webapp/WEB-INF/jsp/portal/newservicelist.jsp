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
        .urllink{
            color: green!important;
            font-weight: 600!important;
        }
        pre{
            color: green!important;
            font-weight: 800!important;

        }

        .portlet-body{
            padding-top:33px;
        }
    </style>

</head>

<body id="page-top">

<!-- Navigation -->
<%@ include file="../includes/portletheader.jsp" %>
<c:if test="${urlnames.type==1}">
    <c:set var="urltitle" value="Shared"></c:set>
    <c:set var="bool" value="1"></c:set>
</c:if>
<c:if test="${urlnames.type==0}">
    <c:set var="urltitle" value="Core"></c:set>
    <c:set var="bool" value="0"></c:set>
</c:if>
<div class="first">
    <div class="container second" style="margin-top: 100px;">
        <pre style="font-size: 20px"> Home > <a class="urllink" href="<%=request.getContextPath()%>/portal#service">Services</a> <c:if test="${bool==0}"> > <a class="urllink" href="<%=request.getContextPath()%>/portal/corelist">${urltitle} Services</a></c:if><c:if test="${bool==1}"> > <a class="urllink" href="<%=request.getContextPath()%>/portal/sharedlist">${urltitle} Services</a></c:if> > ${urlnames.nameEng} </pre>
    </div>
    <div class="container third" style="margin-top: 100px;">
        <p style="font-size: 26px; font-weight: 600;color: #693293"></p>
    </div>
    <div class="container fourth" >

        <div style="margin:30px 0">
            <div class="portlet-body">
                <div class="table-scrollable table-responsive">
                    <table id="datatable" class="table table-striped table-bordered table-hover" cellspacing="0"
                           width="100%">
                        <thead>
                        <tr>
                            <th style="font-size: 18px">${title}</th>

                        </tr>
                        </thead>

                        <tbody>
                        <%--jstl for loop--%>

                        <%--&lt;%&ndash;<c:set var="url" value="servicelist"+></c:set>&ndash;%&gt;--%>

                        <c:forEach var="data" items="${services}">
                            <tr>
                                <td><a href="<%=request.getContextPath()%>/portal/servicemeta/${data.getServiceId()}">
                                        ${data.getNameEng()}
                                </a></td>
                            </tr>
                        </c:forEach>

                        <%--for loop end--%>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="empty2" tyle="background-color: #F6F6F6;">

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
            "sDom": '<"row" <"col-md-6 col-sm-12"l><"col-md-6 col-sm-12"f>><"table-scrollable"t><"row" <"col-md-5 col-sm-12"i><"col-md-7 col-sm-12"p>>'
        });


    });
</script>
</body>

</html>

