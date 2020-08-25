<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/default.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/resources/fonts.css"
	rel="stylesheet" type="text/css" media="all" />
</head>
<body>

	<div id="header-wrapper"
		style="background-color: #FFBFAB; border-top: #FFBFAB;">
		<div id="header" class="container">
			<div id="logo">
				<h1 style="background-color: #FFBFAB">
					<a href="<%=request.getContextPath()%>/index.jsp"><img
						src="<%=request.getContextPath()%>/resources/images/logo_5.png"
						width="40%" height="40%"></a>
				</h1>
			</div>
			<div id="menu">
				<ul>
					<li class="active"><a href="#" accesskey="1"
						style="background-color: #FFBFAB; color: #625772" title="">클렌징</a></li>
					<li class="active"><a href="#" accesskey="2"
						style="background-color: #FFBFAB; color: #625772" title="">스킨케어</a></li>
					<li class="active"><a href="#" accesskey="3"
						style="background-color: #FFBFAB; color: #625772" title="">메이크업</a></li>
					<li class="active"><a href="#" accesskey="4"
						style="background-color: #FFBFAB; color: #625772" title="">바디케어</a></li>
					<c:if test="${empty sessionScope.session }">
						<li class="active"><a
							href="${pageContext.request.contextPath }/view/user/login.jsp"
							accesskey="5" style="background-color: #FFBFAB; color: #625772"
							title="">로그인</a></li>
						<li class="active"><a
							style="background-color: #FFBFAB; color: #625772"
							href="${pageContext.request.contextPath }/view/user/register.jsp"
							accesskey="5" title="">회원가입</a></li>
					</c:if>
					<c:if test="${!empty sessionScope.session }">
						<li class="active"><a
							href="${pageContext.request.contextPath }/view/user/login.jsp"
							accesskey="5" style="background-color: #FFBFAB; color: #625772"
							title="">로그아웃</a></li>
						<li class="active"><a
							style="background-color: #FFBFAB; color: #625772"
							href="${pageContext.request.contextPath }/view/user/register.jsp"
							accesskey="5" title="">내 찜목록</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>