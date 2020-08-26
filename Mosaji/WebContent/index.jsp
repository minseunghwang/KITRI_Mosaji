<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/default.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath }/resources/fonts.css"
	rel="stylesheet" type="text/css" media="all" />

</head>




<script src="http://code.jquery.com/jquery-3.3.1.js"></script>

<script type="text/javascript">
	$(function() {

		$('#i_category1').change(function() {

			var face = [ "파운데이션", "컨실러", "베이스", "BB크림" ];

			var skincare = [ "스킨", "로션", "에센스", "크림" ];

			var changeItem;

			if (this.value == "face") {

				changeItem = face;

			} else if (this.value == "skincare") {

				changeItem = skincare;

			}

			$('#i_category2').empty();

			for (var count = 0; count < changeItem.length; count++) {

				var option = $("<option>" + changeItem[count] + "</option>");

				$('#i_category2').append(option);

			}

		});

	});
</script>

<body style="background: white;">

	<%@ include file="view/common/header.jsp"%>

	<div id="wrapper" style="background: #FFBFAB;">
		<div id="staff" class="container">
			<div class="title">
				<h2 style="color: #625772">당신의 고민을 해결해주는, 뭐사지 !</h2>
				<span style="font-size: 20px; color: #7F7F7F;"> 연령대, 성별,
					피부타입에 따라 추천받아보세요 </span>
			</div>




			<form method="post" action="${pageContext.request.contextPath }/#">
				<div class="row" style="margin-top: 50px;">
					<div class="col">
						<select class="custom-select" id="i_category1">
							<option value="">뷰티 카테고리</option>
							<option value="face">페이스 메이크업</option>
							<option value="skincare">스킨케어</option>
							<option value="lip">립메이크업</option>
						</select>
					</div>

					<div class="col">
						<select class="custom-select" id="i_category2">
							<option value=""></option>
						</select>
					</div>
					<div class="col">
						<button type="submit" class="btn btn-secondary"
							style="width: 50%;">화장품 검색</button>
					</div>
				</div>
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











	<%@ include file="view/common/footer.jsp"%>
</body>
</html>