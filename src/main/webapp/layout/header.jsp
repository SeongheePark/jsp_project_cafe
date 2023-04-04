<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-weight: bolder;
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
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="page-container">
		<div class="header">
			<div class="header-icon" onclick="location.href='/project/mainPage.jsp'">
				<span class="material-symbols-outlined">home</span>
				<span>HOME</span>
			</div>
			<div class="header-icon" onclick="location.href='/project/menuTest'">
				<span class="material-symbols-outlined">menu_book</span>
				<span>MENU</span>
			</div>
				<div class="header-icon" onclick="location.href='/project/shoppingBag.jsp'">
				<span class="material-symbols-outlined">shopping_bag</span>
				<span>SHOPPING BAG</span>
			</div>
			<div class="header-icon" onclick="location.href='/project/orderSelectCheck.jsp'">
				<span class="material-symbols-outlined">local_cafe</span>
				<span>ORDER</span>
			</div>
		</div>
			<div class="header-icon" onclick="location.href='/project/admin.jsp'">
				<span class="material-symbols-outlined">admin_panel_settings</span>
				<span>ADMIN</span>
			</div>
	</div>
</body>