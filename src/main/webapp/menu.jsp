<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/layout/header.jsp"></jsp:include>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap');
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}
#wrapper {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 800px;
	min-height: 100%;
	padding-bottom: 100px;
}
table {
	background-color: #E4BB60;
	margin: 40px;
}
table tr, td{
	padding: 10px;
	margin-right: 5px;
}
input[type=submit] {
	border: none;
	cursor: pointer;
	background-color: white;
	align-items: center;
}
</style>
</head>
<body>
<div id='wrapper'>
	<h1> MENU</h1>
	<form action="/project/menuTest" method="post">
	<table>
		<c:set var="count" value="0" />
		<c:forEach var="menuList" items="${list}">
		<tr>
			<td>${menuList.menu}</td>
			<td>${menuList.price}</td>
			<td><input type="number" name="count" min="1"></td>
			<td><input type="checkbox" name="${menuList.menu}"></td>
		</tr>
		</c:forEach>
	</table>
	<input type="submit" value="장바구니 담기" >
	</form>
</div>
</body>
</html>
<jsp:include page="/layout/footer.jsp"></jsp:include>