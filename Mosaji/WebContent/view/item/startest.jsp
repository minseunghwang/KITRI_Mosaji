<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
h2 {font-size:15px;}
.star-rating {width:304px; }
.star-rating,.star-rating span {display:inline-block; height:55px; overflow:hidden; background:url(${pageContext.request.contextPath}/resources/images/star.png)no-repeat; }
.star-rating span{background-position:left bottom; line-height:0; vertical-align:top; }
</style>


</head>
<body>
<div class="wrap-star">
    <h2>Width="50%"</h2>
    <div class='star-rating'>
        <span style ="width:50%"></span>
    </div>
</div>
</body>
</html>