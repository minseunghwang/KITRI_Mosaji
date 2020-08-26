<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script type="text/javascript">
	function register() {
		console.log('회원가입 쪽갈겅미');
		alert('회원가입 페이지출력');
		location.href = "register.jsp";
		
	}
</script>
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	
	<!--  긁어옴 -->
	<div class="container">
		<div class="row" style="position: relative; top: 100px;">
			<div class="col-lg-1"></div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9" style="text-align: center";>

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel" style="text-align: -webkit-center;">
					<img src="<%=request.getContextPath()%>/resources/images/logo_5.png" style="width: 20%; height: 20%;">
					<div class="card-body col-lg-5">
						<form method="post" action="${pageContext.request.contextPath }/LoginController">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="아이디"
									name="u_id" maxlength="20">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="비밀번호"
									name="u_pw" maxlength="20">
							</div>
							<input type="submit" class="btn btn-secondary form-control"
								value="로그인" style="margin-top: 10px";>
						</form>
						<form method="post" action="register.jsp">
							<input type="submit" class="btn btn-secondary form-control"
								value="회원가입" style="margin-top: 10px";>
						</form>
					</div>

				</div>
			</div>


	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>