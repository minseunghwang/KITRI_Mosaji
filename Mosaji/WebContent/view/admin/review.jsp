<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script>
$(document).ready(function() {

	var review_str = "";
	$("#del_btn").click(function() {
		var confirmflag = confirm("ㄹㅇ 삭제 할껴?");
		if(confirmflag){
			$("input[name=del]:checked").each(function() {
				
				review_str += ($(this).val());
				review_str += ",";
			});
			
			location.href = "/Mosaji/AllDeleteReviewController?review_str="+review_str;
		}
	});
	
	
});
</script>
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="container">
		<h3 style="text-align: center; margin-top: 5%">리뷰 관리</h3>
		<div class="row">
			<table class="table" style="table-layout: fixed">
				<thead>
					<tr style="text-align:center;">
						<th scope="col">번호</th>
<!-- 						<th scope="col">상품 이미지</th> -->
						<th scope="col">상품 이름</th>
						<th scope="col">리뷰 내용</th> 
						<th scope="col">평점</th>
						<th scope="col">등록일</th>
						<th scope="col" >삭제</th>
					</tr>
				</thead>
				<tbody style="text-align:center;">
					<c:forEach var="review" items="${review }" varStatus="status">
						<tr>
<%-- 							<td>${myreview.rownum }</td> --%>
							<td style="vertical-align: middle; text-align: center;">${status.count }</td>
<%-- 							<td><a href="/Mosaji/ItemDetailController?i_no=${review.i_no}"><img src="${review.i_img }"></a></td> --%>
							<td style="vertical-align: middle; text-align:left;"><a href="/Mosaji/ItemDetailController?i_no=${review.i_no}">${review.i_name }</a></td>
							<td style="vertical-align: middle; text-overflow:ellipsis; overflow:hidden; white-space: pre; text-align:left;"><a href="/Mosaji/ItemDetailController?i_no=${review.i_no}">${review.r_content }</a></td>
<%-- 							<td><a href="/Mosaji/ItemDetailController?i_no=${myreview.i_no}">${myreview.r_star }</a></td> --%>
							<td style="vertical-align: middle; text-align: center;"><a href="/Mosaji/ItemDetailController?i_no=${review.i_no}">
				<c:choose>
					<c:when test="${review.r_star == 5 }">
						<img
							src="${pageContext.request.contextPath }/resources/images/star5.png"
							style="width: 140px;">
					</c:when>
					<c:when test="${review.r_star == 4 }">
						<img
							src="${pageContext.request.contextPath }/resources/images/star4.png"
							style="width: 140px;">
					</c:when>
					<c:when test="${review.r_star == 3 }">
						<img
							src="${pageContext.request.contextPath }/resources/images/star3.png"
							style="width: 140px;">
					</c:when>
					<c:when test="${review.r_star == 2 }">
						<img
							src="${pageContext.request.contextPath }/resources/images/star2.png"
							style="width: 140px;">
					</c:when>
					<c:when test="${review.r_star == 1 }">
						<img
							src="${pageContext.request.contextPath }/resources/images/star1.png"
							style="width: 140px;">
					</c:when>
				</c:choose>
							</a></td>
							<td style="text-align:center; vertical-align:middle;">${review.r_date }</td>
							<td style="text-align:center; vertical-align:middle;"><input type="checkBox" name="del" value="${review.r_no }"></td>							
						</tr>
					</c:forEach>
				</tbody>


			</table>
			
		</div>
		<button id="del_btn"
				class="btn btn-primary"	style="float: right; margin-top: 10px; margin-right: 10px; margin-bottom: 10%;">삭제</button>
	</div>
	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>