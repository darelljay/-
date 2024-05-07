package DB;
import java.sql.*;
public class connection {
public static Connection getConnection() throws Exception{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");

	return conn;
}

public static ResultSet getRs(String sql) throws Exception{
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Connection conn = connection.getConnection();
	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	return rs;
}
}
