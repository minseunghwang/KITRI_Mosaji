<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

[
<c:forEach var="i" items="${item }" varStatus="status">
	<c:if test="${not status.first }">
	,
	</c:if>
	{"i_no" : ${i.i_no }, "i_name" : "${i.i_name }", "i_volume" : "${i.i_volume }", "i_category1" : "${i.i_category1 }", "i_category2" : "${i.i_category2 }", "i_content" : "${i.i_content }", "i_brand" : "${i.i_brand }", "i_gender" : "${i.i_gender }", "i_age" : ${i.i_age }, "i_skintype" : "${i.i_skintype }", "i_price" : ${i.i_price }, "i_star" : ${i.i_star }, "i_img" : "${i.i_img }", "review_cnt": "${i.review_cnt }"}
</c:forEach>
]