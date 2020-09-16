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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="alert alert-secondary" role="alert"></div>
	<div class="p-3 mb-2 bg-white text-dark"></div>
	<h3
		style="text-align: center; backgroud-color: gainsboro; margin-top: 1.5%; line-height: 2; font-size: 3rem; color: #625772;">
		공유된 목록</h3>

	<div class="col-md-8 offset-md-2">
		<div class="row">


			<c:forEach var="wishlist" items="${wishlist }" varStatus="status">
				<div class="col-md-4">
<!-- 					<a href=""> 클릭 시 링크 설정  -->
					<a
						href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }"
						style="color: #625772;">
							<div class="card" style="margin-bottom:5%;">
<!-- 								카드 헤더 -->
								<div class="card-header">
									<img src="${wishlist.i_img }"
										style="width: 350px; height: 350px;">

								</div>
<!-- 								카드 바디 -->
								<div class="card-body">
<!-- 									카드 바디 헤더 -->
									<div class="card-body-header">
										<h3>${wishlist.i_name }</h3>

										<p class="card-body-nickname">가격: ${wishlist.i_price }₩</p>
										<p class="card-body-hashtag">#친구야 #나 #이거사줘</p>
<%-- 										<input type="checkbox" name="del" value="${wishlist.w_no }" --%>
<!-- 											style="color: #625772;"> -->
									</div>
<!-- 									카드 바디 본문 카드 바디 푸터 -->
<!-- 									<div class="card-body-footer"> -->
<!-- 										<hr -->
<!-- 											style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31"> -->
<!-- 										<i class="icon icon-view_count"></i>조회 38회 <i -->
<!-- 											class="icon icon-comments_count"></i>댓글 4개 <i -->
<!-- 											class="reg_date"> 2018/04/12 </i> -->
<!-- 									</div> -->
								</div>
							</div>
					</a>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@ include file="/view/common/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>