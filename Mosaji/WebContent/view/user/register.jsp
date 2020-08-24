<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="offset-md-3 col-md-6">
			<div class="col-md-6">
				<label for="u_id">ID</label>
			</div>
			<div class="col-md-6">
				<input type="text" id="u_id" name="u_id">
			</div>
			
			<div class="col-md-6">
				<label for="u_pw">PW</label>
				
			</div>
			<div class="col-md-6">
				<input type="password" id="u_pw" name="u_pw">
			</div>
			<div class="col-md-6">
				<input type="radio" name="u_skintype" id="u_skintype" value="지성">지성
				<input type="radio" name="u_skintype" id="u_skintype" value="건성">건성
				<input type="radio" name="u_skintype" id="u_skintype" value="지성">지성
				<input type="radio" name="u_skintype" id="u_skintype" value="복합성">복합성
				<input type="radio" name="u_skintype" id="u_skintype" value="민감성">민감성
			</div>
		</div>
		

	</div>
</body>
</html>