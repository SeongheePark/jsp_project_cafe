<%@page import="com.sh.dto.OrderDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	ArrayList<OrderDTO> orderList = (ArrayList<OrderDTO>)request.getAttribute("list");
	String name = (String)request.getAttribute("관리자");
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
	justify-content: center;
	align-items: center;
}
.order-table {
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 800px;
	margin-left: 100px;
}
h1 {
	margin: 20px;
}
button {
	border: none;
}
th, td {
	text-align: center;
	padding-right: 30px;
	margin-left: 50px;
}
</style>
</head>
<body>
	<div class="order-container">
	<h1>주문 내역 확인</h1> 
	<button type="button" onClick="location.href='orderTest?action=edit&getName=<%=orderList.get(0).getName()%>&name=<%=name%>'">편집</button>
	</div>
	<div class="order-table">
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Menu</th>
			<th>Count</th>
			<th>Date</th>
		</tr>
		<c:forEach var="orderList" items="${list}">
		<tr>
			<td>${orderList.id}</td>
			<td>${orderList.name}</td>
			<td>${orderList.menu}</td>
			<td>${orderList.count}</td>
			<td>${orderList.date}</td>
			<td><input type="hidden" name="name" value="${orderList.name}"></td>
		</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>
<jsp:include page="/layout/footer.jsp"></jsp:include>