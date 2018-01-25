<%@page import="beans.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Dao dao = new Dao();
ArrayList<Category> categories = dao.getCategoryList();
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
}

tr {
	height: 30px;
}
</style>
<script>
function del(category_id) {
	if (confirm("정말 삭제하시겠습니까?")) {
		document.location.href="DelCategory?category_id=" + category_id;
	}
}

</script>
</head>
<body>
	<div id="wrap">
		<div id="category">
			<ul>
				<%
					for (int i = 0; i < categories.size(); i++) {
				%>
				<li><a
					href="goods_list.jsp?categoryId=<%=categories.get(i).getId()%>">
						<%=categories.get(i).getCategory_name()%></a> <a href="#"
					onclick="del(<%=categories.get(i).getId()%>);">삭제</a></li>
				<%
					}
				%>
			</ul>
		</div>
		<div id="basket">
			<a href="">장바구니 가기</a><br /> <a href="addcate.jsp">카테고리 추가</a>
		</div>
	</div>
</body>
</html>