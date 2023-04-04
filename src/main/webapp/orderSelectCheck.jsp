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
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Gowun Dodum', sans-serif;
}
.order-container {
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 800px;
}
.orderCheck-title {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
	margin-bottom: 100px;
}
.order-table {
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 800px;
}
input[type=text] {
	width : 200px;
	height: 40px;
	background-color: #E7E7E7;
	border: 0;
	border-radius: 20px;
	font-size: 20px;
	text-align: center;
	margin-bottom: 30px;
}
input[type=submit] {
	border: none;
	cursor: pointer;
	font-size: 20px;
	background-color: white;
	align-items: center;
}
</style>
</head>
<body>
	<form action="/project/afterOrderTest" method="get">
	<div class="order-container">
	<div class="orderCheck-title">
	<h2>Order</h2>
	<h3>주문 내역 확인</h3>
	</div>
	<p> 이름을 입력하세요 </p> 
	<input type="text" name="name" required="required"> 
	<input type="submit" value="확인">
	</div>
	</form>
</body>
</html>
<jsp:include page="/layout/footer.jsp"></jsp:include>