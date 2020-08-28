<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" -->
<!-- 	crossorigin="anonymous"> -->
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="container">
		<h3 style="text-align: center; margin-top: 5%">내가쓴 리뷰</h3>
		<div class="row">
			<table class="table" style="table-layout: fixed">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">상품 이미지</th>
						<th scope="col">상품 이름</th>
						<th scope="col">리뷰 내용</th> 
						<th scope="col">내가준 평점</th>
						<th scope="col">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="myreview" items="${myreview }">
						<tr>
							<td>${myreview.rownum }</td>
							<td><a href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}"><img src="${myreview.i_img }"></a></td>
							<td><a href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}">${myreview.i_name }</a></td>
							<td style="text-overflow:ellipsis; overflow:hidden; white-space: pre; "><a href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}">${myreview.r_content }</a></td>
							<td><a href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}">${myreview.r_star }</a></td>
							<td>${myreview.r_date }</td>
							
						</tr>
					</c:forEach>
				</tbody>


			</table>
		</div>
	</div>
	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>