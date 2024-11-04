<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Untitled Document</title>
</head>
<frameset cols="180,*" frameborder="NO" border="0" framespacing="0">
    <frame src="<c:url value='/left' />" name="leftFrame" scrolling="NO" noresize>
    <frame src="<c:url value='/main.do' />" name="mainFrame">
</frameset>
<noframes>
    <body>
        
    </body> 
</noframes>
</html>
