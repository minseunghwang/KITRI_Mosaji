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
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="container">
      <div class="row" style="position: relative;">
         <div class="col-lg-1"></div>
         <!-- /.col-lg-3 -->

         <div class="col-lg-9" style="text-align: center;">
            <div id="carouselExampleIndicators" class="carousel slide my-4"
               data-ride="carousel" style="text-align: -webkit-center;">

               <div class="card-body col-lg-5">



                  <h3 style="text-align: center;"> 정보 수정</h3>


                  <form method="post" action="${pageContext.request.contextPath }/UpdateController"
                     onsubmit="return check_input();">
                     <div class="form-group">
                        <input type="text" class="form-control"
                          	 id="u_id" name="u_id" value="${sessionScope.flag }" 
                           maxlength="20" readonly>
                     </div>

                     <div class="form-group">
                        <input type="password" class="form-control"
                            id="u_pw" name="u_pw" value="${u.u_pw }"
                           maxlength="20">
                     </div>
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="이름"
                           name="u_name" id="u_name" maxlength="20">
                     </div>

                     <div class="form-group" style="text-align: center;">
                        <div class="btn-group" data-toggle="buttons">
                           <label class="btn btn-secondary">
                              <input type="radio"   name="u_gender" autocomplete="off" value="남자">남자</label>
                           <label class="btn btn-secondary">
                              <input type="radio" name="u_gender" autocomplete="off" value="여자">여자</label>
                        </div>
                     </div>
                     <div class="form-group">
                        <input type="text" class="form-control" value="${u.u_age }"
                           id="u_age" name="u_age" maxlength="20">
                     </div>

                     
                     
                     <div>
                        <select id="selectBox" name="u_skintype" id="u_skintype"
                           style="margin-bottom: 15px; width:100%;">
                           <option value="">피부타입 선택하기</option>
                           <option value="건성">건성</option>
                           <option value="지성">지성</option>
                           <option value="중성">중성</option>
                           <option value="복합성">복합성</option>
                           <option value="민감성">민감성</option>
                           
                        </select>
                     </div>
					 <input type="hidden" id="u_like_item" name="u_like_item" value="0">
                     <input type="submit" class="btn btn-secondary form-control"
                        value="회원가입">
                  </form>
               </div>
            </div>
         </div>
      </div>

      <!-- /.col-lg-9 -->

      <div class="col-lg-1"></div>
   </div>
	<%@ include file="/view/common/footer.jsp"%>

</body>
</html>