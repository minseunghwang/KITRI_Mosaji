<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/resources/fonts.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript">
   var selectBox = document.getElementById("selectBox");
   var selectedValue = selectBox.options[selectBox.selectedIndex].value;
   alert(selectedValue);

</script>

</head>
<body>
<%@ include file="/view/common/header.jsp"%>

	
	<!--  긁어옴 -->
	<div class="container">
      <div class="row" style="position: relative;">
         <div class="col-lg-1"></div>
         <!-- /.col-lg-3 -->

         <div class="col-lg-9" style="text-align: center;">
            <div id="carouselExampleIndicators" class="carousel slide my-4"
               data-ride="carousel" style="text-align: -webkit-center;">

               <div class="card-body col-lg-5">



                  <h3 style="text-align: center;">상품 업로드</h3>


                  <form method="post" action="${pageContext.request.contextPath }/UploadController">
                     <div class="form-group">
                        <input type="text" class="form-control"
                           placeholder="상품이름" id="i_name" name="i_name">
                     </div>

                     <div class="form-group">
                        <input type="text" class="form-control"
                           placeholder="용량" id="i_volume" name="i_volume">
                     </div>
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="카테고리1"
                           name="i_category1" id="i_category1">
                     </div>
                     
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="카테고리2"
                           name="i_category2" id="i_category2">
                     </div>
                     
                   	<div class="form-group">
                        <input type="text" class="form-control" placeholder="상품설명"
                           name="i_content" id="i_content">
                     </div>
                     
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="브랜드"
                           name="i_brand" id="i_brand">
                     </div>

                     <div class="form-group" style="text-align: center;">
                        <div class="btn-group" data-toggle="buttons">
                           <label class="btn btn-secondary">
                              <input type="radio"   name="i_gender" autocomplete="off" value="남자">남자</label>
                           <label class="btn btn-secondary">
                              <input type="radio" name="i_gender" autocomplete="off" value="여자">여자</label>
                        </div>
                     </div>
                     
                     
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="나이"
                           id="i_age" name="i_age" maxlength="20">
                     </div>
                     
                   <div class="form-group">
                        <input type="text" class="form-control" placeholder="스킨타입"
                           id="i_skintype" name="i_skintype">
                     </div>
                     
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="가격"
                           id="i_price" name="i_price" maxlength="20">
                     </div>
                     
                       <div class="form-group">
                        <input type="text" class="form-control" placeholder="이미지"
                           id="i_img" name="i_img" >
                     </div>
                     
                
                     <input type="submit" class="btn btn-secondary form-control" value="등록">
                  </form>
               </div>
            </div>
         </div>
      </div>

      <!-- /.col-lg-9 -->

      <div class="col-lg-1"></div>
   </div>
   <!-- /.row -->
	
	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>