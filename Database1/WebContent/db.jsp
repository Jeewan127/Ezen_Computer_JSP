<%@page import="database.Books"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	
	ArrayList<Books> items = new ArrayList<>();
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (Exception e) {
		e.printStackTrace();
	}

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "rkswltodn";
	String upw = "1234";

	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	
	// String name, String id, String pus, String stock

	try {
		con = DriverManager.getConnection(url, uid, upw);
		stmt = con.createStatement();
		rs = stmt.executeQuery("select * from books"); // 데이터 받아오기

		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String pus = rs.getString("publisher");
			Integer stock = rs.getInt("stock");
			
			Books book = new Books(name, id, pus, stock);
			items.add(book);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (con != null) {
			con.close();
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<%
	for(int i=0; i<items.size(); i++) {
%>
<tr>
	
</tr>
<tr>
	<td><%=items.get(i).getId() %></td>
	<td><%=items.get(i).getName() %></td>
	<td><%=items.get(i).getPus() %></td>
	<td><%=items.get(i).getStock() %></td>
</tr>
<%
	}
%>

</table>
</body>
</html>