
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html>


<head>
    <title>Welcome to the Homework Platform</title>
    <!-- META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="assets/img/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&amp;subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/plugins.css">
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <script type="text/javascript" src="js/modernizr.custom.86080.js"></script>

</head>

<body>

<!-- PRELOADER -->
<div class="hero">
    <!-- FRONT CONTENT -->
    <div class="front-content">
        <!-- CONTAINER MID -->
        <div class="container-mid">
            <!-- ANIMATION CONTAINER -->
            <div class="animation-container animation-fade-down" data-animation-delay="0">
                <img class="img-responsive logo" src="assets/img/logo.png" alt="image">
            </div>

            <div class="animation-container animation-fade-right" data-animation-delay="300">
                <h1>JavaEE 作业管理系统</h1>
            </div>

            <div class="animation-container animation-fade-left" data-animation-delay="600">
                <p class="subline">Please choose your identity. Thank you for visiting our site!</p>
            </div>


            <form method=post >
                <div class="animation-container animation-fade-up" data-animation-delay="900">
                    <input type="submit" class="open-aoa" value="Teacher" /></th>
                </div>
            </form>

            <form action="/Login.jsp" method=post >
                <div class="animation-container animation-fade-up" data-animation-delay="900">
                    <div type="submit" class="open-popup">Student</div>
                </div>
            </form>

        </div>

        <div class="footer">
            <!-- ANIMATION CONTAINER -->
            <div class="animation-container animation-fade-up" data-animation-delay="1200">
                <p>© 2020 Erin的作业管理系统 </p>
            </div>
            <!-- /ANIMATION CONTAINER -->
        </div>

    </div>
    <!-- /FRONT CONTENT -->
    <!-- BACKGROUND CONTENT -->
    <div class="background-content parallax-on">
        <div class="background-overlay"></div>
        <div class="background-img layer" data-depth="0.05"></div>
    </div>
    <!-- /BACKGROUND CONTENT -->
</div>
<!-- /HERO -->

<!-- POPUP ( SUBSCRIBE ) -->
<div class="popup">
    <!-- CARD -->
    <div class="card">
        <!-- CARD CLOSE BUTTON -->
        <div class="close-popup close-button"></div>
        <i class="fa fa-envelope-o" aria-hidden="true"></i>
        <h3>Sign Up</h3>
        <p class="subline">Signing up with your ID!</p>

        <form action="${pageContext.request.contextPath}/app/login" >
            <div class="row form-section">

                <div class="col-md-7 col-sm-7 col-xs-7">
                    <input name="sId" type="text" class="form-control" />
                </div>

                <div class="col-md-5 col-sm-5 col-xs-5">
                    <button type="submit" class="btn btn-primary form-control">Subscribe</button>
                </div>
            </div>
        </form>
    </div>

</div>


</body>

<script type="text/javascript" src="js/particles.js"></script>
<script type="text/javascript" src="js/app.js"></script>
</html>
