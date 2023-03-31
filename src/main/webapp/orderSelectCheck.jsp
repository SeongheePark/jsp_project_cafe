<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	
%>
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
	flex-direction: column;
	align-items: center;
	height: 800px;
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
input {
	margin: 20px;
}

</style>
</head>
<body>
	<form action="/project/afterOrderTest" method="get">
	<div class="order-container">
	<h1>주문 내역 확인</h1> 
	<p> 내가 주문한 내역 확인해보기 </p>
	<p> 이름을 입력하세요 </p> 
	<input type="text" name="name"> 
	<input type="submit" value="확인">
	</div>
	</form>
</body>
</html>
<jsp:include page="/layout/footer.jsp"></jsp:include>