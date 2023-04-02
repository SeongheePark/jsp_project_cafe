<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap');
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}

.page-container {
	margin: 0;
	padding: 0;
	height: 150px;
	background-color: beige;
	display: flex;
	justify-content: center;
	align-items: center;
}
.header {
	display: flex;
	flex: 1 0 0;
	justify-content: center;
	align-items: center;
}
.header-icon {
	display: flex;
	flex: 0 0 1;
	flex-direction: column;
	align-items: center;
	margin: 10px;
	margin-right: 60px;
	padding: 10px;
}
a {
	text-decoration: none;
	color: black;
}
a :hover{
	color: white;
}
</style>
</head>
<body>
	<div class="page-container">
		<div class="header">
			<div class="header-icon">
				<span class="material-symbols-outlined">home</span>
				<span><a href="/project/mainPage.jsp">HOME</a></span>
			</div>
			<div class="header-icon">
				<span class="material-symbols-outlined">menu_book</span>
				<span><a href="/project/menuTest">MENU</a></span>
			</div>
				<div class="header-icon">
				<span class="material-symbols-outlined">shopping_bag</span>
				<span><a href="/project/shoppingBag.jsp">SHOPPING BAG</a></span>
			</div>
			<div class="header-icon">
				<span class="material-symbols-outlined">local_cafe</span>
				<span><a href="/project/orderSelectCheck.jsp">ORDER</a></span>
			</div>
		</div>
			<div class="header-icon">
				<span class="material-symbols-outlined">local_cafe</span>
				<span><a href="/project/admin.jsp">관리자페이지</a></span>
			</div>
	</div>
</body>