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
a {
	text-decoration: none;
	color: red;
	font-weight: lighter;
}
button {
	border: none;
}
</style>
</head>
<body>
	<div class="order-container">
	<h1>주문 내역 확인</h1> 
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
			<td><button><a href="orderTest?action=delete&id=${orderList.id}">delete</a></button></td>
		</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>
<jsp:include page="/layout/footer.jsp"></jsp:include>