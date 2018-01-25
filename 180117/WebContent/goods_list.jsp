<%@page import="beans.Category"%>
<%@page import="beans.Goods"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Integer categoryId = Integer.parseInt(request
			.getParameter("categoryId"));

	Dao dao = new Dao();
	ArrayList<Goods> items = dao.getGoodsList(categoryId);
	Category category = dao.getCategoryInfo(categoryId);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
div {
	border: 1px solid #cccccc;
}

#wrap {
	width: 800px;
	margin: 0 auto;
	height: 700px;
}

#category {
	width: 400px;
	float: left;
}

#basket {
	width: 300px;
	float: right;
}

table {
	border-collapse: collapse;
	width: 100%;
}

table, th, td {
	border: 1px solid black;
	text-align: center;
}

tr {
	height: 30px;
}
</style>
</head>
<body>
	<div id="wrap">
		카테고리 :
		<%=category.getCategory_name()%><br /> <br />

		<table>
			<tr>
				<th>번호</th>
				<th>상품명</th>
				<th>가격</th>
				<th>장바구니</th>
			</tr>
			<%
				for (int i = 0; i < items.size(); i++) {
			%>
			<tr>
				<td><%=items.get(i).getId()%></td>
				<td><%=items.get(i).getGoods_name()%></td>
				<td><%=items.get(i).getPrice()%></td>
				<td>장바구니담기</td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>