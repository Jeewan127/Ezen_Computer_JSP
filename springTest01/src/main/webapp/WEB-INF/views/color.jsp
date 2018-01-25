<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Integer num1 = (Integer) request.getAttribute("num1");
	Integer num2 = (Integer) request.getAttribute("num2");
%>
<style>
#td1 {
	width: 100px;
	height: 50px; 
	background-color: #ff0000;
	border : 2px solid black;
}
#td2 {
	width: 100px;
	height: 50px; 
	background-color: #ffffff;
	border : 2px solid black;
}
</style>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<%
				for (int i = 0; i < num2; i++) {
			%>
			<td id="td1"></td>
			<%
				}
			%>
			<%
				for (int i = 0; i < num1-num2; i++) {
			%>
			<td id="td2"></td>
			<%
				}
			%>
		</tr>
	</table>
</body>
</html>