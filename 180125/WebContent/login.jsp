<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id;
		id = (String)session.getAttribute("id");
		if (id!=null && !id.isEmpty()) {
			response.sendRedirect("main.jsp");
		}
	%>
	<form action="loginOk.jsp" method="post">
		���̵�: <input type="text" name="id" size="15" /> <br /> 
		��й�ȣ: <input type="password" name="pw" /> <br /> 
		<input type="submit" name="�α���" />
	</form>
</body>
</html>