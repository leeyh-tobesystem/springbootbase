<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="navbar" class="navbar navbar-default ace-save-state" >
    <div class="navbar-container ace-save-state" id="navbar-container" >

        <div class="col-lg-12">
            <button type="button" class="navbar-toggle menu-toggler navbar-brand" id="menu-toggler2" data-target="#sidebar2" style="float:left; height: 30px; width: 30px; margin-top:16px; background-color: #00000033">
                <i class="fa fa-list"></i>
            </button>
            <button type="button" class="navbar-toggle menu-toggler navbar-brand" id="menu-toggler" data-target="#sidebar" style="float:left; height: 30px; width: 30px; margin-top:16px; background-color: #00000033">
                <i class="fa fa-folder-open-o"></i>
            </button>

            <a href="javascript:void(0)" onclick="" class="navbar-brand">
                <img src="/ui-component/assets/images/rebg-main.png" id="main_logo_img" style="max-height: 50px;">
            </a>
            <div class="form-group">
                <a href="javascript:void(0);" class="navbar-brand top_m" style="color: black;">
                    <i class="fa fa-user"></i> ${sessionScope.userData.user_name}님 반갑습니다.
                    <input type="hidden" value="${sessionScope.userData.user_code}" id="huscd">
                    <input type="hidden" value="${sessionScope.userData.user_name}" id="husnm">
                    <br />
                    <button type="button" class="btn btn-minier btn-dark btn-primary" onclick="close_tab_btn_main();">일괄닫기</button>
                    <button type="button" class="btn btn-minier btn-dark btn-primary" onclick="password_chg_btn_main();">암호변경</button>
                    <button type="button" class="btn btn-minier btn-dark btn-primary" onclick="logout_btn_main();">로그아웃</button>
                </a>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    try{ace.settings.loadState('main-container')}catch(e){}
</script>
<div id="sidebar2" class="sidebar h-sidebar navbar-collapse collapse ace-save-state" data-sidebar="true"
     data-sidebar-scroll="true" data-sidebar-hover="true">
    <script type="text/javascript">
        try{ace.settings.loadState('sidebar')}catch(e){}
    </script>
    <ul class="nav nav-list of-hidden">
        <c:set var="doneLoop" value="false"/>
        <c:set var="doneLoop2" value="false"/>
        <c:forEach var="main_list" items="${main_list}" varStatus="status">
            <c:set var="doneLoop" value="false"/>
            <c:set var="doneLoop3" value="true"/>
            <li id="mid-nav" class="hover <c:out value="${main_list.menu_name}"/>">
                <a class="dropdown-toggle" href='javascript:void(0);' />
                    <c:if test="${main_list.menu_name eq '관리자'}">
                    <i class="menu-icon fa fa-user"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '기초정보'}">
                        <i class="menu-icon fa fa-info-circle"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '자재관리'}">
                        <i class="menu-icon fa fa-cube"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '재고관리'}">
                        <i class="menu-icon fa fa-cubes"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '마감관리'}">
                        <i class="menu-icon fa fa-credit-card"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '생산관리'}">
                        <i class="menu-icon fa fa-car"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '품질관리'}">
                        <i class="menu-icon fa fa-check-square-o"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '협력업체'}">
                        <i class="menu-icon fa fa-handshake-o"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '출하관리'}">
                        <i class="menu-icon fa fa-truck"></i>
                    </c:if>
                    <c:if test="${main_list.menu_name eq '게시판'}">
                        <i class="menu-icon fa fa-comment"></i>
                    </c:if>
                        <span class="menu-text2"><c:out value="${main_list.menu_name}"/></span>
                    </a>
                    <b class="arrow"></b>
                    <ul class="submenu">
                        <c:forEach var="under_list2" items="${allSub_list[status.index]}">
                            <c:if test="${under_list2.level == 2 }">
                                <li class="active hover">
                                    <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon fa fa-caret-right"></i>

                                            ${under_list2.menu_name}
                                        <b class="arrow fa fa-angle-right"></b>
                                    </a>
                                    <b class="arrow"></b>
                                    <ul class="submenu nav-hide" style="display: none;">
                                        <c:forEach var="under_list3" items="${allSub_list[status.index]}">
                                            <c:if test="${under_list3.level == 3 && under_list3.parent_menu_code == under_list2.menu_code }">
                                                    <li class="hover">
                                                        <c:choose>
                                                            <c:when test="${main_list.menu_name == '게시판'}">
                                                                <a class="submenu_submenu"
                                                                   onclick="pageMove_Board('${under_list3.menu_code}','${under_list3.menu_name}');">
                                                                    <i class="menu-icon fa fa-caret-right"></i>
                                                                        ${under_list3.menu_name}
                                                                </a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a class="submenu_submenu"
                                                                   onclick="pageMove('${under_list3.menu_code}','${under_list3.menu_name}','${sessionScope.session_board.keyword}');">
                                                                    <i class="menu-icon fa fa-caret-right"></i>
                                                                        ${under_list3.menu_name}
                                                                </a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                        <b class="arrow"></b>
                                                    </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
            </li>
        </c:forEach>
    </ul>
</div>


