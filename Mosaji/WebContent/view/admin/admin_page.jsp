<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$('#exampleModal').on('show.bs.modal', function(event) {
		var button = $(event.relatedTarget) // Button that triggered the modal
		var recipient = button.data('whatever') // Extract info from data-* attributes
		// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		var modal = $(this)
		modal.find('.modal-title').text('New message to ' + recipient)
		modal.find('.modal-body input').val(recipient)
	})
</script>
<script>
	function goUpdate() {
		location.href="${pageContext.request.contextPath}/GetUserController";
	}
	
	window.onload = function() {
		document.getElementById('delBtn').onclick = function() {
			var result = confirm("삭제 하시겠습니까?");
			if(result == true) {
			document.getElementById('delFrm').submit();
			return false;
			}
			else if(result == false) {
				return true;
			}
		}
	}
</script>
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="alert alert-secondary" role="alert"></div>
	
	<h3 style="text-align: center; backgroud-color: gainsboro; height: 110px; margin-top: 1.5%; line-height: 2; font-size: 3rem; color: #625772;">
				회원관리</h3>
	
<!-- 	<h3 style="text-align: center; margin-top: 5%;">회원 관리</h3> -->
	<div class="container">
		<div class="row">
			<table class="table table-hover" style="text-align:center;">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">수정</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${user }" varStatus="status">
						<c:if test="${user.u_id ne 'admin'}">
						<tr>
							<th scope="row" style="text-align:center; vertical-align:middle;">${status.count }</th>
							<td style="text-align:center; vertical-align:middle;" >${user.u_id }</td>
							<td style="text-align:center; vertical-align:middle;" >${user.u_name }</td>
							<td style="text-align:center; vertical-align:middle;" ><form action="${pageContext.request.contextPath }/GetUserController" method="post">
								<input type="submit" class="btn btn-secondary btn-lg" value="수정">
									<input type="hidden" value="${user.u_id }" id="u_id" name="u_id">
									</form></td>
									
							<td style="text-align:center; vertical-align:middle;" >
								<form name="delFrm" id="delFrm" action="${pageContext.request.contextPath }/AdminDelUserController" method="post">
									<input type="submit" name="delBtn"id="delBtn" class="btn btn-secondary btn-lg" value="삭제" onclick="confirm('정말 삭제하시겠습니까?')" >
									<input type="hidden" value="${user.u_id }" id="u_id" name="u_id">
								</form>
							</td>
						</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
<div class="p-3 mb-2 bg-white text-dark"></div>
	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>
