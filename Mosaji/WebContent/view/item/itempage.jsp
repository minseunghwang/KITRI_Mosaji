<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!---- css ---->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

</head>

<body>
	<%@ include file="/view/common/header.jsp"%>

<div class="card mb-3">
  <h3 class="card-header" style="text-align: center;"> 
  		<!-- <a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: #625772;" >${wishlist.i_name }</a> --> 일단 제품이름</h3>
  <div class="card-body">
    <h5 class="card-title">브랜드</h5>
    <h6 class="card-subtitle text-muted">용량/가격</h6>
  </div>
  <img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">
  
  <div class="card-body">
    <p class="card-text">제품설명</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">추천연령/성별</li>
    <li class="list-group-item">추천피부타입</li>
    <li class="list-group-item">리뷰평점</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">네이버검색링크</a>
    <a href="#" class="card-link">네이버상점링크</a>
  </div>
  <div class="card-footer text-muted">
    이건 뭘로하지
  </div>
</div>

<div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>

<h1>이것은...흠.. 고민..아마 리뷰?</h1>

<div class="card">
  <div class="card-body">
    <h4 class="card-title">유저 나이 피부타입 성별</h4>
    <h6 class="card-subtitle mb-2 text-muted">별점</h6>
    <p class="card-text">상세리뷰</p>
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>

<%@ include file="/view/common/footer.jsp"%>

</body>
</html>