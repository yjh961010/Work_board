<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link href="<c:url value='/css/reset.min.css' />" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/style.css' />" rel="stylesheet" type="text/css">
    <title>사원조회</title>
   <script>
    function submitForm() {
        const selectedCheckboxes = document.querySelectorAll('input[name="checkbox"]:checked');
        
        if (selectedCheckboxes.length !== 1) {
            alert("1명만 선택해주세요.");
            return; // 폼 제출 중단
        }

        const userNos = [];
        selectedCheckboxes.forEach(checkbox => {
            userNos.push(checkbox.value);
        });

        // userNo 값을 숨겨진 필드에 설정
        document.getElementById('userNo').value = userNos.join(',');

        // 폼 제출
        document.getElementById('editForm').submit();
    }
</script>

</head>
<body>
<div class="box_right">
    <div class="tit f_bold">
        <img alt="icon" src="<c:url value='/image/icon.gif' />"> 사원조회
    </div>
    <div class="float_r main_search">
        <select name="select">
            <option selected>::::: 전체 :::::</option>
        </select> 
        <input name="textfield" type="text" class="input"> 
        <a href="#"><img alt="search" src="<c:url value='/image/search.gif' />"></a>
    </div>
    <div class="main_box clear_b">
        <div class="main_tab main_top">
           <img alt="all_icon" src="<c:url value='/image/all_icon.gif' />">
           <a href="<c:url value='/board/editboard.do' />">등록</a>
           <img alt="all_icon" src="<c:url value='/image/all_icon.gif' />"> <a href="#">인사기록카드</a> 
           <img alt="all_icon" src="<c:url value='/image/all_icon.gif' />"> <a href="#">경력정보</a> 
           <img alt="all_icon" src="<c:url value='/image/all_icon.gif' />"> <a href="#">근무정보</a>
        </div>

        <!-------------------------  리스트 ------------------------------>

        <form id="editForm" action="<c:url value='/board/editmem.do' />" method="post">
            <input type="hidden" id="userNo" name="userNo" value="">

            <table>
                <tr>
                    <th width="35px"></th>
                    <th width="85px">이름</th>
                    <th width="153px">주민번호</th>
                    <th width="91px">성별</th>
                    <th width="91px">기술등급</th>
                    <th width="91px">입사유형</th>
                    <th width="94px">근무여부</th>
                </tr>
                <tr><td colspan="7" class="main_bar"></td></tr>
                <c:forEach var="member" items="${members}">
                    <tr>
                        <td><input type="checkbox" name="checkbox" value="${member.userNo}"></td>
                        <td>${member.korName}</td>
                        <td>${member.juminNo}</td>
                        <td>${member.sex}</td>
                        <td>${member.techGrd}</td>
                        <td>${member.joinSt}</td>
                        <td>${member.workYear}</td>
                    </tr>
                </c:forEach>
                <tr><td colspan="7" class="main_bar"></td></tr>
            </table>
        
            <div class="main_paging">
                <a href="#"><img alt="prev_more" src="<c:url value='/image/prev.gif' />"></a>
                <a href="#"><img alt="prev" src="<c:url value='/image/pre.gif' />"></a>
                &nbsp; 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 &nbsp;
                <a href="#"><img alt="next" src="<c:url value='/image/next.gif' />"></a>
                <a href="#"><img alt="next_more" src="<c:url value='/image/next_.gif' />"></a>
            </div>
        
            <!-------------------------  리스트 ------------------------------>

            <div class="main_tab main_bottom">
                <img alt="all_icon" src="<c:url value='/image/all_icon.gif' />"> 
                <a href="#" onclick="submitForm(); return false;">수정</a> 
                <img alt="all_icon" src="<c:url value='/image/all_icon.gif' />"> <a href="#">인사기록카드</a> 
                <img alt="all_icon" src="<c:url value='/image/all_icon.gif' />"> <a href="#">경력정보</a> 
                <img alt="all_icon" src="<c:url value='/image/all_icon.gif' />"> <a href="#">근무정보</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>
