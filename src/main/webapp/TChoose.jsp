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


<!-- HERO -->
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
                <h1>Welcome Teacher</h1>
            </div>

            <div class="animation-container animation-fade-left" data-animation-delay="600">
                <p class="subline">Please choose Service!</p>
            </div>

            <form action="${pageContext.request.contextPath}/TAdd" method=post >
                <div class="animation-container animation-fade-up" data-animation-delay="700">
                    <input type="submit" class="open-popup" value="Add Student"/></th>
                </div>
            </form>
            <form action="${pageContext.request.contextPath}/TDelete" method=post >
                <div class="animation-container animation-fade-up" data-animation-delay="800">
                    <input type="submit" class="open-popup" value="Delete Student" /></th>
                </div>
            </form>


            <form action="${pageContext.request.contextPath}/Search" method=post >
                <div class="animation-container animation-fade-up" data-animation-delay="1000">
                    <input type="submit" class="open-popup" value="Check" /></th>
                </div>
            </form>

            <form action="${pageContext.request.contextPath}/TADDHomework" method=post >
                <div class="animation-container animation-fade-up" data-animation-delay="1100">
                    <input type="submit" class="open-popup" value="Add Homework" /></th>
                </div>
            </form>

            <form action="${pageContext.request.contextPath}/Check" method=post >
                <div class="animation-container animation-fade-up" data-animation-delay="1100">
                    <input type="submit" class="open-popup" value="Check Homework" /></th>
                </div>
            </form>

            <form action="TLogin.jsp" method=post >
                <div class="animation-container animation-fade-up" data-animation-delay="1200">
                    <input type="submit" class="open-popup" value="Back" /></th>
                </div>
            </form>



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



</body>
<script type="text/javascript" src="assets/js/plugins.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>
<script type="text/javascript" src="js/particles.js"></script>
<script type="text/javascript" src="js/app.js"></script>
</html>

