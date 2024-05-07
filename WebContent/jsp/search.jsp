<%@page import="DB.connection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>후보자정보조회</h2>
		<br>
		<table border="1">
			<tr>
				<th>후보번호</th>
				<th>학과</th>
				<th>이름</th>
			</tr>
			<%
			String sql = "select * from TBL_HBO_202404";
			ResultSet rs = connection.getRs(sql);
			while (rs.next()) {
				String cs = "";
				String og_cs = rs.getString("class");
				if(og_cs.equals("1")){
					cs = "경역학과(2학년)";
				}else if(og_cs.equals("2")){
					cs = "법학과(2학년)";
					
				}else if(og_cs.equals("3")){
					cs = "언록학과(2학년)";
					
				}else if(og_cs.equals("4")){
					cs = "컴퓨터공학과(2학년)";
					
				}else if(og_cs.equals("5")){
					cs = "행정학과(2학년)";
					
				}
			%>
			<tr>
				<td><%=rs.getString("hubo_no")%></td>
				<td><%=cs%></td>
				<td><%=rs.getString("name") %></td>

			</tr>
			<%
			}
			%>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>