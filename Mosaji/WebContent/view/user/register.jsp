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

   function check_input() {
      // 사용자가 입력한 데이터를 추출한다.
      var user_name = $("#u_name").val()
      var user_id = $("#u_id").val()
      var user_pw = $("#u_pw").val()
      var user_age = $("#u_age").val()
      var user_gender = $("#u_gender").val()
      var user_skintype = $("#u_skintype").val()

      if (user_id.length == 0) {
         alert('아이디를 입력해 주세요')
         $("#u_id").focus()
         return false
      }
      if (user_pw.length == 0) {
         alert('비밀번호를 입력해 주세요')
         $("#u_pw").focus()
         return false
      }
      if (user_name.length == 0) {
         alert("이름을 입력해 주세요")
         $("#u_name").focus()
         return false
      }
      if (user_age.length == 0) {
         alert('나이를 입력해 주세요')
         $("#u_age").focus()
         return false
      }
      if (user_gender.length == 0) {
    	  alert('성별을 선택해 주세요')
    	  $("#u_gedner").focus()
    	  return false
      }
      if (user_skintype.length == 0) {
    	  alert('피부타입을 선택해주세요')
    	  $("#u_skintype").focus()
    	  return false;
      }

      return true
   }
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		var u_id;
		$("#u_id").on("propertychange change keyup paste input",function(){
			u_id = $(this).val();
			$.ajax({
		        url: '${pageContext.request.contextPath }/IdCheckController',
		        type: 'POST',
		        contentType:"application/x-www-form-urlencoded;charset=utf-8",
		        data: {
		        	u_id : u_id
		        },
		        success: function(result){
		        	if(result == "1"){
		        		$("#idcheck").html('<p style="color:red">이미 존재하는 아이디 입니다.</p>');
		        	} else{
		        		$("#idcheck").html('<p style="color:green">사용 가능한 아이디 입니다.</p>');
		        	}
					if (u_id.length == 0){
						$("#idcheck").html('<p style="color:gray">아이디를 한글자 이상 입력해 주세요.</p>');
					}
		        }
			});
		});
	});

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
            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel" style="text-align: -webkit-center;">
               <div class="card-body col-lg-5">
                  <h3 style="text-align: center;"> 회원가입</h3>
                  <br>
                  <form method="post" action="${pageContext.request.contextPath }/JoinController"
                     onsubmit="return check_input();">
                     <div class="form-group">
                        <input type="text" class="form-control"
                           placeholder="아이디 : 3~12자 영문 소문자" id="u_id" name="u_id"
                           maxlength="20">
                     </div>
                     
                     <textbox id="idcheck">
                     	<p style="color:gray">아이디를 한글자 이상 입력해 주세요.</p>
                     </textbox>

                     <div class="form-group">
                        <input type="password" class="form-control"
                           placeholder="비밀번호 : 3~12자 숫자" id="u_pw" name="u_pw"
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
                        <input type="text" class="form-control" placeholder="나이"
                           id="u_age" name="u_age" maxlength="20">
                   	</div>

					<input type="hidden" id="u_like_item" name="u_like_item"
						value="0">
						
					<div class="form-group">
						<select class="custom-select" name="u_skintype" id="u_skintype">
							<option value="">피부타입 선택하기</option>
							<option value="건성">건성</option>
							<option value="지성">지성</option>
							<option value="중성">중성</option>
							<option value="복합성">복합성</option>
							<option value="민감성">민감성</option>

						</select>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-secondary form-control"
							value="회원가입">
					</div>

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