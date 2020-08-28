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

<script src="http://code.jquery.com/jquery-3.3.1.js"></script>

<script type="text/javascript">
	$(function() {

		$('#i_category1').change(function() {

			var 페이스메이크업 = [ "피니시파우더", "파운데이션", "컨실러" ];

			var 아이메이크업 = [ "마스카라", "섀도우" ];

			var 립메이크업 = [ "틴트", "립스틱"];

			var 스킨케어 = [ "스킨/토너", "로션/에센스", "크림" ];

			var i_category1;

				if (this.value == "페이스메이크업") {

					i_category1 = 페이스메이크업;

				} else if (this.value == "아이메이크업") {

					i_category1 = 아이메이크업;

			} else if (this.value == "립메이크업") {

				i_category1 = 립메이크업;

			} else if (this.value == "스킨케어") {

				i_category1 = 스킨케어;

			}

			$('#i_category2').empty();

			for (var count = 0; count < i_category1.length; count++) {

				var option = $("<option>" + i_category1[count] + "</option>");
				
				$('#i_category2').append(option);
				
				$("#i_category2").change(function(){
					var i_category2 = $(this).val();
				
				})
			}
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
            <div id="carouselExampleIndicators" class="carousel slide my-4"
               data-ride="carousel" style="text-align: -webkit-center;">

               <div class="card-body col-lg-5">



                  <h3 style="text-align: center;">상품 업로드</h3>
					<br>
					  <div class=form-group">
					  	<input type="file"  id="i_img" name="i_img" placeholder="이미지">
					  </div>
					  <br>

                  <form method="post" action="${pageContext.request.contextPath }/UploadController" enctype="multipart/form-data">
                     <div class="form-group">
                        <input type="text" class="form-control"
                           placeholder="상품이름" id="i_name" name="i_name">
                     </div>
 
                     
                     <div class="form-group">
                        <select class="custom-select" name="i_category1" id="i_category1">
                           <option value="" disabled selected hidden>카테고리1</option>
                           <option value="페이스메이크업">페이스메이크업</option>
                           <option value="아이메이크업">아이메이크업</option>
                           <option value="립메이크업">립메이크업</option>
                           <option value="스킨케어">스킨케어</option>
                      	</select>
                     </div>
                     	
                     	 <div class="form-group">
							<select class="custom-select" name="i_category2" id="i_category2">
								<option value="" disabled selected hidden>카테고리2</option>
							</select>
						</div>
						
						
							
 						<div class="form-group">
                        <input type="text" class="form-control"
                           placeholder="용량 (g/ml)" id="i_volume" name="i_volume">
                           </div>
                     
                   	<div class="form-group">
                        <input type="text" class="form-control" placeholder="상품설명"
                           name="i_content" id="i_content">
                     </div>
                     
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="브랜드"
                           name="i_brand" id="i_brand">
                     </div>
                     
                      <div class="form-group">
                        <input type="text" class="form-control" placeholder="가격 (원)"
                           id="i_price" name="i_price" maxlength="20">
                     </div>
                     
                     <hr>
                     <div class="form-group">
                        <select class="custom-select" name="i_gender" id="i_gender">
                           <option value="" disabled selected hidden>추천 성별</option>
                           <option value="남자">남자</option>
                           <option value="여자">여자</option>
                      	</select>
                     </div>


                     <div class="form-group">
                       <select class="custom-select" name="i_age" id="i_age">
                           <option value="" disabled selected hidden>추천 연령대</option>
                           <option value="10">10대</option>
                           <option value="20">20대</option>
                           <option value="30">30대</option>
                           <option value="40">40대</option>
                      	</select>
                     </div>
                     
                     <div class="form-group">
                        <select class="custom-select" name="u_skintype" id="u_skintype">
                           <option value="">추천 피부타입</option>
                           <option value="건성">건성</option>
                           <option value="지성">지성</option>
                           <option value="중성">중성</option>
                           <option value="복합성">복합성</option>
                           <option value="민감성">민감성</option> 
                        </select>
                     </div>

                     <input type="submit" class="btn btn-secondary" style="width:50%;"value="등록">
                    
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