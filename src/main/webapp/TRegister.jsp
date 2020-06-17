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
    <link rel="stylesheet" href="css/style22.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/2.css" type="text/css" media="all">
    <link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&amp;subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/plugins.css">
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <script type="text/javascript" src="js/modernizr.custom.86080.js"></script>
    <!-- Google fonts -->


</head>

<body>

<section class="main">
    <div class="layer">

        <div class="bottom-grid">
            <div class="bottom-grid">

            <div class="links">
                <ul class="links-unordered-list">
                    <li class="">
                        <a class="">T E A C H E R | R E G I S T E R</a>
                    </li>

                </ul>
            </div>
        </div>


            <div class="links">
                <ul class="links-unordered-list">
                    <li class="">
                        <a href="Login.jsp" class="">Student</a>
                    </li>
                    <li class="active">
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
                <form action="${pageContext.request.contextPath}/TRegister" method="post">
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="id" id="id" type="text" value="" placeholder="UserID" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="pw" id="pw" type="text" value="" placeholder="User Passward" required>
                        </div>
                    </div>

                    <div class="wthree-field">
                        <button type="submit" class="btn">Register</button>
                    </div>

                    <ul class="list-login">

                        <li>
                            <a href="TLogin.jsp" class="text-right">L o g i n</a>
                        </li>
                        <li class="clearfix"></li>
                    </ul>

                </form>
            </div>
        </div>

        </div>
    </div>
</section>

</body>
<!-- //Body -->
</html>
