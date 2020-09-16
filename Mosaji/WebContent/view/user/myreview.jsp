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
	<div class="alert alert-secondary" role="alert"></div>
	<div class="container" style="min-height: 650px;">
	<div class="p-3 mb-2 bg-white text-dark"></div>
		<h3
			style="text-align: center; backgroud-color: gainsboro; margin-top: 1.5%; line-height: 2; font-size: 3rem; color: #625772;">
			내가 쓴 리뷰</h3>
		<!-- 		<h3 style="text-align: center; margin-top: 5%">내가쓴 리뷰</h3> -->
		<div class="row" style="margin-top:40px;">
			<table class="table" style="table-layout: fixed; table-layout: fixed;">
				<thead>
					<tr>
						<th scope="col" style="color: gray;">번호</th>
						<th scope="col" style="color: gray;">상품 이미지</th>
						<th scope="col" style="color: gray;">상품 이름</th>
						<th scope="col" style="color: gray;">리뷰 내용</th>
						<th scope="col" style="color: gray;">내가준 평점</th>
						<th scope="col" style="color: gray;">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="myreview" items="${myreview }" varStatus="status">
						<tr>
							<%-- 							<td>${myreview.rownum }</td> --%>
							<td style="color: gray;">${status.count}</td>
							<td><a
								href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}"
								style="color: gray; "><img
									src="${myreview.i_img }" style="width:80px; height:70px;"></a></td>
							<td><a
								href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}"
								style="color: #625772;">${myreview.i_name }</a></td>
							<td
								style="text-overflow: ellipsis; overflow: hidden; white-space: pre;"><a
								href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}"
								style="color: #625772;">${myreview.r_content }</a></td>
							<%-- 							<td><a href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}">${myreview.r_star }</a></td> --%>
							<td><a
								href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}"
								style="color: #625772;"> <c:choose>
										<c:when test="${myreview.r_star == 5 }">
											<img
												src="${pageContext.request.contextPath }/resources/images/star5.png"
												style="width: 140px;">
										</c:when>
										<c:when test="${myreview.r_star == 4 }">
											<img
												src="${pageContext.request.contextPath }/resources/images/star4.png"
												style="width: 140px;">
										</c:when>
										<c:when test="${myreview.r_star == 3 }">
											<img
												src="${pageContext.request.contextPath }/resources/images/star3.png"
												style="width: 140px;">
										</c:when>
										<c:when test="${myreview.r_star == 2 }">
											<img
												src="${pageContext.request.contextPath }/resources/images/star2.png"
												style="width: 140px;">
										</c:when>
										<c:when test="${myreview.r_star == 1 }">
											<img
												src="${pageContext.request.contextPath }/resources/images/star1.png"
												style="width: 140px;">
										</c:when>
									</c:choose>
							</a></td>
							<td style="color: #625772;">${myreview.r_date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<c:if test="${empty myreview}">
				<div style="width: 100%; text-align: center;">작성한 리뷰가 없습니다.</div>
			</c:if>
		</div>
	</div>
	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>