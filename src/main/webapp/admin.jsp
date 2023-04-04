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
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Gowun Dodum', sans-serif;
}
.admin-title {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
	margin-bottom: 100px;
}

.admin-container {
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 800px;
}
.admin-numCheck {
	margin-left: 80px;
}
.admin-menu {
	padding: 20px;
}
.admin-button {
	margin-left: 100px;
}
input[type=text], [type=password]{
	width : 150px;
	height: 30px;
	background-color: #E7E7E7;
	border: 0;
	border-radius: 20px;
	font-size: 20px;
	text-align: center;
	margin-bottom: 30px;
}
input[type="submit"] {
	margin: 10px;
	border: none;
	background-color: white;
}
input[type="submit"] :hover {
	cursor: pointer;
	
}
</style>
</head>
<body>
	<div class="admin-title">
		<h2>Admin Page</h2>
		<span>관리자 페이지</span>
	</div>
	<div class="admin-container">
		<form action="/project/adminTest" method="post">
	<div class="admin-numCheck">
		<label>관리자 비밀번호 입력 </label><input type="password" name="password" required="required">
	</div>
	<div class="admin-menu">
		<label>menu </label><input type="text" name="menu" required="required">
		<label>price </label><input type="text" name="price" required="required">
	</div>
	<div class="admin-button">
		<input type="submit" value="메뉴추가" name="changeMenu">
		<input type="submit" value="메뉴수정" name="changeMenu">
		<input type="submit" value="메뉴삭제" name="changeMenu">
	</div>
	</form>
	</div>
</body>
</html>
<jsp:include page="/layout/footer.jsp"></jsp:include>