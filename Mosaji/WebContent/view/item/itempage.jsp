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

	<div class="container">
		<h3 class="card-header"
			style="text-align: center; background-color: white;">
			<!-- <a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: #625772;" >${wishlist.i_name }</a> -->
			일단 제품이름
		</h3>

		<div class="vw">
			<img style="height: 300px; width: 100%; display: block;"
				src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
				alt="Card image">
		</div>

		<!-- 		<div class="card-body"> -->
		<!-- 			<h4 class="card-title">상품 이름(브랜드)</h4> -->
		<!-- 			<h6 class="card-subtitle text-muted">용량/가격</h6> -->
		<!-- 			<h7 class="card-subtitle text-muted">카페고리1/카테고리2</h7> -->
		<!-- 		</div> -->

		<!-- 		<div class="card-text"> -->
		<!-- 			<a>제품설명</a> -->
		<!-- 		</div> -->

		<!-- 		<div class="card-body"> -->
		<!-- 			<a href="#" class="card-link">네이버검색링크</a> <a href="#" -->
		<!-- 				class="card-link">네이버상점링크</a> -->
		<!-- 		</div> -->

		<!-- 	<div class="vw"> -->
		<div class="card-body">
			<h4 class="card-title">상품이름 : {상품이름(브랜드)}</h4>
			<h6 class="card-subtitle mb-2 text-muted">카테고리 : {카테고리1/카테고리2}</h6>
			<h6 class="card-subtitle mb-2 text-muted">용량/가격 : {용량/가격}</h6>
			<p class="card-text">제품설명 : {제품설명 지울수도 있음}</p>

			<button type="button" class="btn btn-secondary">찜하기</button>
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
				<li class="list-group-item">추천연령/성별</li>
				<li class="list-group-item">추천피부타입</li>
				<li class="list-group-item">리뷰평점</li>
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
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">제목</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="form-group">
						<select class="custom-select">
							<option selected="">---별점---</option>
							<option value="1">❤
							<option value="2">❤❤</option>
							<option value="3">❤❤❤</option>
							<option value="4">❤❤❤❤</option>
							<option value="5">❤❤❤❤❤</option>
						</select>
					</div>

					<div class="modal-body">
						<p>작성내용</p>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary">저장</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
					</div>
				</div>
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
					<option selected="">---피부타입---</option>
					<option value="1">건성</option>
					<option value="2">중성</option>
					<option value="3">지성</option>
					<option value="4">복합성</option>
					<option value="5">민감성</option>
				</select>
			</div>

			<div class="form-group sel">
				<select class="custom-select sel">
					<option selected="">---연령---</option>
					<option value="1">10대</option>
					<option value="2">20대</option>
					<option value="3">30대</option>
					<option value="4">40대</option>
				</select>
			</div>

			<div class="form-group sel">
				<select class="custom-select sel">
					<option selected="">---성별---</option>
					<option value="1">여자</option>
					<option value="2">남자</option>
				</select>
			</div>

			<button type="button" class="btn btn-outline-light sel"
				style="background-color: darkgrey;">검색</button>

			<div class="form-group sel">
				<select class="custom-select sel">
					<option selected="">---정렬---</option>
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


	<div class="card-body">
		<h4 class="card-title">상품이름 : {상품이름(브랜드)}</h4>
		<h6 class="card-subtitle mb-2 text-muted">카테고리 : {카테고리1/카테고리2}</h6>
		<h6 class="card-subtitle mb-2 text-muted">용량/가격 : {용량/가격}</h6>
		<p class="card-text">제품설명 : {제품설명 지울수도 있음}</p>

		<button type="button" class="btn btn-secondary">찜하기</button>
		<button type="button" class="btn btn-secondary">네이버검색</button>
		<button type="button" class="btn btn-secondary">네이버상점검색</button>

		<a href="#" class="card-link">찜하기</a> <a href="#" class="card-link">네이버검색링크</a>
		<a href="#" class="card-link">네이버상점링크</a>
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



	<%@ include file="/view/common/footer.jsp"%>

</body>
</html>