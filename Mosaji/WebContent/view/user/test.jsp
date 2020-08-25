<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
[
<c:forEach var="wishlist" items="${wishlist }" varStatus="status">
	
	{"1":${wishlist.w_no}, "2":"${wishlist.u_id}"}
</c:forEach>
]