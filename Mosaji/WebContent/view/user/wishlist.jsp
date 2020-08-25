<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wish List</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
</head>
<body>
<%@ include file="/view/common/header.jsp"  %>
<h3 style="text-align:center;">My Page</h3>
	<div class="container">
		<div class="offset-md-3 col-md-6">
			<c:forEach var="wishlist" items="${wishlist }">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">상품 번호</th>
							<th scope="col">상품 이름</th>
							<th scope="col">상품 설명</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>${wishlist.w_no }</th>
							<th>${wishlist.i_no }</th>
							<th>${wishlist.u_id}</th>
						
							
						</tr>
					</tbody>
				</table>
			</c:forEach>
		</div>
	
	</div>

	
<%@ include file="/view/common/footer.jsp"  %>

</body>
</html>