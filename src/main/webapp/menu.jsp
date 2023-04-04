<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/layout/header.jsp"></jsp:include>
<link href="icheck-bootstrap.css" rel="stylesheet">
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Gowun Dodum', sans-serif;
}
#menu-container {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 800px;
	min-height: 100%;
	padding-bottom: 100px;
}
.menu-title {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
}
table {
	background-color: #E4BB60;
	margin: 40px;
}
table tr, td{
	padding: 10px;
	margin-right: 5px;
	text-align: center;
}
input[type=number] {
	border: none;
	width: 40px;
	text-align: center;
}
input[type=submit] {
	border: none;
	cursor: pointer;
	font-size: 20px;
	background-color: white;
	align-items: center;
	margin-left: 130px;
}

input[type='checkbox']{
    cursor: pointer;
}

</style>
</head>
<body>
<div id='menu-container'>
	<div class='menu-title'>
	<h2>Menu</h2>
	<span>메뉴</span>
	</div>
	<form action="/project/menuTest" method="post">
	<table>
		<c:set var="count" value="0" />
		<c:forEach var="menuList" items="${list}">
		<tr>
			<td>${menuList.menu}</td>
			<td>${menuList.price}</td>
			<td><input type="number" name="count" min="1"></td>
			<td><input type="checkbox" name="${menuList.menu}" ></td>
		</tr>
		</c:forEach>
	</table>
	<input type="submit" value="장바구니 담기" >
	</form>
</div>
</body>
</html>
<jsp:include page="/layout/footer.jsp"></jsp:include>