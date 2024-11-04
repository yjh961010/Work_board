<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link href="<c:url value='/css/reset.min.css' />" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/style.css' />" rel="stylesheet" type="text/css">
    <title>Untitled Document</title>
</head>
<body>
<div class="box_left">
    <div class="left_top"></div>
    <div class="left_cont">
        <ul class="left_menu">
            <li>
                <img alt="icon" src="<c:url value='/image/left_icon.gif' />"> 기본정보
                <ul>
                    <li>- 등록</li>
                </ul>
            </li>
            <li><img alt="icon" src="<c:url value='/image/left_icon.gif' />"> 직원명부</li>
            <li><img alt="icon" src="<c:url value='/image/left_icon.gif' />"> 퇴직자현황</li>
            <li><img alt="icon" src="<c:url value='/image/left_icon.gif' />"> 예비인력정보</li>
            <li>
                <img alt="icon" src="<c:url value='/image/left_icon.gif' />"> 거래처정보
                <ul>
                    <li>- 등록</li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="left_bottom"></div>
    <div class="left_search">
        <label class="left_label">
            <img alt="icon" src="<c:url value='/image/left_icon.gif' />"> 경력검색
        </label>
        <input name="textfield" type="text" class="left_flat" size="9" maxlength="14"> 
        <a href="#"><img alt="search" src="<c:url value='/image/search.gif' />"></a>
    </div>
</div>
</body>
</html>
