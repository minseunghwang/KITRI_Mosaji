<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-----css----->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/resources/fonts.css" rel="stylesheet" type="text/css" media="all" />

<link href="./Resource/css/bootstrap.min.css" rel="stylesheet">
<link href="./Resource/css/bootstrap.css" rel="stylesheet">


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
	padding-top: 5rem;
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
	background-color: #ff5e14;
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
	color: #ff5e14;
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
	color: #ff5e14;
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
	background: #ff5e14;
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
	border-color: #ff5e14;
	color: #ff5e14;
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
	background: #ff5e14;
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
	border-color: #ff5e14;
	color: #ff5e14;
}

@media only screen and (max-width: 577px) {
	.blog_section .owl-nav .owl-prev {
		left: -17px !important;
	}
	.blog_section .owl-nav .owl-next {
		right: -17px !important;
	}
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

			var 립메이크업 = [ "틴트", "립스틱"];

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
				
				$("#category2").change(function(){
					var category2 = $(this).val();
				})
			}
		});
	});
	
</script>



<body style="background: white; overflow: scroll;">





	<div id="wrapper" style="background: #FFBFAB;">
		<div id="staff" class="container">
			<div class="title">
				<h2 style="color: #625772">당신의 고민을 해결해주는, 뭐사지 !</h2><br>
				<span style="font-size: 20px; color: #7F7F7F;"> 연령대, 성별,
					피부타입에 따라 추천받아보세요 </span>
			</div>



			<div style="margin-bottom: 50px;">
				<form method="GET"
					action="${pageContext.request.contextPath }/view/item/mainFilter.jsp?category2=${param.category2}">
					<div class="row">
						<div class="col">
							<select class="custom-select"  name="category1" id="category1">
								<option value="" disabled selected hidden>뷰티 카테고리</option>
								<option value="페이스메이크업">페이스메이크업</option>
								<option value="아이메이크업">아이메이크업</option>
								<option value="립메이크업">립메이크업</option>
								<option value="스킨케어">스킨케어</option>
							</select>
						</div>

						<div class="col">
							<select class="custom-select" name="category2" id="category2">
								<option value="" disabled selected hidden>소분류</option>
							</select>
						</div>
						<div class="col">
							<button type="submit" class="btn btn-secondary"
								onclick="select()" style="width: 50%;">랭킹 순위보기</button>
						</div>
					</div>
				</form>
			</div>


			<form class="form-inline my-2 my-lg-0" style="margin: 0;">
				<input class="form-control mr-sm-2" type="text"
					placeholder=" 화장품 이름을 입력하세요" style="width: 60%;">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit"
					style="width: 15%; margin-left: 10%;">화장품 검색</button>
			</form>
		
		</div>
	</div>


	<div id="page" class="container">
		<div class="row" style="margin: 0;">
			<div class="col">
				<img
					src="${pageContext.request.contextPath }/resources/images/lip_1.png"
					width="100%" height="100%" alt="" />
			</div>
			<div class="col">
				<img
					src="${pageContext.request.contextPath }/resources/images/lip_2.png"
					width="100%" height="100%" alt="" />
			</div>
			<div class="col">
				<img
					src="${pageContext.request.contextPath }/resources/images/lip_3.png"
					width="100%" height="100%" alt="" />
			</div>
		</div>


	</div>
	<section>
		<h1 style="text-align: center;">Out Brand</h1>
	</section>
	<section class="blog_section">
		<div class="container">
			<div class="blog_content">
				<div class="owl-carousel owl-theme">
					<div class="blog_item">
						<div class="blog_image">
							<img class="img-fluid"
								src="https://cdn.pixabay.com/photo/2019/03/10/18/31/hong-kong-4046913_960_720.jpg"
								alt="images not found"> <span><i
								class="icon ion-md-create"></i></span>
						</div>
						<div class="blog_details">
							<div class="blog_title">
								<h5>
									<a href="#">We are best for any industrial & business
										solution.</a>
								</h5>
							</div>
							<ul>
								<li><i class="icon ion-md-person"></i>Alex</li>
								<li><i class="icon ion-md-calendar"></i>August 1, 2018</li>
							</ul>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem...</p>
							<a href="#">Read More<i class="icofont-long-arrow-right"></i></a>
						</div>
					</div>
					<div class="blog_item">
						<div class="blog_image">
							<img class="img-fluid"
								src="https://cdn.pixabay.com/photo/2015/07/09/22/45/tree-838667_960_720.jpg"
								alt="images not found"> <span><i
								class="icon ion-md-create"></i></span>
						</div>
						<div class="blog_details">
							<div class="blog_title">
								<h5>
									<a href="#">We are best for any industrial & business
										solution.</a>
								</h5>
							</div>
							<ul>
								<li><i class="icon ion-md-person"></i>Alex</li>
								<li><i class="icon ion-md-calendar"></i>August 1, 2018</li>
							</ul>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem...</p>
							<a href="#">Read More<i class="icofont-long-arrow-right"></i></a>
						</div>
					</div>
					<div class="blog_item">
						<div class="blog_image">
							<img class="img-fluid"
								src="https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_960_720.jpg"
								alt="images not found"> <span><i
								class="icon ion-md-create"></i></span>
						</div>
						<div class="blog_details">
							<div class="blog_title">
								<h5>
									<a href="#">We are best for any industrial & business
										solution.</a>
								</h5>
							</div>
							<ul>
								<li><i class="icon ion-md-person"></i>Alex</li>
								<li><i class="icon ion-md-calendar"></i>August 1, 2018</li>
							</ul>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem...</p>
							<a href="#">Read More<i class="icofont-long-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section>
		<h1 style="text-align: center;">Contact us</h1><br><br>
		<div class="container">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.9665602215405!2d126.89660961519179!3d37.48511547981327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9e3ac6500f81%3A0x9c30e9fbc9189200!2z7ZWc6rWt7KCV67O06riw7Iig7Jew6rWs7JuQ!5e0!3m2!1sko!2skr!4v1598426938539!5m2!1sko!2skr"
				width="100%" height="450" frameborder="0" style="border: 0;"
				allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div>
		
	</section>
	<br><br>





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
	
	
	<form  action="${pageContext.request.contextPath}/UploadController" method="post"
	enctype="multipart/form-data">

        file: <input type="file" name="file"><br>
        <input type="submit" value="file upload">
    </form>
	
	<img src="./upload/grim.png" style="margin-top:10px;" width=150 height=150></img>
	
	
	<%@ include file="view/common/footer.jsp"%>
	
	
	
	
	

</body>
</html>
