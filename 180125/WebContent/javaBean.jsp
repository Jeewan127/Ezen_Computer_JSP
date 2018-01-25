<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="student" class="beans.Student" scope="page"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:setProperty property="name" name="student" value="임지완"/>
<jsp:setProperty property="age" name="student" value="27"/>
이름: <jsp:getProperty property="name" name="student"/> <br/>
나이: <jsp:getProperty property="age" name="student"/> <br/>
</body>
</html>