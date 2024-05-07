<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<style>
*{
margin: 0;
padding: 0;
text-decoration: none;
}
header{
width: 100%;
height: 50px;
position: fixed;
top: 0;
left: 0;
line-height: 50px;
text-align: center;
font-size: 20px;
background: blue;
color: #fff;
}
nav{
width: 100%;
height: 40px;
line-height: 40px;
position: fixed;
top: 50px;
left: 0;
background: navy;
}
a{
color: #fff;
}
</style>
<body>
<header>
<b>(2024_수행평가)학생회장투표 프로그램ver1.0</b>
</header>
<nav>
&npsp;
<a href="search.jsp">후보자정보조회</a>&npsp;
<a href="vote.jsp">투표하기</a>&npsp;
<a href="search2.jsp">투표현황조회</a>&npsp;
<a href="index.jsp">홈으로</a>
</nav>
</body>
</html>