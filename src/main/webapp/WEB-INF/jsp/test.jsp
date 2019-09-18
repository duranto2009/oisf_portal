<%--
  Created by IntelliJ IDEA.
  User: forhad
  Date: 6/20/18
  Time: 3:40 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8" />
    <title>PMS | Dashboard</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />

    <%--include base css--%>
    <%--<%@include file="includes/portletheader.jsp"%>--%>
    <script src="<%=request.getContextPath()%>/assets/js/portal/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/portal/bootstrap.min.js"></script>

    <script src="<%=request.getContextPath()%>/assets/js/portal/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/portal/jquery.easing.min.js"></script>

    <script src="<%=request.getContextPath()%>/assets/js/portal/jquery.autocomplete.min.js"></script>
    <link href="<%=request.getContextPath()%>/assets/js/portal/main.css" rel="stylesheet">

    <!-- ================== BEGIN PAGE LEVEL CSS STYLE ================== -->

    <style>
        body {
            background-color: #f5f5f5;
        }

        #main-content {
            max-width: 940px;
            padding: 2em 3em;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }
    </style>

</head>
<body>

<style type="text/css"></style>
<!-- begin #page-loader -->
<div id="page-loader" class="fade in"><span class="spinner"></span></div>
<!-- end #page-loader -->

<!-- begin #page-container -->
<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">

    <!-- begin header and #sidebar -->
    <%--<%@include file="includes/navigationbar.jsp"%>--%>
    <!-- end #sidebar -->

    <!-- begin #content -->

    <div id="main-content" class="container">
        <div class="row">
            <div class="col-md-6">
                <form class="form-inline">
                    <div class="form-group">
                        <label id="device" > Your Device is: </label>

                    </div>
                </form>
            </div>

        </div>
        <div class="row">

            <div class="col-md-6">
                <form class="form-inline">
                    <div class="form-group">
                        <label id="ip"> Your IP is : </label>

                    </div>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form class="form-inline">
                    <div class="form-group">
                        <label id="gatewayip"> Your gateway  IP is : </label>

                    </div>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form class="form-inline">
                    <div class="form-group">
                        <label id="serverip"> Ip from Server : ${ipfromjava} </label>

                    </div>
                </form>
            </div>
        </div>

    </div>
    <script>
        $(document).ready(function() {

            if (/iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream) {
                if (!!window.indexedDB)
                {
                    $('#device').append("iOS 8 and up");

                }
                else if (!!window.SpeechSynthesisUtterance) {
                    $('#device').append("iOS 7");
                }
                else if (!!window.webkitAudioContext)
                {
                    $('#device').append("iOS 6");;
                }
                else if (!!window.matchMedia)
                {
                    $('#device').append("iOS 5");;
                }
                else if (!!window.history && 'pushState' in window.history)
                {
                    $('#device').append("iOS 4");;
                }else{
                    $('#device').append("iOS 3");
                }

            }else if(navigator.userAgent.match(/Android/i)){
                $('#device').append("Android");
            }

            else {

                $('#device').append("Windows PC");
            }

            //App.init();
            //DashboardV2.init();
        });
    </script>

    <!-- end #content -->

    <!-- begin theme-panel -->
    <%--<%@include file="includes/themepanel.jsp"%>--%>
    <!-- end theme-panel -->

    <!-- begin scroll to top btn -->
    <a href="javascript:;" class="btn btn-icon btn-circle btn-primary btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
    <!-- end scroll to top btn -->
</div>
<!-- end page container -->

<%--<%@include file="includes/footer.jsp"%>--%>

<!-- ================== BEGIN PAGE LEVEL JS ================== -->


<!-- ================== END PAGE LEVEL JS ================== -->

<script>
    $(document).ready(function() {




        alert("your machine's local network IP is "+ yip)
    });
</script>
<script type="application/javascript">
    function getIP(json) {
        $('#gatewayip').append( json.ip);
    }
    function getIPs(callback){
        var ip_dups = {};

        //compatibility for firefox and chrome
        var RTCPeerConnection = window.RTCPeerConnection
            || window.mozRTCPeerConnection
            || window.webkitRTCPeerConnection;
        var useWebKit = !!window.webkitRTCPeerConnection;

        //bypass naive webrtc blocking using an iframe
        if(!RTCPeerConnection){
            //NOTE: you need to have an iframe in the page right above the script tag
            //
            //<iframe id="iframe" sandbox="allow-same-origin" style="display: none"></iframe>
            //<script>...getIPs called in here...
            //
            var win = iframe.contentWindow;
            RTCPeerConnection = win.RTCPeerConnection
                || win.mozRTCPeerConnection
                || win.webkitRTCPeerConnection;
            useWebKit = !!win.webkitRTCPeerConnection;
        }

        //minimal requirements for data connection
        var mediaConstraints = {
            optional: [{RtpDataChannels: true}]
        };

        var servers = {iceServers: [{urls: "stun:stun.services.mozilla.com"}]};

        //construct a new RTCPeerConnection
        var pc = new RTCPeerConnection(servers, mediaConstraints);

        function handleCandidate(candidate){
            //match just the IP address
            var ip_regex = /([0-9]{1,3}(\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/
            var ip_addr = ip_regex.exec(candidate)[1];

            //remove duplicates
            if(ip_dups[ip_addr] === undefined)
                callback(ip_addr);

            ip_dups[ip_addr] = true;
        }

        //listen for candidate events
        pc.onicecandidate = function(ice){

            //skip non-candidate events
            if(ice.candidate)
                handleCandidate(ice.candidate.candidate);
        };

        //create a bogus data channel
        pc.createDataChannel("");

        //create an offer sdp
        pc.createOffer(function(result){

            //trigger the stun server request
            pc.setLocalDescription(result, function(){}, function(){});

        }, function(){});

        //wait for a while to let everything done
        setTimeout(function(){
            //read candidate info from local description
            var lines = pc.localDescription.sdp.split('\n');

            lines.forEach(function(line){
                if(line.indexOf('a=candidate:') === 0)
                    handleCandidate(line);
            });
        }, 1000);
    }

    getIPs(function(ip){
       // document.getElementById("ip").innerHTML = 'Got your IP ! : '  + ip + " | verify in http://www.whatismypublicip.com/";
        $('#ip').append(ip);
    });
</script>

<script type="application/javascript" src="https://api.ipify.org?format=jsonp&callback=getIP"></script>
<script>
    // (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    //     (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    //     m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    // })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga');
    //
    // ga('create', 'UA-53034621-1', 'auto');
    // ga('send', 'pageview');

</script>
</body>


</html>


