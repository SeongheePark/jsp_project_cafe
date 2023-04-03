<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">
<jsp:include page="/layout/header.jsp"></jsp:include>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
.main-container {
	display: flex;
}
#main2 {
	width: 100%
}
h3 {
 font-size: 50px;
 color: #ee2194;
}
p {
 background-color: #FED2D9;
}
</style>
</head>
<body>
<div class="main-container">
<div id='main'>
<img alt=""  class="mainImage" src="image/mainImg.png">
</div>
<div id='main2'>
<img alt=""  class="mainImage" src="image/mainImage2.jpg">
<h3>스프링 시즌 블렌드 250g</h3>
<p>삼나무향이 감도는 진한 풍미와<br>
	은은한 다크 체리의 산미가 조화롭게 블렌딩 된<br>
	시즌 한정 원두를 매장에서 만나보세요!</p>
</div>
</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>


