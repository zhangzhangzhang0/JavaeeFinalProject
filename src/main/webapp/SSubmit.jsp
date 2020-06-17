
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.mybatis.model.Homework" %>
<%@ page import="java.util.List" %>

<%@ page import="com.example.mybatis.model.Student" %>
<%@ page import="com.example.mybatis.model.StudentHomework" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">

<title>Student</title>

<!DOCTYPE html>
<html>
<head>
    <title>Student</title>
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
    <link href="css/media-player.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
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

        <!-- Table Striped -->
        <div class="block-area" id="Homework">
            <h3 class="block-title">Homework</h3>
            <div class="table-responsive overflow">
                <table class="table tile table-condensed">
                    <thead>
                        <tr>
                            <th>作业ID</th>
                            <th>作业标题</th>
                            <th>作业内容</th>
                            <th>创建时间</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <%
                        boolean flag = (Boolean)request.getAttribute("flag");

                        if(flag==false){
                            out.print("None data.");
                        }else {
                            List<Homework> list4 = (List<Homework>) request.getAttribute("list4");
                            List<StudentHomework> list3 = (List<StudentHomework>) request.getAttribute("list3");

                            for(Homework h:list4){
                    %>
                    <tr>

                        <td><%=h.getId()%></td>
                        <td><%=h.getHomeworkTitle()%></td>
                        <td><%=h.getHomeworkContent()%></td>
                        <td><%=h.getCreateTime()%></td>
                        <td>未提交</td>
                        <td><a href="${pageContext.request.contextPath}/submit2?hwId=<%=h.getId()%>&&sId=${pageContext.request.getParameter("sId")}&&hwTitle=<%=h.getHomeworkTitle()%>&&hwContent=<%=h.getHomeworkContent()%>"><input type="button" value="提交" class="btn btn-sm m-t-10"></a></td>

                    </tr>

                    <%
                        }
                            for(StudentHomework sh:list3){

                    %>
                    <tr>
                        <td><%=sh.getHomeworkId()%></td>
                        <td><%=sh.getHomeworkTitle()%></td>
                        <td><%=sh.getHomeworkContent()%></td>
                        <td><%=sh.getCreateTime()%></td>
                        <td>已提交 分数:<%=sh.getScore()%></td>
                        <td><a href="${pageContext.request.contextPath}/submit2?hwId=<%=sh.getHomeworkId()%>&&sId=${pageContext.request.getParameter("sId")}&&hwTitle=<%=sh.getHomeworkTitle()%>&&hwContent=<%=sh.getHomeworkContent()%>"><input type="button" value="更新作业" class="btn btn-sm m-t-10"></a></td>
                    </tr>


                    <%
                        }
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
<!-- UX -->
<script src="js/scroll.min.js"></script> <!-- Custom Scrollbar -->
<!-- Other -->
<script src="js/calendar.min.js"></script> <!-- Calendar -->
<script src="js/feeds.min.js"></script> <!-- News Feeds -->
<!-- All JS functions -->
<script src="js/functions.js"></script>
</body>
</html>

