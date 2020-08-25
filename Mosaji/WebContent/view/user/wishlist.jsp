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
	<%@ include file="/view/common/header.jsp"%>
	<h3 style="text-align: center;">내 정보</h3>
	<div class="row">
		<div class="col-md-6 offset-md-3">

			<!-- 			<table border="1"> -->
			<!-- 				<tr> -->
			<!-- 					<td>아이디 </td> -->
			<%-- 					<td>${u.u_id }</td> --%>
			<!-- 				</tr> -->
			<!-- 				<tr> -->
			<!-- 					<td>패스워드</td> -->
			<%-- 					<td>${u.u_pw }</td> --%>
			<!-- 				</tr> -->
			<!-- 				<tr> -->
			<!-- 					<td>이름</td> -->
			<%-- 					<td>${u.u_name }</td> --%>
			<!-- 				</tr> -->
			<!-- 				<tr> -->
			<!-- 					<td>나이</td> -->
			<%-- 					<td>${u.u_age }</td> --%>
			<!-- 				</tr> -->
			<!-- 				<tr> -->
			<!-- 					<td>성별</td> -->
			<%-- 					<td>${u.u_gender }</td> --%>
			<!-- 				</tr> -->
			<!-- 				<tr> -->
			<!-- 					<td>피부 타입</td> -->
			<%-- 					<td>${u.u_skintype }</td> --%>
			<!-- 				</tr> -->
			<!-- 				<tr> -->
			<!-- 					<td>피부 타입</td> -->
			<%-- 					<td>${u.u_skintype }</td> --%>
			<!-- 				</tr> -->

			<!-- 			</table> -->

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">아이디</th>
						<th scope="col">패스워드</th>
						<th scope="col">이름</th>
						<th scope="col">나이</th>
						<th scope="col">성별</th>
						<th scope="col">피부타입</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${u.u_id }</td>
						<td>${u.u_pw }</td>
						<td>${u.u_name }</td>
						<td>${u.u_age }</td>
						<td>${u.u_gender }</td>
						<td>${u.u_skintype }</td>
					</tr>
					
				</tbody>
			</table>


		</div>
	</div>

	<h3 style="text-align: center;">찜 목록</h3>
	<div class="row">
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


	<%@ include file="/view/common/footer.jsp"%>

</body>
</html>