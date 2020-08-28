<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.msj {
	float: left;
	width: 30%;
}

.vw {
	float: left;
}

.pp {
	float: left;
}

.sel {
	float: left;
}
</style>

<!---- css ---->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

</head>

<body>

	<%@ include file="/view/common/header.jsp"%>

	<div class="alert alert-secondary" role="alert"></div>

	<div class="container">
		<h3 class="header"
			style="text-align: center; background-color: white;">
			상세페이지
		</h3>

		<div class="vw">

				<img style="height: 300px; width: 300px; display: block;"
				src="${i.i_img }"
				alt="Card image">
		</div>


		<div class="card-body">
			<h4 class="card-title">상품이름 : {${i.i_name}(${i.i_brand})}</h4>
			<h6 class="card-subtitle mb-2 text-muted">카테고리 :
				{${i.i_category1}/${i.i_category2}}</h6>
			<h6 class="card-subtitle mb-2 text-muted">용량/가격 :
				{${i.i_volume}/${i.i_price}}</h6>
			<p class="card-text">제품설명 : {${i.i_brand}의 ${i.i_category2} }</p>

			<form
				action="${pageContext.request.contextPath }/AddWishlistController">
				<input type="hidden" name="i_no" id="i_no" value="${i.i_no }">
				<button type="button" class="btn btn-secondary">찜하기</button>

			</form>
			<button type="button" class="btn btn-secondary">네이버검색</button>
			<button type="button" class="btn btn-secondary">네이버상점검색</button>
		</div>

		<div class="card-body1">
			<button type="button" class="btn btn-outline-secondary"
				onclick="window.open('https://search.shopping.naver.com/search/all?query=${i.i_name}&cat_id=&frm=NVSHATC') ">네이버
				쇼핑연결</button>
			<button type="button" class="btn btn-outline-info"
				onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=${i.i_brand}') ">브랜드
				명으로 검색하기</button>
			<button type="button" class="btn btn-outline-danger">찜하기</button>
		</div>
		<!-- 	</div> -->

		<div class="card-body2">
			<ul class="list-group list-group-flush vw">
				<li class="list-group-item">추천연령/성별:</li>
				<li class="list-group-item">추천피부타입:</li>
				<li class="list-group-item">리뷰평점:</li>
			</ul>
			<ul class="list-group list-group-flush vw">
				<li class="list-group-item">${i.i_age }대/ ${i.i_gender }</li>
				<li class="list-group-item">${i.i_skintype }</li>
				<li class="list-group-item">${i.i_star }</li>
			</ul>
		</div>

		<div class="container">
			<h3 class="card-header"
				style="text-align: center; background-color: white;">
				<!-- <a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: #625772;" >${wishlist.i_name }</a> -->
				리뷰
			</h3>
		</div>




		<div class="container">
			<div class="rww" role="document">
				<form method="post" action="${pageContext.request.contextPath }/AddReviewController">
				<div class="col-md-12">
					<div class="form-group">
								<select class="custom-select" id="r_star" name="r_star">
									<option selected="">---별점---</option>
									<option value="1">❤
									<option value="2">❤❤</option>
									<option value="3">❤❤❤</option>
									<option value="4">❤❤❤❤</option>
									<option value="5">❤❤❤❤❤</option>
								</select>
							</div>
				</div>
				<div class="col-md-12">
					<textarea rows="10" cols="100%" name="r_content" id="r_content"></textarea>
					<input type="hidden" value="${i.i_no }" name="i_no" id="i_no" />
				</div>
				<div class="col-md-12">
					<input type="submit" class="btn btn-primary" value="등록"
						style="width: 33%; float: right; margin-right: 15%;" />
				</div>
				</form>
			</div>
		</div>

		<!-- 		<div class="card-footer text-muted vw">이건 뭘로하지</div> -->
	</div>

	<!-- 	<div class="container"> -->
	<!-- 		<ul class="nav nav-pills"> -->
	<!-- 			<li class="nav-item"><a class="nav-link active" href="#">Active</a> -->
	<!-- 			</li> -->
	<!-- 			<li class="nav-item dropdown"><a -->
	<!-- 				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" -->
	<!-- 				role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a> -->
	<!-- 				<div class="dropdown-menu"> -->
	<!-- 					<a class="dropdown-item" href="#">Actㅋㅋion</a> <a -->
	<!-- 						class="dropdown-item" href="#">Anㅋother action</a> <a -->
	<!-- 						class="dropdown-item" href="#">Sometㄹㅊhing else here</a> -->
	<!-- 					<div class="dropdown-divider"></div> -->
	<!-- 					<a class="dropdown-item" href="#">Separateㅇㅎd link</a> -->
	<!-- 				</div></li> -->
	<!-- 			<li class="nav-item"><a class="nav-link" href="#">Link</a></li> -->
	<!-- 			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a> -->
	<!-- 			</li> -->
	<!-- 		</ul> -->
	<!-- 	</div> -->

	<div class="container">
		<div class="container sel">
			<div class="form-group sel">
				<select class="custom-select sel">
					<option selected="" disabled selected hidden>---피부타입---</option>
					<option value="1">건성</option>
					<option value="2">중성</option>
					<option value="3">지성</option>
					<option value="4">복합성</option>
					<option value="5">민감성</option>
				</select>
			</div>

			<div class="form-group sel">
				<select class="custom-select sel">
					<option selected="" disabled selected hidden>---연령---</option>
					<option value="1">10대</option>
					<option value="2">20대</option>
					<option value="3">30대</option>
					<option value="4">40대</option>
				</select>
			</div>

			<div class="form-group sel">
				<select class="custom-select sel">
					<option selected="" disabled selected hidden>---성별---</option>
					<option value="1">여자</option>
					<option value="2">남자</option>
				</select>
			</div>

			<button type="button" class="btn btn-outline-light sel"
				style="background-color: darkgrey;">검색</button>

			<div class="form-group sel">
				<select class="custom-select sel">
					<option selected="" disabled selected hidden>---정렬---</option>
					<option value="1">최신순</option>
					<option value="2">오래된순</option>
				</select>
			</div>

			<button type="button" class="btn btn-outline-light sel"
				style="background-color: darkgrey;">검색</button>
		</div>
	</div>

	<div class="container">
		<a>건성(리뷰수)</a>
		<div class="progress">
			<div class="progress-bar progress-bar-striped" role="progressbar"
				style="width: 10%" aria-valuenow="10" aria-valuemin="0"
				aria-valuemax="100"></div>
		</div>
		<a>중성</a>
		<div class="progress">
			<div class="progress-bar progress-bar-striped bg-success"
				role="progressbar" style="width: 25%" aria-valuenow="25"
				aria-valuemin="0" aria-valuemax="100"></div>
		</div>
		<a>지성</a>
		<div class="progress">
			<div class="progress-bar progress-bar-striped bg-info"
				role="progressbar" style="width: 50%" aria-valuenow="50"
				aria-valuemin="0" aria-valuemax="100"></div>
		</div>
		<a>복합성</a>
		<div class="progress">
			<div class="progress-bar progress-bar-striped bg-warning"
				role="progressbar" style="width: 75%" aria-valuenow="75"
				aria-valuemin="0" aria-valuemax="100"></div>
		</div>
		<a>민감성</a>
		<div class="progress">
			<div class="progress-bar progress-bar-striped bg-danger"
				role="progressbar" style="width: 100%" aria-valuenow="100"
				aria-valuemin="0" aria-valuemax="100"></div>
		</div>
	</div>

	<div class="alert alert-warning" role="alert">
		<div class="container">
			<span class="badge badge-pill badge-primary">건성</span> <span
				class="badge badge-pill badge-success">중성</span> <span
				class="badge badge-pill badge-info">지성</span> <span
				class="badge badge-pill badge-warning">복합성</span> <span
				class="badge badge-pill badge-danger">민감성</span>
		</div>
	</div>


	<div class="alert alert-warning container" role="alert">
		<h4 class="alert-heading">제목</h4>
		<p> 피부타입 : 

			<span class="badge badge-pill badge-primary">건성</span> <span
				class="badge badge-pill badge-success">중성</span> <span
				class="badge badge-pill badge-info">지성</span> <span
				class="badge badge-pill badge-warning">복합성</span> <span
				class="badge badge-pill badge-danger">민감성</span> 
			/ 별점 : {1-5점}
		</p>
		<hr>
		<p class="mb-0">길어지는거 확인하자@@@@@@@@@@@리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ</p>
	</div>

<div class="alert alert-light" role="alert"></div>

	<div class="alert alert-secondary container" role="alert">
		<h4 class="alert-heading">제목</h4>
		<p> 피부타입 : 

			<span class="badge badge-pill badge-primary">건성</span> <span
				class="badge badge-pill badge-success">중성</span> <span
				class="badge badge-pill badge-info">지성</span> <span
				class="badge badge-pill badge-warning">복합성</span> <span
				class="badge badge-pill badge-danger">민감성</span> 
			/ 별점 : {1-5점}
		</p>
		<hr>
		<p class="mb-0">길어지는거 확인하자@@@@@@@@@@@리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ리뷰 상세 내용 적는곳ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
		ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄹㄴㅇㅀㄴㄹㅇㄴㅇㅎㄴㅇㅀㅇㅀㅇㅀㅇㅀㅇㅀ</p>
	</div>

<div class="alert alert-light" role="alert"></div>

	<div class="container msjj">
		<div class="card border-danger mb-3 msj" style="max-width: 20rem;">
			<div class="card-header">연령/피부타입/성별</div>
			<div class="card-body">
				<h4 class="card-title">별점</h4>
				<p class="card-text">리뷰 내용</p>
			</div>
		</div>

		<div class="card border-danger mb-3 msj" style="max-width: 20rem;">
			<div class="card-header">연령/피부타입/성별</div>
			<div class="card-body">
				<h4 class="card-title">별점</h4>
				<p class="card-text">리뷰 내용</p>
			</div>
		</div>

		<div class="card border-danger mb-3 msj" style="max-width: 20rem;">
			<div class="card-header">연령/피부타입/성별</div>
			<div class="card-body">
				<h4 class="card-title">별점</h4>
				<p class="card-text">리뷰 내용</p>
			</div>
		</div>
	</div>

	<div class="container">
		<h3 class>--------------------------------</h3>
	</div>


	<fieldset>
		<h1 class="container">필터기능??? 아오ㅡㅡ 뭘로하지</h1>
		<div class="container">
			<div class="form-group">
				<div class="custom-control custom-radio">
					<input type="radio" id="customRadio1" name="customRadio"
						class="custom-control-input" checked=""> <label
						class="custom-control-label" for="customRadio1">건성</label>
				</div>
				<div class="custom-control custom-radio">
					<input type="radio" id="customRadio2" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label" for="customRadio2">중성</label>
				</div>
				<div class="custom-control custom-radio">
					<input type="radio" id="customRadio3" name="customRadio"
						class="custom-control-input" disabled=""> <label
						class="custom-control-label" for="customRadio3">지성</label>
				</div>
			</div>
			<div class="form-group">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck1" checked=""> <label
						class="custom-control-label" for="customCheck1">10대</label>
				</div>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck2" disabled=""> <label
						class="custom-control-label" for="customCheck2">20대</label>
				</div>
			</div>
			<div class="form-group">
				<div class="custom-control custom-switch">
					<input type="checkbox" class="custom-control-input"
						id="customSwitch1" checked=""> <label
						class="custom-control-label" for="customSwitch1">복합성</label>
				</div>
				<div class="custom-control custom-switch">
					<input type="checkbox" class="custom-control-input" disabled=""
						id="customSwitch2"> <label class="custom-control-label"
						for="customSwitch2">아아아아ㅏ아</label>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group mb-3"></div>
			</div>
		</div>
	</fieldset>


<!-- 	<div class="card-body"> -->
<!-- 		<h4 class="card-title">상품이름 : {상품이름(브랜드)}</h4> -->
<!-- 		<h6 class="card-subtitle mb-2 text-muted">카테고리 : {카테고리1/카테고리2}</h6> -->
<!-- 		<h6 class="card-subtitle mb-2 text-muted">용량/가격 : {용량/가격}</h6> -->
<!-- 		<p class="card-text">제품설명 : {제품설명 지울수도 있음}</p> -->

<!-- 		<button type="button" class="btn btn-secondary">찜하기</button> -->
<!-- 		<button type="button" class="btn btn-secondary">네이버검색</button> -->
<!-- 		<button type="button" class="btn btn-secondary">네이버상점검색</button> -->

<!-- 		<a href="#" class="card-link">찜하기</a> <a href="#" class="card-link">네이버검색링크</a> -->
<!-- 		<a href="#" class="card-link">네이버상점링크</a> -->
<!-- 	</div> -->

<!-- 	<div class="card-body1"> -->
<!-- 		<button type="button" class="btn btn-outline-secondary" -->
<%-- 			onclick="window.open('https://search.shopping.naver.com/search/all?query=${i.i_name}&cat_id=&frm=NVSHATC') ">네이버 --%>
<!-- 			쇼핑연결</button> -->
<!-- 		<button type="button" class="btn btn-outline-info" -->
<%-- 			onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=${i.i_brand}') ">브랜드 --%>
<!-- 			명으로 검색하기</button> -->
<!-- 		<button type="button" class="btn btn-outline-danger">찜하기</button> -->
<!-- 	</div> -->



	<%@ include file="/view/common/footer.jsp"%>

</body>
</html>
