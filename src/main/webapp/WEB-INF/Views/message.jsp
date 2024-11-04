<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- message.jsp -->
<script type="text/javascript">
    alert("${msg}");
    window.parent.location.href = "${url}"; // 부모 프레임의 URL을 변경
</script>
