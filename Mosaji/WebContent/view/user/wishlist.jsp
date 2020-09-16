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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
	
</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<script>
function cAll() {
    if ($("#checkAll").is(':checked')) {
        $("input[type=checkbox]").prop("checked", true);
    } else {
        $("input[type=checkbox]").prop("checked", false);
    }
}

	$(document)
			.ready(
					function() {
						var zzim_str = "";
						$("#del_btn")
								.click(
										function() {
											var confirmflag = confirm("정말 삭제하시겠습니까?");
											if (confirmflag) {
												$("input[name=del]:checked")
														.each(
																function() {
																	zzim_str += ($(this)
																			.val());
																	zzim_str += ",";
																});

												location.href = "/Mosaji/WishDeleteController?zzim_str="
														+ zzim_str;
											}
										});

					});
</script>

</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="alert alert-secondary" role="alert"></div>
	<div class="p-3 mb-2 bg-white text-dark"></div>
	<div id="body">
		<!-- 	style="min-height: 570px; margin-top:100px; margin-bottom:100px;" -->

		<c:if test="${not empty wishlist }">
			<h3
				style="text-align: center; backgroud-color: gainsboro; margin-top: 1.5%; line-height: 2; font-size: 3rem; color: #625772;">
				찜 목록</h3>
			<div class="p-3 mb-2 bg-white text-dark"></div>
			<div class="row">
				<div class="offset-md-3 col-md-6" style="text-align: center;">
					<table class="table">
						<thead>
							<tr>
								<th scope="col" style="color: gray;">번호</th>
								<th scope="col" style="color: gray;">상품 이미지</th>
								<th scope="col" style="color: gray;">상품 정보</th>
								<th scope="col" style="color: gray;">상품 가격</th>
								<th scope="col" style="color: gray;"><input type="checkbox" id="checkAll" onclick="cAll();"></th>
							</tr>
						</thead>
						<tbody id="zzim">
							<c:forEach var="wishlist" items="${wishlist }" varStatus="status">
								<tr>
<%-- 																	<th><a style="color: gray;" >${wishlist.rownum }</a></th> --%>
									<th style="text-align: center; vertical-align: middle;"><a style="color: gray;">${status.count }</a></th>
									<th style="text-align: center; vertical-align: middle;"><a
										href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }"
										style="color: gray;"><img src="${wishlist.i_img }"
											style="width: 80px; height: 70px;"></a></th>
									<th style="text-align: center; vertical-align: middle;"><a
										href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }"
										style="color: #625772;">${wishlist.i_name }</a></th>
									<th style="text-align: center; vertical-align: middle;"><a
										href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }"
										style="color: gray;">${wishlist.i_price }</a></th>

									<th style="text-align: center; vertical-align: middle;"><input type="checkbox" name="del"
										value="${wishlist.w_no }" style="color: #625772;"></th>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
			<div class="row">
				<div class="offset-md-3 col-md-6">
					<a id="kakao-link-btn" href="javascript:sendLink()"> <input
						type="button" class="btn btn-warning"
						style="color: white; float: left; margin-top: 10px; margin-right: 10px"
						value="카카오톡 공유하기">
					</a>

					<button id="del_btn" type="button"
						class="btn btn-outline-secondary"
						style="float: right; margin-top: 10px; margin-right: 10px">삭제</button>

				</div>
			</div>
			<div class="p-3 mb-2 bg-white text-dark"></div>
			<div class="p-3 mb-2 bg-white text-dark"></div>

			<div class="row">
				<div class="col-md-8 offset-md-2"></div>
			</div>

		</c:if>
		<c:if test="${empty wishlist}">
			<h3 style="text-align: center; margin-top: 10%;margin-bottom:16.5%;">찜 목록이 비어있습니다.</h3>
		</c:if>
	</div>

<!-- 	<div class="col-md-8 offset-md-2"> -->
<!-- 	<div class="row"> -->
		

<%-- 			<c:forEach var="wishlist" items="${wishlist }" varStatus="status"> --%>
<!-- 				<div class="col-md-4"> -->
<!-- 											<a href=""> 클릭 시 링크 설정 -->
<%-- 					<a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: #625772;"> --%>
<!-- 					<div class="card"> -->
<!-- 						카드 헤더 -->
<!-- 						<div class="card-header"> -->
<%-- 							<img src="${wishlist.i_img }" style="width: 100%; height: 100%;"> --%>

<!-- 						</div> -->
<!-- 						 카드 바디 -->
<!-- 						<div class="card-body"> -->
<!-- 							 카드 바디 헤더 -->
<!-- 							<div class="card-body-header"> -->
<%-- 								<h3>${wishlist.i_name }</h3> --%>
								
<%-- 								<p class="card-body-nickname">가격: ${wishlist.i_price }₩</p> --%>
<!-- 								<p class="card-body-hashtag">#친구야 #나 #이거사줘</p> -->
<!-- 								<input type="checkbox" name="del" -->
<%-- 										value="${wishlist.w_no }" style="color: #625772;"> --%>
<!-- 							</div> -->
<!-- 							 카드 바디 본문 -->
<!-- 							 카드 바디 푸터 -->
<!-- 													<div class="card-body-footer"> -->
<!-- 														<hr -->
<!-- 															style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31"> -->
<!-- 														<i class="icon icon-view_count"></i>조회 38회 <i -->
<!-- 															class="icon icon-comments_count"></i>댓글 4개 <i class="reg_date"> -->
<!-- 															2018/04/12 </i> -->
<!-- 													</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					</a> -->
<!-- 											</a> -->
<!-- 				</div> -->
<%-- 			</c:forEach> --%>
<!-- 		</div> -->
<!-- 	</div> -->
	
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


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
						// 						imageUrl : 'http://mud-kage.kakao.co.kr/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
						imageUrl : 'http://3.34.243.62:8080/Mosaji//resources/images/logo_5.png',
						link : {
							mobileWebUrl : 'http://3.34.243.62:8080/Mosaji/WishlistController',
							webUrl : 'http://3.34.243.62:8080/Mosaji/WishlistController'
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
									mobileWebUrl : 'http://3.34.243.62:8080/Mosaji/WishlistController',
									webUrl : 'http://3.34.243.62:8080/Mosaji/WishlistController'
								}
							},
							{
								title : '앱으로 보기',
								link : {
									mobileWebUrl : 'http://3.34.243.62:8080/Mosaji/WishlistController',
									webUrl : 'http://3.34.243.62:8080/Mosaji/WishlistController'
								}
							} ]
				});
		//]]>
	</script>
	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>
