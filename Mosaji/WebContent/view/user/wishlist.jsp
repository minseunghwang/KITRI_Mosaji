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
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript">
	function goDelete() {
		location.href = "/Mosaji/DeleteController";
		alert('탈퇴가 완료되었습니다.');
	}
	function goUpdate() {
		location.href = "/Mosaji/UpdateGetController";
	}
</script>

</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<c:if test="${not empty sessionScope.flag }">
		<h3 style="text-align: center;">내 정보</h3>
		<div class="row">
			<div class="col-md-6 offset-md-3">


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
				<button type="button" class="btn btn-secondary" onclick="goDelete()"
					value="탈퇴">회원탈퇴</button>
				<button type="button" class="btn btn-secondary" onclick="goUpdate()"
					value="수정">정보수정</button>
			</div>
		</div>
	</c:if>
	<c:if test="${empty sessionScope.flag }">

	</c:if>



	<%-- 	<c:if test="${not empty wishlist }"> --%>
	<!-- 	<h3 style="text-align: center;margin-top: 10%;">찜 목록</h3> -->
	<!-- 	<div class="row"> -->
	<!-- 		<div class="offset-md-3 col-md-6"> -->
	<%-- 			<c:forEach var="wishlist" items="${wishlist }"> --%>
	<!-- 				<table class="table"> -->
	<!-- 					<thead> -->
	<!-- 						<tr> -->
	<!-- 							<th scope="col">상품 번호</th> -->
	<!-- 							<th scope="col">상품 이름</th> -->
	<!-- 							<th scope="col">상품 설명</th> -->
	<!-- 						</tr> -->
	<!-- 					</thead> -->
	<!-- 					<tbody> -->
	<!-- 						<tr> -->
	<%-- 							<th>${wishlist.w_no }</th> --%>
	<%-- 							<th>${wishlist.i_no }</th> --%>
	<%-- 							<th>${wishlist.u_id }</th> --%>


	<!-- 						</tr> -->
	<!-- 					</tbody> -->
	<!-- 				</table> -->
	<%-- 			</c:forEach> --%>
	<!-- 		</div> -->

	<!-- 	</div> -->
	<%-- 	</c:if> --%>

	<c:if test="${not empty wishlist }">
		<h3 style="text-align: center; margin-top: 10%;">찜 목록</h3>
		<div class="row">
			<div class="offset-md-3 col-md-6">

				<table class="table">
					<thead>
						<tr>

							<th scope="col">번호</th>
							<th scope="col">상품 번호</th>
							<th scope="col">상품 이름</th>
							<th scope="col">상품 설명</th>
							<th scope="col">상품 이미지</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="wishlist" items="${wishlist }">

							<tr>
								
								<th>${wishlist.rownum }</th>
								<th><a href="/ItemListController?i_no=${wishlist.i_no }">${wishlist.i_no }</a></th>
								<th><a href="/ItemListController?i_no=${wishlist.i_no }">${wishlist.i_name }</a></th>
								<th><a href="/ItemListController?i_no=${wishlist.i_no }">${wishlist.i_content }</a></th>
								<th><a href="/ItemListController?i_no=${wishlist.i_no }"><img src="${wishlist.i_img }"></a></th>
								
							</tr>

						</c:forEach>
					</tbody>
				</table>


			</div>

		</div>
	</c:if>
	<c:if test="${empty wishlist}">
		<h3 style="text-align: center; margin-top: 10%;">찜 목록이 비어있습니다.</h3>
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
								<th rowspan="3">텅~~~ 비어있어요</th>



							</tr>
						</tbody>
					</table>
				</c:forEach>
			</div>

		</div>
	</c:if>

	<div class="row">
		<div class="offset-md-3 col-md-6">
			<a id="kakao-link-btn" href="javascript:sendLink()"> <img
				src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" />
			</a>


		</div>
	</div>

	<%@ include file="/view/common/footer.jsp"%>

	<script type='text/javascript'>
		//<![CDATA[
		// // 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('ce52c7a0ebcfa92bf69fe804015add9f');
		// // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
		Kakao.Link
				.createDefaultButton({
					container : '#kakao-link-btn',
					objectType : 'feed',
					content : {
						title : '모사지 - 선물추천 웹사이트',
						description : '#모사지 #선물추천 #선물 #내놔 ',
						imageUrl : 'http://mud-kage.kakao.co.kr/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
						link : {
							mobileWebUrl : 'http://localhost:8004/Mosaji/WishlistController',
							webUrl : 'http://localhost:8004/Mosaji/WishlistController'
						}
					},
					social : {
						likeCount : 286,
						commentCount : 45,
						sharedCount : 845
					},
					buttons : [
							{
								title : '웹으로 보기',
								link : {
									mobileWebUrl : 'http://localhost:8004/Mosaji/WishlistController',
									webUrl : 'http://localhost:8004/Mosaji/WishlistController'
								}
							},
							{
								title : '앱으로 보기',
								link : {
									mobileWebUrl : 'http://localhost:8004/Mosaji/WishlistController',
									webUrl : 'http://localhost:8004/Mosaji/WishlistController'
								}
							} ]
				});
		//]]>
	</script>



</body>
</html>