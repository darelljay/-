<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
section{
width: 100%;
height: 100%;
position: fixed;
top: 90px;
left: 0;
padding: 10px;
}
h2 {
	text-align: center;
}
</style>
<jsp:include page="header.jsp"></jsp:include>
<section>
<br>
<h2>학생회장투표 프로그램</h2>
<br>
<p>본 과제는 학생회장 투표를 위한 프로그램입니다</p>
<p>메뉴는 후보자정보조회, 투표하기, 투표현황조회, 홈으로가 존재합니다.</p>
<p>토표하기 메뉴에서 저장한 내역은 투표현황 메뉴에서 확인 할 수 있습니다.</p>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>