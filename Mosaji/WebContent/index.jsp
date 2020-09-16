<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="item.dao.DaoImpl"%>
<%@ page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- slider -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!-- Google font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Titillium+Web:400,400i,600,600i,700,700i,900">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i,800,800i">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- icofont -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionic/1.3.2/css/ionic.css">
<!-- carousel -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">

<style>
.blog_section {
	padding-top: 1rem;
	padding-bottom: 3rem;
}

.blog_section .blog_content .blog_item {
	margin-bottom: 30px;
	box-shadow: 0 0 11px 0 rgba(6, 22, 58, 0.14);
	position: relative;
	border-radius: 2px;
	overflow: hidden;
}

.blog_section .blog_content .blog_item:hover .blog_image img {
	transform: scale(1.1);
}

.blog_section .blog_content .blog_item .blog_image {
	overflow: hidden;
	padding: 0;
}

.blog_section .blog_content .blog_item .blog_image img {
	width: 100%;
	transition: transform 0.5s ease-in-out;
}

.blog_section .blog_content .blog_item .blog_image span i {
	position: absolute;
	z-index: 2;
	color: #fff;
	font-size: 18px;
	width: 38px;
	height: 45px;
	padding-top: 7px;
	text-align: center;
	right: 20px;
	top: 0;
	-webkit-clip-path: polygon(0 0, 100% 0, 100% 100%, 50% 79%, 0 100%);
	clip-path: polygon(0 0, 100% 0, 100% 100%, 50% 79%, 0 100%);
	background-color: #B290A3;
}

.blog_section .blog_content .blog_item .blog_details {
	padding: 25px 20px 30px 20px;
}

.blog_section .blog_content .blog_item .blog_details .blog_title h5 a {
	color: #020d26;
	margin-top: 0;
	margin-bottom: 10px;
	font-size: 25px;
	line-height: 32px;
	font-weight: 400;
	transition: all 0.3s;
	text-decoration: none;
}

.blog_section .blog_content .blog_item .blog_details .blog_title h5 a:hover
	{
	color: #A091B7;
}

.blog_section .blog_content .blog_item .blog_details ul {
	padding: 0 3px 10px 0;
	margin: 0;
}

.blog_section .blog_content .blog_item .blog_details ul li {
	display: inline-block;
	padding-right: 15px;
	position: relative;
	color: #7f7f7f;
}

.blog_section .blog_content .blog_item .blog_details ul li i {
	padding-right: 7px;
}

.blog_section .blog_content .blog_item .blog_details p {
	border-top: 1px solid #e5e5e5;
	margin-top: 4px;
	padding: 20px 0 4px;
}

.blog_section .blog_content .blog_item .blog_details a {
	font-size: 16px;
	display: inline-block;
	color: #A091B7;
	font-weight: 600;
	text-decoration: none;
	transition: all 0.3s;
}

.blog_section .blog_content .blog_item .blog_details a:hover {
	color: #020d26;
}

.blog_section .blog_content .blog_item .blog_details a i {
	vertical-align: middle;
	font-size: 20px;
}

.blog_section .blog_content .owl-nav {
	display: block;
}

.blog_section .blog_content .owl-nav .owl-prev {
	position: absolute;
	left: -27px;
	top: 33%;
	border: 5px solid #fff;
	text-align: center;
	z-index: 5;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	outline: 0;
	background: #CEC3DF;
	transition: all 0.3s;
	color: #fff;
}

.blog_section .blog_content .owl-nav .owl-prev span {
	font-size: 25px;
	margin-top: -6px;
	display: inline-block;
}

.blog_section .blog_content .owl-nav .owl-prev:hover {
	background: #fff;
	border-color: #A091B7;
	color: #CEC3DF;
}

.blog_section .blog_content .owl-nav .owl-next {
	position: absolute;
	right: -27px;
	top: 33%;
	border: 5px solid #fff;
	text-align: center;
	z-index: 5;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	outline: 0;
	background: #CEC3DF;
	color: #fff;
	transition: all 0.3s;
}

.blog_section .blog_content .owl-nav .owl-next span {
	font-size: 25px;
	margin-top: -6px;
	display: inline-block;
}

.blog_section .blog_content .owl-nav .owl-next:hover {
	background: #fff;
	border-color: #A091B7;
	color: #A091B7;
}

@media only screen and (max-width: 577px) {
	.blog_section .owl-nav .owl-prev {
		left: -17px !important;
	}
	.blog_section .owl-nav .owl-next {
		right: -17px !important;
	}
}
.card-img, .card-img-bottom, .card-img-topp {
	flex-shrink : 0;
	width : 80%;
	margin-left : 10%;
	margin-top : 15%;
}
</style>
</head>


<!-----header----->
<%@ include file="view/common/header.jsp"%>




<script src="http://code.jquery.com/jquery-3.3.1.js"></script>

<script type="text/javascript">
	$(function() {

		$('#category1').change(function() {

			var 페이스메이크업 = [ "피니시파우더", "파운데이션", "컨실러" ];

			var 아이메이크업 = [ "마스카라", "섀도우" ];

			var 립메이크업 = [ "틴트", "립스틱" ];

			var 스킨케어 = [ "스킨/토너", "로션/에센스", "크림" ];

			var category1;

			if (this.value == "페이스메이크업") {

				category1 = 페이스메이크업;

			} else if (this.value == "아이메이크업") {

				category1 = 아이메이크업;

			} else if (this.value == "립메이크업") {

				category1 = 립메이크업;

			} else if (this.value == "스킨케어") {

				category1 = 스킨케어;

			} 
			

			$('#category2').empty();

			for (var count = 0; count < category1.length; count++) {

				var option = $("<option>" + category1[count] + "</option>");

				$('#category2').append(option);

				$("#category2").change(function() {
					var category2 = $(this).val();
				})
			}
		});
	});
	
	

</script>

<script>
function selectnull(){
		
    var category1 = $("#category1").val();
    if(category1 == null){
        alert("카테고리를 입력해 주세요.");
        $("#category1").focus();
		return false;
   	}
    return true;
}
    
</script>


<body style="overflow: scroll;">

	<div id="wrapper" style="background: #DED9E3;">
		<div id="staff" class="container">
			<div class="row" style="margin-left: 1%;">
				<span style="font-size: 50px; color: #625772;">당신의 고민을 해결해주는,
					뭐사지 !</span>
			</div>
			<div class="row" style="margin-left: 1%; margin-bottom: 5%;">
				<span style="font-size: 20px; color: #7F7F7F;"> 연령대, 성별,
					피부타입에 따라 추천 받으세요 </span>
			</div>

			<!-- 			<button type="button" class="btn btn-secondary btn-lg btn-block">버튼후보 1번</button> -->
			<!-- 			<button type="button" class="btn btn-outline-secondary btn-lg btn-block">버튼후보 2번</button> -->

			<!-- 			<button type="button" class="btn btn-secondary btn-lg">버튼후보 1번</button> -->
			<!-- 			<button type="button" class="btn btn-outline-secondary btn-lg">버튼후보 2번</button> -->

			<!-- 			<button type="button" class="btn btn-secondary btn-lg">버튼후보 1번</button> -->
			<!-- 			<button type="button" class="btn btn-outline-secondary btn-lg">버튼후보 2번</button> -->


			<hr>

			<div style="margin-bottom: 10px;">
				<form onsubmit="return selectnull()" method="GET" action="${pageContext.request.contextPath }/view/item/mainFilter.jsp?category2=${param.category2}">
					<div class="row">
						<div class="col">
							<select class="form-control" name="category1" id="category1">
								<option value ="" disabled selected hidden>뷰티 카테고리</option>
								<option value="페이스메이크업">페이스메이크업</option>
								<option value="아이메이크업">아이메이크업</option>
								<option value="립메이크업">립메이크업</option>
								<option value="스킨케어">스킨케어</option>
							</select>
						</div>

						<div class="col">
							<select class="form-control" name="category2" id="category2">
								<option disabled selected hidden>소분류</option>
							</select>
						</div>
						<div class="col">
							<input type="submit" class="btn btn-secondary" value="랭킹 검색"
								style="width: 50%;">
						
						</div>
					</div>
				</form>
			</div>


			<form method="get"
				action="${pageContext.request.contextPath }/view/item/mainFilter.jsp?keyword=${param.keyword}">
				<div class="row">
					<div class="col">
						<input class="form-control" type="text" name="keyword"
							id="keyword" placeholder="제품 명, 브랜드 명으로 검색해보세요"
							style="text-align: center; width: 135%; font-size: 16px;">
					</div>
					<div class="col">
						<input class="btn btn-secondary" type="submit" value="화장품 검색"
							style="width: 32%; margin-left: 35%;">
					</div>
				</div>
			</form>

		</div>
	</div>




	<!-- 	<div class="container"> -->
	<!-- 		<div class="card-deck"> -->
	<!-- 			<div class="card" style="width: 18rem;"> -->
	<!-- 				<img class="card-img-top" -->
	<%-- 					src="${pageContext.request.contextPath }/resources/images/ban (11).png" --%>
	<!-- 					alt="Card image cap"> -->
	<!-- 				<div class="card-body"> -->
	<!-- 									<h5 class="card-title"></h5> -->
	<!-- 									<p class="card-text"></p> -->
	<!-- 									<a href="#" class="btn btn-primary btn-Block">립스틱</a> -->
	<!-- 					<button type="button" class="btn btn-secondary btn-lg btn-block">파운데이션</button> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 			<div class="card" style="width: 18rem;"> -->
	<!-- 				<img class="card-img-top" -->
	<%-- 					src="${pageContext.request.contextPath }/resources/images/ban (12).png" --%>
	<!-- 					alt="Card image cap"> -->
	<!-- 				<div class="card-body"> -->
	<!-- 									<h5 class="card-title"></h5> -->
	<!-- 									<p class="card-text"></p> -->
	<!-- 									<a href="#" class="btn btn-primary btn-Block">립스틱</a> -->
	<!-- 					<button type="button" class="btn btn-secondary btn-lg btn-block">파우더</button> -->
	<!-- 				</div> -->
	<!-- 			</div> -->

	<!-- 			<div class="card" style="width: 10rem;"> -->
	<!-- 				<img class="card-img-top" -->
	<%-- 					src="${pageContext.request.contextPath }/resources/images/ban (8).png" --%>
	<!-- 					alt="Card image cap"> -->
	<!-- 				<div class="card-body"> -->
	<!-- 									<h5 class="card-title"></h5> -->
	<!-- 									<p class="card-text"></p> -->
	<!-- 									<a href="#" class="btn btn-primary btn-Block">립스틱</a> -->
	<!-- 					<button type="button" class="btn btn-secondary btn-lg btn-block">섀도우</button> -->
	<!-- 				</div> -->
	<!-- 			</div> -->

	<!-- 			<div class="card" style="width: 18rem;"> -->
	<!-- 				<img class="card-img-top" -->
	<%-- 					src="${pageContext.request.contextPath }/resources/images/ban (7).png" --%>
	<!-- 					alt="Card image cap"> -->
	<!-- 				<div class="card-body"> -->
	<!-- 									<h5 class="card-title"></h5> -->
	<!-- 									<p class="card-text"></p> -->
	<!-- 									<a href="#" class="btn btn-primary btn-Block">립스틱</a> -->
	<!-- 					<button type="button" class="btn btn-secondary btn-lg btn-block">마스카라</button> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 			<div class="card" style="width: 18rem;"> -->
	<!-- 				<img class="card-img-top" -->
	<%-- 					src="${pageContext.request.contextPath }/resources/images/lip_1.png" --%>
	<!-- 					alt="Card image cap"> -->
	<!-- 				<div class="card-body"> -->
	<!-- 									<h5 class="card-title"></h5> -->
	<!-- 									<p class="card-text"></p> -->
	<!-- 									<a href="#" class="btn btn-primary btn-Block">립스틱</a> -->
	<!-- 					<button type="button" class="btn btn-secondary btn-lg btn-block">립스틱</button> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->

	<!-- 사진 3개 -->
	<!-- 	<div id="page" class="container"> -->
	<!-- 		<div class="row" style="margin: 0;"> -->
	<!-- 			<div class="col"> -->
	<!-- 				<img -->
	<%-- 					src="${pageContext.request.contextPath }/resources/images/lip_1.png" --%>
	<!-- 					width="100%" height="100%" alt="" /> -->
	<!-- 			</div> -->
	<!-- 			<div class="col"> -->
	<!-- 				<img -->
	<%-- 					src="${pageContext.request.contextPath }/resources/images/lip_2.png" --%>
	<!-- 					width="100%" height="100%" alt="" /> -->
	<!-- 			</div> -->
	<!-- 			<div class="col"> -->
	<!-- 				<img -->
	<%-- 					src="${pageContext.request.contextPath }/resources/images/lip_3.png" --%>
	<!-- 					width="100%" height="100%" alt="" /> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->




	<div class="p-3 mb-2 bg-white text-dark"></div>
	<div class="p-3 mb-2 bg-white text-dark"></div>

	<!-- <div class="p-3 mb-2 bg-secondary text-white"></div> -->

	<section>
		<!-- 				<h1 style="text-align: center;"></h1> -->
		<div class="container"
			style="text-align: center; font-size: 50px; color: #625772">인기
			브랜드</div>
	</section>

	<!-- 	<div class="container"> -->
	<!-- 		<div class="container" -->
	<!-- 			style="text-align: center; font-size: 50px; color: #625772">BEST</div> -->
	<!-- 	</div> -->

	<section class="blog_section">
		<div class="col-md-8 offset-md-2">
			<div class="blog_content">
				<div class="owl-carousel owl-theme">
					<div class="blog_item">


						<div class="blog_image">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/resources/images/이니스프리_로고_(1).png"
								alt="images not found"> <span><i
								class="icon ion-md-create"></i></span>
						</div>
						<div class="blog_details">
							<div class="blog_title">
								<a style="color: black; font-size: 30px;"
									href="https://www.innisfree.com/kr/ko/Main.do">이니스프리</a>
							</div>
							<ul>
								<li><i class="icon ion-md-person"></i>이니스프리</li>
								<li><i class="icon ion-md-calendar"></i>자연주의</li>
							</ul>
							<p></p>
							<button type="button"
								class="btn btn-outline-secondary btn-lg btn-block"
								onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?keyword=이니스프리'">제품보기</button>
						</div>
					</div>


					<div class="blog_item">
						<div class="blog_image">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/resources/images/메이크업_포에버_로고_(3).png"
								width="150px" height="100px" alt="images not found"> <span><i
								class="icon ion-md-create"></i></span>
						</div>
						<div class="blog_details">
							<div class="blog_title">
								<a style="color: black; font-size: 30px;"
									href="https://www.makeupforever.com/">메이크업포에버</a>
							</div>
							<ul>
								<li><i class="icon ion-md-person"></i>절대팩트</li>
								<li><i class="icon ion-md-calendar"></i>메포</li>
							</ul>
							<p></p>
							<button type="button"
								class="btn btn-outline-secondary btn-lg btn-block"
								onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?keyword=메이크업포에버'">제품보기</button>
						</div>
					</div>


					<div class="blog_item">
						<div class="blog_image">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/resources/images/에뛰드_로고_(2).png"
								alt="images not found"> <span><i
								class="icon ion-md-create"></i></span>
						</div>
						<div class="blog_details">
							<div class="blog_title">
								<a style="color: black; font-size: 30px;"
									href="https://www.etude.com">에뛰드</a>
								<ul>
									<li><i class="icon ion-md-person"></i>에뛰드</li>
									<li><i class="icon ion-md-calendar"></i>에뛰드 틴트 맛있어</li>
								</ul>
								<p></p>
								<button type="button"
									class="btn btn-outline-secondary btn-lg btn-block"
									onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?keyword=에뛰드'">제품보기</button>
							</div>
						</div>
					</div>


					<div class="blog_item">
						<div class="blog_image">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/resources/images/스킨푸드_로고_(3).png"
								width="150px" height="100px" alt="images not found"> <span><i
								class="icon ion-md-create"></i></span>
						</div>
						<div class="blog_details">
							<div class="blog_title">
								<a style="color: black; font-size: 30px;"
									href="https://www.theskinfood.com">스킨푸드</a>
							</div>
							<ul>
								<li><i class="icon ion-md-person"></i>스킨푸드</li>
								<li><i class="icon ion-md-calendar"></i>피부에 양보하세요</li>
							</ul>
							<p></p>
							<button type="button"
								class="btn btn-outline-secondary btn-lg btn-block"
								onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?keyword=스킨푸드'">제품보기</button>
						</div>
					</div>


					<div class="blog_item">
						<div class="blog_image">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/resources/images/로라메르시에.jpeg"
								width="150px" height="100px" alt="images not found"> <span><i
								class="icon ion-md-create"></i></span>
						</div>
						<div class="blog_details">
							<div class="blog_title">
								<a style="color: black; font-size: 30px;"
									href="https://www.lauramercier.co.kr/">로라메르시에</a>
							</div>
							<ul>
								<li><i class="icon ion-md-person"></i>비싸다</li>
								<li><i class="icon ion-md-calendar"></i>좋다</li>
							</ul>
							<p></p>
							<button type="button"
								class="btn btn-outline-secondary btn-lg btn-block"
								onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?keyword=로라메르시에'">제품보기</button>
						</div>
					</div>


				</div>
			</div>
	</section>


	<div class="p-3 mb-2 bg-white text-dark"></div>
	<div class="container">
		<div class="container"
			style="text-align: center; font-size: 50px; color: #625772">랭킹 바로보기</div>
	</div>

	<div class="container">
		<div class="card-deck">
			<div class="card" style="width: 18rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (2).png"
					alt="Card image cap">
				<div class="card-body">
<!-- 					<button type="button" class="btn btn-secondary btn-lg btn-block" -->
<!-- 						onclick="location.href='http://localhost:8001/Mosaji/view/item/mainFilter.jsp?category1=페이스메이크업&category2=파운데이션'">파운데이션</button> -->
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=페이스메이크업&category2=파운데이션'">파운데이션</button>
				</div>

			</div>
			<div class="card" style="width: 18rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (9).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=페이스메이크업&category2=피니시파우더'">파우더</button>
				</div>
			</div>

			<div class="card" style="width: 10rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (6).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=아이메이크업&category2=섀도우'">섀도우</button>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (15).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=아이메이크업&category2=마스카라'">마스카라</button>
				</div>
			</div>
			<div class="card" style="width: 18rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (12).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=립메이크업&category2=립스틱'">립스틱</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="card-deck">
			<div class="card" style="width: 18rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (30).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=스킨케어&category2=스킨/토너'">스킨/토너</button>
				</div>

			</div>
			<div class="card" style="width: 18rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (28).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=스킨케어&category2=로션/에센스'">로션/에센스</button>
				</div>
			</div>

			<div class="card" style="width: 10rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (29).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=스킨케어&category2=크림'">크림</button>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (5).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=페이스메이크업&category2=컨실러'">컨실러</button>
				</div>
			</div>
			<div class="card" style="width: 18rem;">
				<img class="card-img-topp"
					src="${pageContext.request.contextPath }/resources/images/index (11).png"
					alt="Card image cap">
				<div class="card-body">
					<button type="button" class="btn btn-secondary btn-lg btn-block"
						onclick="location.href='http://3.34.243.62:8080/Mosaji/view/item/mainFilter.jsp?category1=립메이크업&category2=틴트'">틴트</button>
				</div>
			</div>
		</div>
	</div>

	<div class="p-3 mb-2 bg-white text-dark"></div>
	<div class="p-3 mb-2 bg-white text-dark"></div>

	<section>
		<!-- 		<h1 style="text-align: center;"></h1> -->
		<div class="container"
			style="text-align: center; font-size: 50px; color: #625772">위치</div>
		<br> <br>
		<div class="col-md-8 offset-md-2">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.9665602215405!2d126.89660961519179!3d37.48511547981327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9e3ac6500f81%3A0x9c30e9fbc9189200!2z7ZWc6rWt7KCV67O06riw7Iig7Jew6rWs7JuQ!5e0!3m2!1sko!2skr!4v1598426938539!5m2!1sko!2skr"
				width="100%" height="450" frameborder="0" style="border: 0;"
				allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div>

	</section>
	<br>
	<br>



	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- bootstrap -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<!-- carousel -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
	<script type="text/javascript">
		$('.owl-carousel').owlCarousel({
			loop : true,
			margin : 10,
			dots : false,
			nav : true,
			autoplay : true,
			smartSpeed : 3000,
			autoplayTimeout : 7000,
			responsive : {
				0 : {
					items : 1
				},
				600 : {
					items : 2
				},
				1000 : {
					items : 3
				}
			}
		})
	</script>




	<%@ include file="view/common/footer.jsp"%>






</body>
</html>
