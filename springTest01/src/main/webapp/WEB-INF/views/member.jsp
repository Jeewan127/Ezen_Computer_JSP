<%@page import="bean.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Member member = (Member)request.getAttribute("member");
String num = (String)request.getAttribute("num");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
name : <%=member.getName() %><br/>
id : <%=member.getId() %><br/>
pw : <%=member.getPw() %><br/>
num : <%=num %>
</body>
</html>