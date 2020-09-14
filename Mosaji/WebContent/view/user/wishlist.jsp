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
<script>
	$(document).ready(function() {
		var zzim_str = "";
		$("#del_btn").click(function() {
			var confirmflag = confirm("ㄹㅇ 삭제 할껴?");
			if(confirmflag){
				$("input[name=del]:checked").each(function() {
					zzim_str += ($(this).val());
					zzim_str += ",";
				});
				
				location.href = "/Mosaji/WishDeleteController?zzim_str="+zzim_str;
			}
		});
		
		
	});
</script>

</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	
	<div id="body" style="min-height: 570px;">
		<c:if test="${not empty wishlist }">
			<h3 style="text-align: center; backgroud-color : gainsboro; margin-top: 1.5%; line-height: 2; font-size: 3rem; color: #625772;"> ✨찜 목록✨  </h3>
			<div class="row" >
				<div class="offset-md-3 col-md-6">
					<table class="table">
						<thead>
							<tr>
								<th scope="col" style="color: gray;">번호</th>
								<th scope="col" style="color: gray;">상품 번호</th>
								<th scope="col" style="color: gray;">상품 이름</th>
								<th scope="col" style="color: gray;">상품 설명</th>
								<th scope="col" style="color: gray;">상품 이미지</th>
								<th scope="col" style="color: gray;">삭제</th>
							</tr>
						</thead>
						<tbody id="zzim">
								<c:forEach var="wishlist" items="${wishlist }" varStatus="status">
								<tr>
	<%-- 								<th><a style="color: gray;" >${wishlist.rownum }</a></th> --%>
									<th><a style="color: gray;" >${status.count }</a></th>
									<th><a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: gray;">${wishlist.i_no }</a></th>
									<th><a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: #625772;" >${wishlist.i_name }</a></th>
									<th><a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: gray;">${wishlist.i_content }</a></th>
									<th><a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: gray;" ><img src="${wishlist.i_img }"></a></th>
									<th><input type="checkbox" name="del"
										value="${wishlist.w_no }"></th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<button id="del_btn"
						style="float: right; margin-top: 10px; margin-right: 10px">삭제</button>
				</div>
			</div>
			<div class="row">
			<div class="offset-md-3 col-md-6">
				<a id="kakao-link-btn" href="javascript:sendLink()"> 
				<input type="button" class="btn btn-secondary" value="카카오톡 공유하기">
				</a>
			</div>
		</div>
	
		</c:if>
		<c:if test="${empty wishlist}">
			<h3 style="text-align: center; margin-top: 10%;">찜 목록이 비어있습니다.</h3>
		</c:if>
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
							mobileWebUrl : 'http://localhost:8080/Mosaji/WishlistController',
							webUrl : 'http://localhost:8080/Mosaji/WishlistController'
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
									mobileWebUrl : 'http://localhost:8080/Mosaji/WishlistController',
									webUrl : 'http://localhost:8080/Mosaji/WishlistController'
								}
							},
							{
								title : '앱으로 보기',
								link : {
									mobileWebUrl : 'http://localhost:8080/Mosaji/WishlistController',
									webUrl : 'http://localhost:8080/Mosaji/WishlistController'
								}
							} ]
				});
		//]]>
	</script>

</body>
</html>