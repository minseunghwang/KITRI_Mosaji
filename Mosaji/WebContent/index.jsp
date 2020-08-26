<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-----css----->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/resources/fonts.css" rel="stylesheet" type="text/css" media="all" />

<link href="./Resource/css/bootstrap.min.css" rel="stylesheet">
<link href="./Resource/css/bootstrap.css" rel="stylesheet">

</head>


<!-----header----->
<%@ include file="view/common/header.jsp"%>




<script src="http://code.jquery.com/jquery-3.3.1.js"></script>

    <script type="text/javascript">

        $(function() {

            $('#i_category1').change(function() {

                var makeup = ["페이스메이크업","아이메이크업","립메이크업"];

                var skincare = ["스킨","로션","크림"];
                
                var cleanser = ["페이스클렌저","샴푸","린스"];
                
                var body = ["바디로션","바디워시","핸드크림"];

                var changeItem;

                if (this.value == "makeup") {

                    changeItem = makeup;

                } else if (this.value == "skincare") {

                    changeItem = skincare;

                } else if (this.value == "cleanser") {

                    changeItem = cleanser;

                } else if (this.value == "body") {

                    changeItem = body;

                }

                $('#i_category2').empty();

                for (var count = 0; count < changeItem.length; count++) {

                    var option = $("<option>" + changeItem[count] + "</option>");
                   

                    $('#i_category2').append(option);

        }

            });

        });

       
    </script>





<body style="background:white;">

<div id="wrapper" style="background:#FFBFAB;">
	<div id="staff" class="container">
		<div class="title">
			<h2 style="color:#625772">당신의 고민을 해결해주는, 뭐사지 !</h2>
			<span style="font-size:20px; color:#7F7F7F;"> 연령대, 성별, 피부타입에 따라 추천받아보세요  </span> </div>
			
							
       
                <div style="margin-bottom:50px;">
                <form method="post" action="${pageContext.request.contextPath }/SelectController">
				  <div class="row" >
				    <div class="col">
				        <select  class="custom-select" id="i_category1">
                           <option value="">뷰티 카테고리</option>
                           <option value="makeup">메이크업</option>
                          <option value="skincare">스킨케어</option>
                           <option value="cleanser">클렌징</option>
                            <option value="body">바디케어</option>
                        </select>
                     </div>
                        
                    <div class="col">
                    <select  class="custom-select" id="i_category2">
	                   		<option value=""></option>                  
                    </select>
				    </div>
				    <div class="col">
				     <button type="submit" class="btn btn-secondary" onclick="select()" style="width:50%;">랭킹 순위보기</button>
				    </div>
				  </div>
				</form>
				</div>
				

				    <form class="form-inline my-2 my-lg-0" style="margin:0;auto;">
     				<input class="form-control mr-sm-2" type="text" placeholder="화장품 이름을 입력해주세요" style="width:60%;">
     				<button class="btn btn-secondary my-2 my-sm-0" type="submit" style="width:15%;margin-left: 10%;">화장품 검색</button>
  					</form>
				
				    
</div>					
</div>		





	<div id="page" class="container">
	 <div class="row" style="margin:0; auto;">
	<div class="col"><img src="${pageContext.request.contextPath }/resources/images/lip_1.png" width="100%" height="100%" alt="" /></div>
	<div class="col"><img src="${pageContext.request.contextPath }/resources/images/lip_2.png" width="100%" height="100%" alt="" /></div>
	<div class="col"><img src="${pageContext.request.contextPath }/resources/images/lip_3.png" width="100%" height="100%" alt="" /></div>
	</div>
	</div>






	


<%@ include file="view/common/footer.jsp"%>
</body>
</html>