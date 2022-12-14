<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<tiles:insertAttribute name="header"/>
<html lang="kr">
<body class="no-skin">
<tiles:insertAttribute name="topnavbar"/>
<tiles:insertAttribute name="navbar"/>
<div class="main-container ace-save-state" id="main-container">
    <tiles:insertAttribute name="lnb"/>
    <div class="main-content">
        <tiles:insertAttribute name="st"/>
        <tiles:insertAttribute name="body"/>
    </div>
</div>
<tiles:insertAttribute name="footer"/>
</body>
</html>