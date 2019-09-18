
<style>
    .autocomplete-suggestion {

        font-size: 15px!important;
        border-bottom: 1px;
    }
    /*#mainNav{*/
        /*position: fixed;!important;*/
    /*}*/
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

    @media only screen and (min-width: 992px) {
        .first{


            /*margin-bottom: 26% !important;*/
        }
        .bottom{
            position:  relative;bottom:  0;
        }
    }

    @media only screen and (max-width: 991px) {
        .first{
            margin-bottom: 2% !important;
        }
        .bottom{
            position: relative;
        }
    }

    @media only screen and (max-width: 991px) {
        #mainNav {
            /*height: 74px;*/
            position: relative;
            background-color: #fff;
            /*max-height: 74px;*/
        }

    }

    #container{
        min-height: 58vh;
    }


    @media (max-width: 992px){
        .dropdownPushLeft{
            margin-left: 0px !important;
        }
    }
    .dropdownPushLeft{
        margin-left: -25px;
    }
</style>


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
        <a class="navbar-brand pull-right ">

            <%--<img src="/assets/portal/img/logo/a2i.png">--%>
        </a>

    <div class=" collapse navbar-collapse" id="navbarResponsive" style="justify-content: center;background-color: white">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="<%=request.getContextPath()%>/portal#home" style="color:purple;">
                    <div style="position: relative;">
                        Home
                        <div class="navelecolorbottom" style="position: absolute;width: 100%;min-height: 0px;">

                        </div>
                    </div>

                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="<%=request.getContextPath()%>/portal#about" style="color:purple;">
                    <div style="position: relative;">
                        About
                        <div class="navelecolorbottom" style="position: absolute;width: 100%;min-height: 0px;">

                        </div>
                    </div>

                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="<%=request.getContextPath()%>/portal#standard" style="color:purple;">

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
                <a class="nav-link js-scroll-trigger" href="<%=request.getContextPath()%>/portal#service" style="color:purple;">

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
                    <a class="dropdown-item" href="<%=request.getContextPath()%>/portal/serviceregistration">Service
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
            <li class="nav-item ">
                <div class=" search-container" style="float: left!important;">
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

<script src="<%=request.getContextPath()%>/assets/js/portal/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/portal/bootstrap.min.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/portal/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/portal/jquery.easing.min.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/portal/jquery.autocomplete.min.js"></script>
<link href="<%=request.getContextPath()%>/assets/js/portal/main.css" rel="stylesheet">

<script>


    $(document).ready(function() {

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