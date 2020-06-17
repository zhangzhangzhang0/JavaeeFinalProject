
<%@ page import="java.util.List" %>
<%@ page import="com.example.mybatis.model.Homework" %>

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
    <title>Add</title>
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
                    <img class="profile-pic animated" src="img/11.png" alt="">
                </a>

                <h4 class="m-0">Teacher</h4>
            </div>

            <!-- Calendar -->
            <div class="s-widget m-b-25">
                <div id="sidebar-calendar"></div>
            </div>

        </div>

        <!--------------------------------- 最左侧老师功能栏 ---------------------------------------->
        <ul class="list-unstyled side-menu">
            <li>
                <a class="sa-side-home" href="TChoose.jsp">
                    <span class="menu-item">Back to Teacher's Home Page</span>
                </a>
            </li>
            <li>
                <a class="sa-side-form" href="${pageContext.request.contextPath}/TAdd">
                    <span class="menu-item">Add Student</span>
                </a>
            </li>
            <li>
                <a class="sa-side-typography" href="${pageContext.request.contextPath}/TDelete">
                    <span class="menu-item">Delete Student</span>
                </a>
            </li>
            <li>
                <a class="sa-side-widget" href="${pageContext.request.contextPath}/Search">
                    <span class="menu-item">Check List</span>
                </a>
            </li>
            <li class="active">
                <a class="sa-side-table" href="${pageContext.request.contextPath}/TAddHomework">
                    <span class="menu-item">Add Homework</span>
                </a>
            </li>
            <li class="active">
                <a class="sa-side-form" href="${pageContext.request.contextPath}/Check">
                    <span class="menu-item">Check Homework</span>
                </a>
            </li>
            <li class="active">
                <a class="sa-side-ui" href="TLogin.jsp">
                    <span class="menu-item">Back to Home Page</span>
                </a>
            </li>

        </ul>

    </aside>

    <!-- Content -->
    <section id="content" class="container">

        <div class="block-area" id="Homework">
            <h3 class="block-title">Homework</h3>
            <div class="table-responsive overflow">
                <table class="tile table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>作业号</th>
                        <th>作业题目</th>
                        <th>作业要求</th>
                        <th>创建时间</th>
                        <th>已提交个数</th>
                        <th>查看</th>
                    </tr>
                    </thead>
                    <%
                        List<Homework> list3= (List<Homework>)request.getAttribute("list3");

                        for(Homework h:list3){
                    %>
                    <tr>
                        <td><%=h.getId()%></td>
                        <td><%=h.getHomeworkTitle()%></td>
                        <td><%=h.getHomeworkContent()%></td>
                        <td><%=h.getCreateTime()%></td>
                        <td><%=h.getNum()%></td>
                        <td><a href="${pageContext.request.contextPath}/CheckHomework?hwId=<%=h.getId()%>"><input type="button" value="Check" class="btn btn-sm m-t-10"></a></td>

                    </tr>
                    <%

                        }
                    %>

                </table>
            </div>
        </div>



    </section>

    <br/><br/>
</section>

<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="js/jquery.min.js"></script> <!-- jQuery Library -->
<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!--  Form Related -->
<script src="js/select.min.js"></script> <!-- Custom Select -->
<script src="js/icheck.js"></script> <!-- Custom Checkbox + Radio -->
<script src="js/fileupload.min.js"></script> <!-- File Upload -->
<script src="js/autosize.min.js"></script> <!-- Textare autosize -->
<!-- UX -->
<script src="js/scroll.min.js"></script> <!-- Custom Scrollbar -->
<!-- Other -->
<script src="js/calendar.min.js"></script> <!-- Calendar -->
<script src="js/feeds.min.js"></script> <!-- News Feeds -->
<!-- All JS functions -->
<script src="js/functions.js"></script>


</body>
</html>
