<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link href="<c:url value='/css/reset.min.css' />" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/style.css' />" rel="stylesheet" type="text/css">
    <title>사원 기본 정보 수정</title>
</head>
<body>
<div class="box_right">
    <div class="tit f_bold">
        <img alt="icon" src="<c:url value='/image/icon.gif' />"> 사원 기본 정보 수정
    </div>
    <div class="page_menu f_bold">
        <ul class="li_left">
            <li><a href="#">교육정보</a></li>
            <li>|</li>
            <li><a href="#">자격증. 보유기술정보</a></li>
            <li>|</li>
            <li><a href="#">프로젝트 정보</a></li>
            <li>|</li>
            <li><a href="#">경력정보</a></li>
            <li>|</li>
            <li><a href="#">근무정보</a></li>
        </ul>
    </div>
    <form action="/board/updateMem.do" method="POST">
        <input type="hidden" name="userNo" value="${member.userNo}"> <!-- userNo를 숨겨서 전송 -->
        <div class="page_box">
            <div class="page_in float_h">
                <div class="picture_pr float_l"><img alt="증명사진" src="/image/${member.sajinNm}" width="100" height="120"></div>
                <div class="page_mar2 float_l">
                    <div class="page_mar1">
                        <label class="page4_1">한글이름 : </label>
                        <input type="text" name="korName" value="${member.korName}">
                    </div>
                    <div class="page_mar1">
                        <label class="page4_1">영문이름 : </label>
                        <input type="text" name="engName" value="${member.engName}">
                    </div>
                    <div class="page_mar1">
                        <label class="page4_1">한문이름: </label>
                        <input type="text" name="hanName" value="${member.hanName}">
                    </div>
                    <div class="page_mar1">
                        <label class="page4_1">주민등록번호 : </label>
                        <input name="juminNo1" type="text" size="6" maxlength="6" value="${member.juminNo.split(' ')[0]}"> - 
                        <input name="juminNo2" type="text" size="7" maxlength="7" value="${member.juminNo.split(' ')[1]}">
                    </div>
                </div>
            </div>
            <div class="page_in clear_b">
                <div class="page_line page_mar1">
                    <label class="page4_1">사진파일명 : </label>
                    <input name="sajinNm" type="text" size="40" value="${member.sajinNm}"> 
                    <font color="#FF0000"><img src="<c:url value='/image/bt_search.gif' />" width="49" height="18"></font>
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">생년월일 : </label>
                    <input name="birth1" type="text" size="8" value="${member.birthYmd.substring(0, 4)}"> 년 
                    <input name="birth2" type="text" size="5" value="${member.birthYmd.substring(4, 6)}"> 월 
                    <input name="birth3" type="text" size="5" value="${member.birthYmd.substring(6, 8)}"> 일 ( 
                    <input type="radio" name="birthRn" value="1" <c:if test="${member.birthRn == 1}">checked</c:if>> 양력 
                    <input type="radio" name="birthRn" value="2" <c:if test="${member.birthRn == 2}">checked</c:if>> 음력 )
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">성별 : </label>
                    <input type="radio" name="sex" value="1" <c:if test="${member.sex == 1}">checked</c:if>> 남자 
                    <input type="radio" name="sex" value="2" <c:if test="${member.sex == 2}">checked</c:if>> 여자
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">결혼유무 : </label>
                    <input type="radio" name="marryYn" value="0" <c:if test="${member.marryYn == 0}">checked</c:if>> 미혼 
                    <input type="radio" name="marryYn" value="1" <c:if test="${member.marryYn == 1}">checked</c:if>> 기혼
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">년차 : </label>
                    <input name="workYear" type="text" size="10" value="${member.workYear}">
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">급여 지급유형 : </label>
                    <select >
                        <option>월급</option>
                    </select>
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">희망직무 : </label>
                    <select name="hopeWork">
                        <option value="0" <c:if test="${member.hopeWork == 0}">selected</c:if>>SI</option>
                        <option value="1" <c:if test="${member.hopeWork == 1}">selected</c:if>>SM</option>
                    </select>
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">입사유형 : </label>
                    <select name="joinSt">
                        <option value="0" <c:if test="${member.joinSt == 0}">selected</c:if>>정규직</option>
                        <option value="1" <c:if test="${member.joinSt == 1}">selected</c:if>>계약직</option>
                    </select>
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">주소 : </label>
                    <input name="addr1" type="text" size="10" value="${member.addr.split(' ')[0]}"> 
                    <input name="addr2" type="text" size="40" value="${member.addr.split(' ')[1]}">
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">연락처 : </label>
                    <input name="phone1" type="text" size="10" value="${member.tel.split('-')[0]}"> - 
                    <input name="phone2" type="text" size="10" value="${member.tel.split('-')[1]}"> - 
                    <input name="phone3" type="text" size="10" value="${member.tel.split('-')[2]}">
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">이메일 : </label>
                    <input name="email" type="text" size="20" value="${member.email}">
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">기술등급 : </label>
                    <input name="techGrd" type="text" size="20" value="${member.techGrd}">
                </div>
                <div class="page_mar1">
                    <label class="page4_1">주량 : </label>
                    <input name="alcQt" type="text" size="20" value="${member.alcQt}">
                </div>
            </div>
            <div class="btn_all">
                <button type="submit"><img alt="remove" src="<c:url value='/image/bt_remove.gif' />"></button>
                <button type="reset"><img alt="cancel" src="<c:url value='/image/bt_cancel.gif' />"></button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
