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
section {
	width: 100%;
	height: 100%;
	position: fixed;
	top: 90px;
	left: 0;
	padding: 10px;
	display: flex;
	flex-direction: column;
	jsutify-content: center;
	align-items: center;
}
h2 {
	text-align: center;
}
td{
text-align: center;
}
</style>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>투표하기</h2>
<form action="voteSubmit.jsp" method="post">

<table border="1">
	<tr>
	<td><b>학번</b></td>
	<td><input class="id" type="text" name="student_num"/></td>
	</tr>
	<tr>
	<td><b>후보자선택</b></td>
	<td>
	<select name="vote_name">
		<option>후보자 선택</option>
		<option value="이명반">[1]이면반</option>
		<option value="함덕훈">[2]함덕훈</option>
		<option value="이정석">[3]이정식</option>
		<option value="이낙엽">[4]이낙엽</option>
		<option value="조군">[5]조군</option>
	</select>
	</td>
	</tr>
	<tr>
	<td colspan="2"><input class="submit" type="submit"/></td>
	</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script src="validation.js"></script>
</body>
</html>