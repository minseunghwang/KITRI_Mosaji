<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>





<link href="<%=request.getContextPath()%>/resources/default.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/resources/fonts.css"
	rel="stylesheet" type="text/css" media="all" />


</head>


<body>
	<input type="hidden" value="${sessionScope.u_name }">
	<input type="hidden" value="${sessionScope.u_id }"/>
	<div id="header-wrapper"  style="background-color: #FFBFAB" >
		<div id="header" class="container">
			<div id="logo">
				<h1>
					<a href="<%=request.getContextPath()%>/index.jsp"><img
						src="<%=request.getContextPath()%>/resources/images/logo_5.png"
						width="40%" height="40%"></a>
				</h1>
			</div>
			<div id="menu">
				<ul>




					<c:if test="${empty sessionScope.u_id }">
						<li class="active"><a
							href="${pageContext.request.contextPath }/view/user/login.jsp"
							accesskey="5" style="background-color: #FFBFAB; color: #625772"
							title="">로그인</a></li>
						<li class="active"><a
							style="background-color: #FFBFAB; color: #625772"
							href="${pageContext.request.contextPath }/view/user/register.jsp"
							accesskey="5" title="">회원가입</a></li>
					</c:if>

	

					<c:if test="${not empty sessionScope.u_id }">

						<li class="active"><a
							href="${pageContext.request.contextPath }/LogoutController"
							accesskey="5" style="background-color: #FFBFAB; color: #625772"
							title="">로그아웃</a></li>

					<li class="active"><a
							href="${pageContext.request.contextPath }/UpdateGetController"	
							accesskey="5" style="background-color: #FFBFAB; color: #625772"
							title="">내정보수정</a></li>
					<li class="active"><a
							href="${pageContext.request.contextPath }/WishlistController"	
							accesskey="5" style="background-color: #FFBFAB; color: #625772"
							title="">내 찜 목록</a></li>
					<li class="active"><a
							href="${pageContext.request.contextPath }/MyReviewController"	
							accesskey="5" style="background-color: #FFBFAB; color: #625772"
							title="">내가 쓴 리뷰</a></li>					
					</c:if>
					
				</ul>
			</div>
		</div>
	</div>
	
	
</body>
</html>
