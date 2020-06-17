<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<!-- Head -->

<head>
    <title>Login</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="css/style22.css" type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <!-- //fonts -->
    <link rel="stylesheet" href="css/2.css" type="text/css" media="all">
    <!-- //Font-Awesome-File-Links -->

    <!-- Google fonts -->
    <link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">
    <!-- Google fonts -->

</head>
<!-- //Head -->
<!-- Body -->

<body>

<section class="main">
    <div class="layer">

        <div class="bottom-grid">
            <div class="bottom-grid">

                <div class="links">
                    <ul class="links-unordered-list">
                        <li class="">
                            <a class="">S T U D E N T | L O G I N</a>
                        </li>

                    </ul>
                </div>
            </div>

            <div class="links">
                <ul class="links-unordered-list">
                    <li class="active">
                        <a href="Login.jsp" class="">Student</a>
                    </li>
                    <li class="">
                        <a href="TLogin.jsp" class="">Teacher</a>
                    </li>

                </ul>
            </div>
        </div>
        <div class="content-w3ls">
            <div class="text-center icon">
                <span class="fa fa-html5"></span>
            </div>
            <div class="content-bottom">
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="sId" id="sId" type="text" value="" placeholder="UserID" required>
                        </div>
                    </div>

                    <div class="wthree-field">
                        <button type="submit" class="btn">Login in</button>
                    </div>

                </form>
            </div>
        </div>

        </div>
    </div>
</section>

</body>
<!-- //Body -->
</html>
