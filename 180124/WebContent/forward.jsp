<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!String value;%>

	<%
	value = "tbja";
	%>
	<jsp:forward page="forward_param.jsp">
	
	<jsp:param value="<%=value %>" name="id" />
	<jsp:param value="1234" name="pw" />
	</jsp:forward>
</body>
</html>