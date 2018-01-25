<%@page import="java.util.Enumeration"%>
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
		String sessionName = (String) session
				.getAttribute("sessionTestName");
		Integer sessionNumber = (Integer) session
				.getAttribute("testNumber");
	%>
	sessionName:
	<%=sessionName%>
	<br /> sessionNumber:
	<%=sessionNumber%>
	<br />
	<br />

	<%
		String sName;
		String sValue;
		Enumeration enumeration = session.getAttributeNames();
		while (enumeration.hasMoreElements()) {
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName: " + sName + "<br/>");
			out.println("sValue: " + sValue + "<br/>");
		}
	%>
	<%
		String sessionId = session.getId();
		out.println("sessionId: " + sessionId + "<br/>");
		int seesionInter = session.getMaxInactiveInterval();
		out.println("seesionInter: " + seesionInter);
	%>
	<br />
	<br />
	<%
		session.removeAttribute("sessionTestName");
		Enumeration enumeration2 = session.getAttributeNames();
		while (enumeration.hasMoreElements()) {
			sName = enumeration2.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName: " + sName + "<br/>");
			out.println("sValue: " + sValue + "<br/>");
		}
	%>
	<br />
	<br />
	<%
		session.invalidate();
		if (request.isRequestedSessionIdValid()) {
			out.println("seesion valid");
		} else {
			out.println("seesion invalid");
		}
	%>
</body>
</html>