<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
    <meta name="description" content="base" />
    <link rel="icon" href="/ui-component/assets/images/favicon.ico">
    <link rel="shortcut icon" href="/ui-component/assets/images/favicon.ico">
    <title>Login</title>

    <link rel="stylesheet" href="/ui-component/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/ui-component/neon-theme/bootstrap/3.3.5/css/bootstrap.neon.custom.css" />
    <link rel="stylesheet" href="/ui-component/font-awesome/6.2.1/css/all.min.css" />
    <link rel="stylesheet" href="/ui-component/neon-theme/font-icons/entypo/css/entypo.css" />
    <link rel="stylesheet" href="/ui-component/neon-theme/jquery-ui/1.10.3/css/jquery-ui.neon.custom.min.css" />
    <link rel="stylesheet" href="/ui-component/neon-theme/css/neon-core.css" />
    <link rel="stylesheet" href="/ui-component/neon-theme/css/neon-theme.css" />
    <link rel="stylesheet" href="/ui-component/neon-theme/css/neon-forms.css" />
    <link rel="stylesheet" href="/ui-component/neon-theme/css/neon-patch.css" />



    <script src="/ui-component/jquery/3.6.1/js/jquery.min.js"></script>
    <script src="/ui-component/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script src="/ui-component/neon-theme/js/gsap/TweenMax.min.js"></script>
    <script src="/ui-component/neon-theme/js/joinable.js"></script>
    <script src="/ui-component/neon-theme/js/resizeable.js"></script>
    <script src="/ui-component/neon-theme/js/neon-api.js"></script>
    <script src="/ui-component/neon-theme/js/jquery.validate.min.js"></script>
    <script src="/ui-component/neon-theme/js/neon-login.js"></script>


    <!--[if lte IE 8]>
    <script src="/ui-component/ace-theme/js/html5shiv.min.js"></script>
    <script src="/ui-component/ace-theme/js/respond.min.js"></script>
    <![endif]-->

</head>

<body class="page-body login-page login-form-fall">
<div class="login-container">
    <div class="login-header login-caret">
        <div class="login-content">
            <a class="logo">
                <img src="/ui-component/assets/images/rebg-logo.png" alt="메인화면 로고" width="120px"/>
            </a>
            <p class="description">I'm Working On It !</p>
            <div class="login-progressbar-indicator">
                <h3>43%</h3> <span>데이터 요청중입니다...</span>
            </div>
        </div>
    </div>
    <div class="login-progressbar">
        <div></div>
    </div>
    <div class="login-form">
        <div class="login-content">
            <div class="form-login-error">
                <h3>로그인 실패.</h3>
                <p id="neon-theme_login_err_msg"></p>
            </div>
            <form method="post" role="form" id="form_login">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="entypo-user"></i>
                        </div>
                        <input type="text" class="form-control" name="id" id="neon-theme_login_id" placeholder="ID" autocomplete="off" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="entypo-key"></i>
                        </div>
                        <input type="password" class="form-control" name="password" id="neon-theme_login_pw" placeholder="PW" autocomplete="off" />
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block btn-login">
                        <i class="entypo-login"></i>로그인
                    </button>
                </div>
            </form>
<%--            <div class="login-bottom-links">--%>
<%--                <a href="#" class="link">Forgot your password?</a>--%>
<%--                <br />--%>
<%--                <a href="#">ToS</a> - <a href="#">Privacy Policy</a>--%>
<%--            </div>--%>
        </div>
    </div>
</div>

</body>
</html>