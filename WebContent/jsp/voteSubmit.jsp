<%@page import="java.util.Date"%>
<%@page import="DB.connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String student_num = request.getParameter("student_num");
	String vote_name = request.getParameter("vote_name");
	String sql = "insert into TBL_TUPYO_202404 (id,select_hubo_no,ymd,delete_fg) values(?,?,?,?) ";
	
	
	String sql2 = "select hubo_no from TBL_HBO_202404 where name = '"+vote_name+"'";
	System.out.print(sql2);
	String ExceptionNum = vote_name.equals("") ? "1":"0";
	
	Connection conn  = connection.getConnection();
	
	
	
	ResultSet rs2 = connection.getRs(sql2);
	String voteNum = "" ;
	
	while(rs2.next()){
		voteNum = rs2.getString("hubo_no");
	}
	
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, student_num);
	pstmt.setString(2, voteNum);
	pstmt.setString(3, "20240416");
	pstmt.setString(4, ExceptionNum);
	
	pstmt.executeUpdate();
	
	response.sendRedirect("search2.jsp");
	
	
%>
</body>
</html>