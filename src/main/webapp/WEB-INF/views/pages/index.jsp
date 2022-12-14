<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
    <meta name="description" content="base" />
    <link rel="icon" href="#">
    <link rel="shortcut icon" href="#">
    <title>index</title>

    <link rel="stylesheet" href="/static/ui-component/bootstrap/4.3.1/css/bootstrap.min.css" />
<%--    <link rel="stylesheet" href="/ui-component/bootstrap/3.3.6/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" href="/static/ui-component/font-awesome/6.2.1/css/all.min.css" />
    <link rel="stylesheet" href="/static/ui-component/jquery-ui/1.13.2/css/jquery-ui.min.css" />
    <link rel="stylesheet" href="/static/ui-component/jqGrid/4.7/plugins/css/ui.multiselect.css" />
    <link rel="stylesheet" href="/static/ui-component/jqGrid/4.7/css/ui.jqgrid.css" />

    <link rel="stylesheet" href="/static/ui-component/ace-theme/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-part2.min.css" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-skins.min.css" />
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-rtl.min.css" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="/ui-component/ace-theme/css/ace-patch.css" />

    <link rel="stylesheet" href="/ui-component/select2/4.0.13/css/select2.min.css" />


    <script src="/ui-component/jquery/3.6.1/js/jquery.min.js"></script>
    <script src="/ui-component/jqGrid/4.7/js/i18n/grid.locale-kr.js"></script>
    <script src="/ui-component/jquery-ui/1.13.2/js/jquery-ui.min.js"></script>
    <script src="/ui-component/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%--    <script src="/ui-component/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>
    <script src="/ui-component/jqGrid/4.7/plugins/js/ui.multiselect.js"></script>
    <script src="/ui-component/jqGrid/4.7/js/jquery.jqGrid.min.js"></script>

    <script src="/ui-component/select2/4.0.13/js/select2.min.js"></script>
    <script src="/ui-component/select2/4.0.13/js/i18n/ko.js"></script>

    <!-- ace settings handler -->
    <script src="/ui-component/ace-theme/js/ace-extra.min.js"></script>

    <!--[if lte IE 8]>
    <script src="/ui-component/ace-theme/js/html5shiv.min.js"></script>
    <script src="/ui-component/ace-theme/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin">

<div class="navtopbar">
    <div class="col-lg-12">
        <a href="#" class="navtopbar-brand navtopbar-left">
            Brand left
        </a>
        <a href="#" class="navtopbar-brand navtopbar-right">
            Brand right
        </a>
    </div>
</div>

<div class="navbar">
    <div class="col-lg-12">
<%--        <a href="javascript:void(0)" onclick="" class="navbar-brand">--%>
<%--            <img src="/ui-component/assets/images/rebg-main.png" id="main_logo_img" width="200px">--%>
<%--        </a>--%>
    <div class="navbar-container">
<%--            <a href="javascript:void(0)" onclick="" class="navbar-brand">--%>
<%--                <img src="/ui-component/assets/images/rebg-main.png" id="main_logo_img" width="200px">--%>
<%--            </a>--%>
<%--            <div class="form-group">--%>
<%--                <a href="javascript:void(0);" class="navbar-brand top_m" style="color: black;">--%>
<%--                    <i class="fa fa-user"></i> 개발자님 반갑습니다.--%>
<%--                    <input type="hidden" value="DEV" id="huscd">--%>
<%--                    <input type="hidden" value="개발자" id="husnm">--%>
<%--                    <br />--%>
<%--                    <button type="button" class="btn btn-minier btn-dark btn-primary" onclick="();">일괄닫기</button>--%>
<%--                    <button type="button" class="btn btn-minier btn-dark btn-primary" onclick="();">암호변경</button>--%>
<%--                    <button type="button" class="btn btn-minier btn-dark btn-primary" onclick="();">로그아웃</button>--%>
<%--                </a>--%>
<%--            </div>--%>
    </div>
</div>

<%--<div id="navbar" class="navbar navbar-default ace-save-state" >--%>
<%--    <div class="navbar-container ace-save-state" id="navbar-container" >--%>

<%--        <div class="col-lg-12">--%>
<%--&lt;%&ndash;            <button type="button" class="navbar-toggle menu-toggler navbar-brand" id="menu-toggler2" data-target="#sidebar2" style="float:left; height: 30px; width: 30px; margin-top:16px; background-color: #00000033">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <i class="fa fa-list"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </button>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <button type="button" class="navbar-toggle menu-toggler navbar-brand" id="menu-toggler" data-target="#sidebar" style="float:left; height: 30px; width: 30px; margin-top:16px; background-color: #00000033">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <i class="fa fa-folder-open-o"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </button>&ndash;%&gt;--%>

<%--            <a href="javascript:void(0)" class="navbar-brand">--%>
<%--                <img src="/ui-component/assets/images/main.png" id="main_logo_img" width="200px">--%>
<%--            </a>--%>
<%--            <div class="form-group">--%>
<%--                <a href="javascript:void(0);" class="navbar-brand top_m" style="color: black;">--%>
<%--                    <i class="fa fa-user"></i> 테스트님 반갑습니다.--%>
<%--                    <input type="hidden" value="test" id="huscd">--%>
<%--                    <input type="hidden" value="테스트" id="husnm">--%>
<%--                    <br />--%>
<%--&lt;%&ndash;                    <button type="button" class="btn btn-minier btn-dark btn-primary">일괄닫기</button>&ndash;%&gt;--%>
<%--                    <button type="button" class="btn btn-minier btn-dark btn-primary">암호변경</button>--%>
<%--                    <button type="button" class="btn btn-minier btn-dark btn-primary">로그아웃</button>--%>
<%--                </a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
</body>
</html>
