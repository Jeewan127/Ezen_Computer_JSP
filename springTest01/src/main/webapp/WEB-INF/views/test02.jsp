<%@page
	import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Integer num = (Integer) request.getAttribute("count"); // 값 가져오기
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Spring test02
	<br /> Star print
	<br />
	<%=num%>
	<br />
	<%
		for (int i = 0; i < num; i++) {
			for (int k = 0; k <= i; k++) {
	%>
	*
	<%
		}
	%>
	<br />
	<%
		}
	%>
</body>
</html>