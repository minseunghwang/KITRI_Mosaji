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
			confirm("삭제 하시겠습니까?");
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
	<h3 style="text-align: center; margin-top: 5%;">회원 관리</h3>
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
						<tr>
							<th scope="row">${status.count }</th>
							<td>${user.u_id }</td>
							<td>${user.u_name }</td>
							<td><form action="${pageContext.request.contextPath }/GetUserController" method="post">
								<input type="submit" class="btn btn-secondary btn-lg" value="수정">
									<input type="hidden" value="${user.u_id }" id="u_id" name="u_id">
									</form></td>
									
							<td><form name="delFrm" id="delFrm" action="${pageContext.request.contextPath }/AdminDelUserController" method="post">
							<input type="submit" name="delBtn"id="delBtn" class="btn btn-secondary btn-lg" value="삭제" onclick="confirm('정말 삭제하시겠습니까?')" >
							<input type="hidden" value="${user.u_id }" id="u_id" name="u_id">
							</form></td>
							
						</tr>
						
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>