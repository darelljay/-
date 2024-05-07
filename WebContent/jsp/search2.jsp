<%@page import="DB.connection"%>
<%@page import="java.sql.ResultSet"%>
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
<h2>투표현황조회</h2>
<br>
		<table border="1">
			<tr>
				<th>후보번호</th>
				<th>후보자명</th>
				<th>득표수</th>
			</tr>
			<%
			String sql = "select * from TBL_HBO_202404";
			ResultSet rs = connection.getRs(sql);
			
			int votes1 =0;
			int votes2 =0;
			int votes3 = 0;
			int votes4 =0;
			int votes5 = 0;
			
			String sql2 = "select select_hubo_no from TBL_TUPYO_202404";
			ResultSet rs2 = connection.getRs(sql2);
		
			while(rs2.next()){
				if(rs2.getString("select_hubo_no") == null){
					continue;
				}
				if(rs2.getString("select_hubo_no").equals("1")){
					votes1+=1;
				}else if(rs2.getString("select_hubo_no").equals("2")){
					votes2+=1;
				}else if(rs2.getString("select_hubo_no").equals("3")){
					votes3+=1;
				}else if(rs2.getString("select_hubo_no").equals("4")){
					votes4+=1;
				}else if(rs2.getString("select_hubo_no").equals("5")){
					votes5+=1;
				}
			}
			
			while (rs.next()) {
				String name = "";
				String current_hbo = rs.getString("hubo_no");
				int current_Num = 0;
				if(current_hbo.equals("1")){
					current_Num = votes1;
				}else if(current_hbo.equals("2")){
					current_Num = votes2;
				}else if(current_hbo.equals("3")){
					current_Num = votes3;
				}else if(current_hbo.equals("4")){
					current_Num = votes4;
				}else if(current_hbo.equals("5")){
					current_Num = votes5;
				}
				
			%>
			<tr>
				<td><%=rs.getString("hubo_no")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=current_Num %></td>

			</tr>
			<%
			}
			%>
		</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>