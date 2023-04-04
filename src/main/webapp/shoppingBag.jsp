<%@page import="com.sh.dto.MenuDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sh.dao.MenuDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/layout/header.jsp"></jsp:include>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Gowun Dodum', sans-serif;
}
.shopping-container {
	height: 800px;
	min-height: 100%;
	padding-bottom: 400px;
	height: 800px;
	display: flex;
	flex-direction: column; 
	align-items : center;
}
.shopping-title {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
	margin-bottom: 100px;
}
.ul-container {
	display: flex;
	flex-direction: column;
}
ul.menu-li {
	display: flex;
	list-style: none;
	margin-left: 90px;
}
li {
	margin: 10px 20px;
	font-size: 20px;
}
.number {
	width: 30px;
	height: 30px;
}

.button {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
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
.total {
	margin-top: 20px;
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
	<div class="shopping-title">
		<h2>Shopping Bag</h2>
		<span>주문내역확인</span>
	</div>
	<form action="/project/orderTest" method="post">
	<div class="shopping-container">
	<label>주문자 이름을 입력하세요!</label>
	<input type="text" name="name" required="required">
	    <c:set var="total" value = "0"/>
	    <c:set var="count" value="0"/>
		<c:forEach var="order" items="${list}">
			<ul class="menu-li">
				<li>${order.menu}</li>
				<li>${order.price}</li>
				<li>${order.count}</li>
				<li><input type="hidden" name="menu" value="${order.menu}"></li>
				<li><input type="hidden" name="count" value="${order.count}"></li>
			</ul>
			<c:set var="total" value = "${total + order.price * order.count}"/>
			</c:forEach>
			<div class="total">
			<label>총 <c:out value="${total}"/>원</label>
			</div>
			<input class="button" name="button" type="submit" value="주문하기">
	</div>
	</form>
</body>
<jsp:include page="/layout/footer.jsp"></jsp:include>