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
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
.shopping-container {
	height: 800px;
	display: flex;
	flex-direction: column; 
	align-items : center;
	margin: 50px 0;
	align-items: center;
}
.null-container {
	height: 800px;
	display: flex;
	flex-direction: column; 
	align-items : center;
	margin: 50px 0;
	align-items: center;
}
.shopping-title {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
.ul-container {
	display: flex;
	flex-direction: column;
}
.menu-li {
	display: flex;
}
ul li {
	list-style: none;
	margin-right: 20px;
	margin-bottom: 10px;
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
</style>
</head>
<body>
	<div class="shopping-title">
		<h2>Shopping Bag</h2>
		<span>주문내역확인</span>
	</div>
	<form action="/project/orderTest" method="post">
	<div class="shopping-container">
	<label>주문자 이름을 입력하세요!</label><input type="text" name="name" required="required">
		<c:set var = "total" value = "0" />
		<c:forEach var="order" items="${list}">
			<ul class="menu-li">
				<li><c:out value="${order.menu}" /></li>
				<li><c:out value="${order.price}" /></li>
				<li><input type="number" name="count" min="1" value="1"></li>
			</ul>
			<c:set var = "total" value = "${total + order.price}"/>
			<input type="hidden" name="order" value="${order.menu}">
		</c:forEach>	
			<label>총<c:out value="${total}"/>원</label>  
			<input class="button" name="action" type="submit" value="변경하기">
			<input class="button" name="action" type="submit" value="주문하기">
	</div>
	</form>
</body>
<jsp:include page="/layout/footer.jsp"></jsp:include>