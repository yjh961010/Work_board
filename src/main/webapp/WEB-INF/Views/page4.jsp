<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link href="<c:url value='/css/reset.min.css' />" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/style.css' />" rel="stylesheet" type="text/css">
    <title>사원 기본 정보 수정</title>
    <script>
    function validateForm() {
    const fields = [
        {id: 'korName', label: '한글이름'},
        {id: 'engName', label: '영문이름'},
        {id: 'hanName', label: '한문이름'},
        {id: 'juminNo1', label: '주민등록번호'},
        {id: 'juminNo2', label: '주민등록번호'},
        {id: 'birth1', label: '생년월일(년)'},
        {id: 'birth2', label: '생년월일(월)'},
        {id: 'birth3', label: '생년월일(일)'},
        {id: 'workYear', label: '년차'},
        {id: 'addr1', label: '주소'},
        {id: 'addr2', label: '주소'},
        {id: 'phone1', label: '연락처'},
        {id: 'phone2', label: '연락처'},
        {id: 'phone3', label: '연락처'},
        {id: 'email', label: '이메일'},
        {id: 'techGrd', label: '기술등급'},
        {id: 'alcQt', label: '주량'},
    ];

    // 필드 검사
    for (let field of fields) {
        const input = document.getElementById(field.id);
        if (!input.value) {
            alert(field.label + '을(를) 입력해 주세요.');
            input.focus();
            return false; // 폼 제출 중단
        }
    }

    // select 태그 검사
    const selects = [
        {id: 'hopeWork', label: '희망직무'},
        {id: 'joinSt', label: '입사유형'},
        {id: '급여 지급유형', label: '급여 지급유형'}
    ];

    for (let select of selects) {
        const selectInput = document.getElementById(select.id);
        if (selectInput.selectedIndex === 0) {
            alert(select.label + '을(를) 선택해 주세요.');
            selectInput.focus();
            return false; // 폼 제출 중단
        }
    }

    // 라디오 버튼 검사
    const radioChecks = [
        {name: 'birthRn', label: '생년월일(양력/음력)'},
        {name: 'sex', label: '성별'},
        {name: 'marryYn', label: '결혼유무'}
    ];

    for (let radio of radioChecks) {
        const radioChecked = document.querySelector(`input[name="${radio.name}"]:checked`);
        if (!radioChecked) {
            alert(radio.label + '을(를) 선택해 주세요.');
            return false; // 폼 제출 중단
        }
    }

    return true; // 모든 검증 통과
}
    //
    function updateFileName() {
        const fileInput = document.getElementById('fileInput');
        const fileName = fileInput.files[0] ? fileInput.files[0].name : '';
        document.getElementById('sajinNm').value = fileName;
    }
    </script>


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
    <form id="memberForm" action="/board/addmember.do" method="POST" enctype="multipart/form-data" onsubmit="return validateForm();">

        <div class="page_box">
            <div class="page_in float_h">
                <div class="picture_pr float_l"><img alt="증명사진" src=""></div>
                <div class="page_mar2 float_l">
                    <div class="page_mar1">
                        <label class="page4_1">한글이름 : </label>
                        <input type="text" id="korName" name="korName">
                    </div>
                    <div class="page_mar1">
                        <label class="page4_1">영문이름 : </label>
                        <input type="text" id="engName" name="engName">
                    </div>
                    <div class="page_mar1">
                        <label class="page4_1">한문이름: </label>
                        <input type="text" id="hanName" name="hanName">
                    </div>
                    <div class="page_mar1">
                        <label class="page4_1">주민등록번호 : </label>
                        <input id="juminNo1" name="juminNo1" type="text" size="6" maxlength="6"> - 
                        <input id="juminNo2" name="juminNo2" type="text" size="7" maxlength="7">
                    </div>
                </div>
            </div>
            <div class="page_in clear_b">
                <div class="page_line page_mar1">
                    <label class="page4_1">사진파일명 : </label>
                    <input id="sajinNm" name="sajinNm" type="text" size="40"> 
                     <input id="fileInput" name="fileInput" type="file" style="display:none;" accept="image/*" onchange="updateFileName()">
                    <font color="#FF0000"><img src="<c:url value='/image/bt_search.gif' />" width="49" height="18" onclick="document.getElementById('fileInput').click();">
        </font>
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">생년월일 : </label>
                    <input id="birth1" name="birth1" type="text" size="8"> 년 
                    <input id="birth2" name="birth2" type="text" size="5"> 월 
                    <input id="birth3" name="birth3" type="text" size="5"> 일 ( 
                    <input type="radio" id="birthRn1" name="birthRn" value="1"> 양력 
                    <input type="radio" id="birthRn2" name="birthRn" value="2"> 음력 )
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">성별 : </label>
                    <input type="radio" id="sex1" name="sex" value="1"> 남자 
                    <input type="radio" id="sex2" name="sex" value="2"> 여자
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">결혼유무 : </label>
                    <input type="radio" id="marryYn0" name="marryYn" value="0"> 미혼 
                    <input type="radio" id="marryYn1" name="marryYn" value="1"> 기혼
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">년차 : </label>
                    <input id="workYear" name="workYear" type="text" size="10">
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">급여 지급유형 : </label>
                    <select>
                        <option>월급</option>
                    </select>
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">희망직무 : </label>
                    <select id="hopeWork" name="hopeWork">
				    <option value="">선택하세요</option> <!-- 기본값 -->
				    <option value="0">SI</option>
				    <option value="1">SM</option>
				</select>

                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">입사유형 : </label>
                    <select id="joinSt" name="joinSt">
                    <option value="">선택하세요</option>
                        <option value="0">정규직</option>
                        <option value="1">계약직</option>
                    </select>
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">주소 : </label>
                    <input id="addr1" name="addr1" type="text" size="10"> 
                    <input id="addr2" name="addr2" type="text" size="40">
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">연락처 : </label>
                    <input id="phone1" name="phone1" type="text" size="10"> - 
                    <input id="phone2" name="phone2" type="text" size="10"> - 
                    <input id="phone3" name="phone3" type="text" size="10">
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">이메일 : </label>
                    <input id="email" name="email" type="text" size="20">
                </div>
                <div class="page_line page_mar1">
                    <label class="page4_1">기술등급 : </label>
                    <input id="techGrd" name="techGrd" type="text" size="20">
                </div>
                <div class="page_mar1">
                    <label class="page4_1">주량 : </label>
                    <input id="alcQt" name="alcQt" type="text" size="20">
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
