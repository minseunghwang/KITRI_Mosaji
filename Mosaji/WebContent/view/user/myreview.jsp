<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="container">
		<h3 style="text-align: center; margin-top: 5%">내가쓴 리뷰</h3>
		<div class="row">
			<table class="table">
				<thead>
					<th scope="col">번호</th>
					<th scope="col">상품 번호</th>
					<th scope="col">상품 이름</th>
					<th scope="col">상품 설명</th>
					<th scope="col">상품 이미지</th>
				</thead>
				<tbody>
				</tbody>


			</table>
		</div>
	</div>
	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>