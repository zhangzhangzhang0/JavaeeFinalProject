
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()+path+"/";
%>

<base href="<%=basePath%>">

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">
    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">
    <!-- CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/form.css" rel="stylesheet">
    <link href="css/calendar.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Submit</title>
</head>
<body id="skin-blur-violate">

<header id="header" class="media">
    <a href="" id="menu-toggle"></a>
    <a class="logo pull-left" >Homework Platform 1.0</a>
    <!--------------------------------- 顶部时间栏 ---------------------------------------->
    <div class="media-body">
        <div class="media" id="top-menu">

            <div id="time" class="pull-right">
                <span id="hours"></span>
                :
                <span id="min"></span>
                :
                <span id="sec"></span>
            </div>

        </div>
    </div>
</header>

<div class="clearfix"></div>

<section id="main" class="p-relative" role="main">

    <!--------------------------------- 左侧栏 ---------------------------------------->
    <aside id="sidebar">

        <!-- Sidbar Widgets -->
        <div class="side-widgets overflow">
            <!-- Profile Menu -->
            <div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
                <a href="" data-toggle="dropdown">
                    <img class="profile-pic animated" src="img/22.png" alt="">
                </a>

                <h4 class="m-0">Student ID</h4>
                <input type="text" class="form-control input-sm" name="sId" readonly  value="${pageContext.request.getParameter("sId")}"></td>

            </div>

            <!-- Calendar -->
            <div class="s-widget m-b-25">
                <div id="sidebar-calendar"></div>
            </div>

        </div>

        <!--------------------------------- 最左侧学生功能栏 ---------------------------------------->
        <ul class="list-unstyled side-menu">
            <li>
                <a class="sa-side-home" href="Login.jsp">
                    <span class="menu-item">Back to Home Page</span>
                </a>
            </li>


        </ul>

    </aside>

    <section id="content" class="container">
        <div class="block-area" id="basic">
            <h3 class="block-title">Submit Homework</h3>
            <form action="${pageContext.request.contextPath}/SubmitHomeworkServlet" role="form">

                <div class="form-group">
                    <label for="sId">Student Id</label>
                    <input type="text" class="form-control input-sm" name="sId" id="sId" readonly value="${pageContext.request.getParameter("sId")}">
                </div>

                <div class="form-group">
                    <label for="hwId">Homework Id</label>
                    <input type="text" class="form-control input-sm" name="hwId" id="hwId" readonly value="${pageContext.request.getParameter("hwId")}">
                </div>

                <div class="form-group">
                    <label for="hwTitle">Homework Title</label>
                    <input type="text" class="form-control input-sm"id="hwTitle" name="hwTitle" readonly  value="${pageContext.request.getParameter("hwTitle")}">
                </div>

                <div class="form-group">
                    <label for="hwContent">Homework Demand</label>
                    <input type="text" class="form-control input-sm"id="hwContent" name="hwContent" readonly  value="${pageContext.request.getParameter("hwContent")}">
                </div>

                <div class="form-group">
                    <label for="finish">Homework Content</label>
                    <input type="text" name="finish" class="form-control input-sm" id="finish" placeholder="Enter your homework content">
                </div>


                <button type="submit" name="submit" class="btn btn-sm m-t-10">Submit</button>
            </form>

            <form action="/SSubmit.jsp" method=post >
                <a href="${pageContext.request.contextPath}/submit1?sId=${pageContext.request.getParameter("sId")}"><input type="button" value="Back" class="btn btn-sm m-t-10"></a>
            </form>

        </div>



    </section>
    <br/><br/>
</section>


<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="js/jquery.min.js"></script> <!-- jQuery Library -->
<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- UX -->
<script src="js/scroll.min.js"></script> <!-- Custom Scrollbar -->
<!-- Other -->
<script src="js/calendar.min.js"></script> <!-- Calendar -->
<script src="js/feeds.min.js"></script> <!-- News Feeds -->
<!-- All JS functions -->
<script src="js/functions.js"></script>




</body>
</html>











