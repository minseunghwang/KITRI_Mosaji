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
<script type="text/javascript">
	function register() {
		location.href="register.jsp";
	}
	
	
</script>
</head>
<body>
	<div class="contrainer">
		<div class="offset-md-3 col-md-6">
			<form name="f"
				action="${pageContext.request.contextPath }/LoginController"
				method="post">
				<div class="offset-md-3 col-md-6">
					<div class="col-md-6">
						<label for="u_id">I D </label>
					</div>
					<div class="col-md-6">
						<input type="text" id="u_id" name="u_id" placeholder="아이디를 입력해주세요">
					</div>
				</div>
				<div class="offset-md-3 col-md-6">
					<div class="col-md-6">
						<label for="u_pw">PW</label>
					</div>
					<div class="col-md-6">
						<input type="password" id="u_pw" name="u_pw"
							placeholder="비밀번호를 입력해주세요">
					</div>
				</div>
				<br><br>
				<div class="offset-md-3 col-md-6">
					<input type="submit" value="로그인"> 
					<input type="button" value="회원가입" onclick="register()">
				</div>
			</form>
		</div>
	</div>

</body>
</html>