<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById('formBtn').onclick = function() {
			document.getElementById('updateFrm').submit();

			alert('수정이 완료되었습니다.');
			return false;
		}
	}
</script>
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="alert alert-secondary" role="alert"></div>
	<div class="container" style="min-height: 610px; margin-top: 30px;">
		<div class="row" style="position: relative;">
			<div class="col-lg-1"></div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9" style="text-align: center;">
				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel" style="text-align: -webkit-center;">
					<div class="card-body col-lg-5">
						<h3 style="text-align: center;">정보 수정</h3>
						<form id="updateFrm" method="post"
							action="${pageContext.request.contextPath }/UpdateUserController">
							<div class="form-group">
								<input type="text" class="form-control" id="u_id" name="u_id"
									value="${u.u_id}" maxlength="20" readonly>
							</div>

							<div class="form-group">
								<input type="password" class="form-control" id="u_pw"
									name="u_pw" value="${u.u_pw }" maxlength="20">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" value="${u.u_name }"
									name="u_name" id="u_name" maxlength="20">
							</div>

							<div class="form-group" style="text-align: center;">
								<div class="btn-group" data-toggle="buttons">
									<c:if test="${u.u_gender == '남자' }">
									<label class="btn btn-secondary"> <input type="radio"
										name="u_gender" autocomplete="off" value="남자" checked="checked">남자
									</label> <label class="btn btn-secondary"> <input type="radio"
										name="u_gender" autocomplete="off" value="여자">여자
									</label>
								</c:if>
								<c:if test="${u.u_gender == '여자' }">
									<label class="btn btn-secondary"> <input type="radio"
										name="u_gender" autocomplete="off" value="남자">남자
									</label> <label class="btn btn-secondary"> <input type="radio"
										name="u_gender" autocomplete="off" value="여자" checked="checked">여자
									</label>
								</c:if>
								</div>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" value="${u.u_age }"
									id="u_age" name="u_age" maxlength="20">
							</div>



							<div class="form-group">
								<select class="form-control" name="u_skintype" id="u_skintype">
									<option value=""  disabled selected hidden >피부타입 선택하기</option>
									<c:if test="${u.u_skintype == '건성' }">
									<option value="건성" selected>건성</option>
									<option value="지성">지성</option>
									<option value="중성">중성</option>
									<option value="복합성">복합성</option>
									<option value="민감성">민감성</option>
									</c:if>
									<c:if test="${u.u_skintype == '지성' }">
									<option value="건성">건성</option>
									<option value="지성" selected>지성</option>
									<option value="중성">중성</option>
									<option value="복합성">복합성</option>
									<option value="민감성">민감성</option>
									</c:if>
									<c:if test="${u.u_skintype == '중성' }">
									<option value="건성">건성</option>
									<option value="지성">지성</option>
									<option value="중성" selected>중성</option>
									<option value="복합성">복합성</option>
									<option value="민감성">민감성</option>
									</c:if>
									<c:if test="${u.u_skintype == '복합성' }">
									<option value="건성">건성</option>
									<option value="지성">지성</option>
									<option value="중성">중성</option>
									<option value="복합성" selected>복합성</option>
									<option value="민감성">민감성</option>
									</c:if>
									<c:if test="${u.u_skintype == '민감성' }">
									<option value="건성">건성</option>
									<option value="지성">지성</option>
									<option value="중성">중성</option>
									<option value="복합성">복합성</option>
									<option value="민감성" selected>민감성</option>
									</c:if>
								</select>
							</div>

							<input type="hidden" id="u_like_item" name="u_like_item"
								value="0"> <input type="button" id="formBtn"
								class="btn btn-secondary form-control" value="정보수정">

						</form>
						<br>
						
					</div>
				</div>
			</div>
		</div>

		<!-- /.col-lg-9 -->

		<div class="col-lg-1"></div>
	</div>
	<div class="p-3 mb-2 bg-white text-dark"></div>
	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>