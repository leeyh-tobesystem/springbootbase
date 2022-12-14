<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="sidebar" class="sidebar responsive ace-save-state" data-sidebar="true" data-sidebar-scroll="true" data-sidebar-hover="true">

    <script type="text/javascript">
        try{ace.settings.loadState('main-container')}catch(e){}
        try{ace.settings.loadState('sidebar')}catch(e){}
    </script>
    <ul class="nav nav-list">
        <li class="li_top" style="display: none">
            <a>
                <i class="menu-icon fa fa-tachometer"></i>
                <c:if test="${left_list != null }">
                    <span class="menu-text1">${left_list[0][0].menu_name }</span>
                </c:if>
                <c:if test="${left_list == null }">
                    <span class="menu-text1"></span>
                </c:if>
            </a>
        </li>
        <li class="active open">
            <a href="javascript:void(0)" class="dropdown-toggle">
                <i class="menu-icon fa fa-star"></i>
                <span class="menu-text" style="position: relative;top:2px;"> 즐겨찾기 </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu" id="left_submenu">
                <c:forEach var="subLeft_list" items="${favorites_list}">
                    <c:choose>
                        <c:when test="${subLeft_list.board_yn eq 'Y'}">
                            <li class="${subLeft_list.menu_code } ${under_active == subLeft_list.menu_code ? 'active' : ''}" >
                                <a href='javascript:void(0);' onclick="pageMove_Board('${subLeft_list.menu_code}','${subLeft_list.menu_name}','${sessionScope.session_board.keyword}')">${subLeft_list.menu_name }</a>
                                <b class="arrow"></b>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="${subLeft_list.menu_code } ${under_active == subLeft_list.menu_code ? 'active' : ''}" >
                                <a href='javascript:void(0);' onclick="pageMove('${subLeft_list.menu_code}','${subLeft_list.menu_name}','${sessionScope.session_board.keyword}')">${subLeft_list.menu_name }</a>
                                <b class="arrow"></b>
                            </li>
                        </c:otherwise>

                    </c:choose>
                </c:forEach>
            </ul>
        </li>
    </ul>
</div>