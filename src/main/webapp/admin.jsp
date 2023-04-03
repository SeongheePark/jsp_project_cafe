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
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
.order-container {
	display: flex;
	justify-content: center;
	align-items: center;
}
.order-table {
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 800px;
}
h1 {
	margin: 20px;
}
th, td {
	text-align: center;
	padding-right: 30px;
}
</style>
</head>
<body>
	<div class="order-container">
	<h1>관리자 전용 페이지</h1> 
	</div>
	<div class="order-table">
	<form action="/project/adminTest" method="post">
	<label>관리자 비밀번호 입력</label><input type="password" name="password" required="required">
	<label>menu</label><input type="text" name="menu" required="required">
	<label>price</label><input type="text" name="price" required="required">
	<input type="submit" value="메뉴추가" name="changeMenu">
	<input type="submit" value="메뉴수정" name="changeMenu">
	<input type="submit" value="메뉴삭제" name="changeMenu">
	</form>
	</div>
</body>
</html>
<jsp:include page="/layout/footer.jsp"></jsp:include>