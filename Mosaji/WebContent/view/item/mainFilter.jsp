<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<link href="<%=request.getContextPath()%>/resources/jquery-nicelabel.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/resources/code.jquery.com/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jquery.nicelabel.js"></script>

<style>
.filter {
	float: left;
	width: 25%;
	padding: 10px;
}
.col{
    text-align: right;
}
.itemList, .col{
	float: left;
	width: 75%;
	padding: 10px;
}
#orderby{
	margin-right : 50px;
}
.boxA{
	display : inline;
	width : 100%;
	padding : 20px;
} 
.boxA, .boxB{
	width:100%;
	margin-top:10px;
	border-bottom : 1px solid #c7c6c6;
}
.element_0, .element_1, .element_2, .element_3{
	float:left;
}
.element_0{
    padding: 20px;
    padding-right: 40px;
    margin-top: 10px;
}
.element_2{
	margin-left : 20px;
}
.element_2, .element_3{
	display: table-cell;
    vertical-align: middle;
    position: relative;
    top: 10px;
}
.element_3{
	float: right;
    transform: translate(-50px, 25px);
}
.i_brand, .i_name, .i_volume{
	text-align :left;
    left:20%;
    margin-left : 30px;
}
.i_brand{
	color : #d0021b;
	font-size:13px;
}
 
.i_name{
	font-size:18px;
	height : 40px;
	color : black;
}
.i_volume{
	font-size:14px;
	color : #84868e;
}
.i_price{
	color : black;
	font-family : 'Jua', sans-serif;
}
.star-rating {width:80px; }
.star-rating,.star-rating span {display:inline-block; height:14px; overflow:hidden; background:url(${pageContext.request.contextPath}/resources/images/star80.png)no-repeat; }
.star-rating span{background-position:left bottom; line-height:0; vertical-align:top; }
	
</style>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	var category2 = '${param.category2}';
	var keyword = '${param.keyword}';
	var arr = [];
	var search = function(num){
		for(i=0;i<arr.length;i++){
			if(arr[i].num == num){
				return arr[i];
			}
		}
		return null;
	}
	
	var makeTbl = function(arr) {
    	for(i=0;i<arr.length;i++){
    		var html;
    		html = "<div class='boxA' style='width:100%'>";
    		html += "<div class=' element_0'>" + (i+1) + "</div>";
    		html += "<a href=${pageContext.request.contextPath }/ItemDetailController?i_no="+arr[i].i_no+"><div class='element_1'><div class='i_element i_img'><img src='"+arr[i].i_img+"' style='width:100px;height:100px;'></div></div>";
    		html += "<div class='element_2'><div class='i_element i_brand'>"+arr[i].i_brand+"</div>";
    		html += "<div class='i_element i_name' num='"+arr[i].i_no+"'>"+arr[i].i_name+"</div>";
    		html += "<div class='i_element i_volume'>"+arr[i].i_volume+ " / " + "<divv class='i_price'>" + arr[i].i_price + "원</divv></div></div>"; 
    		html += "<div class='element_3'><div class='i_star'>"+arr[i].i_star+" <div class='star-rating' style='text-align:left'><span style='width:" + arr[i].i_star * 20+ "%'></span></div></div></div>";
    		html += "</a>"
    		html += "</div>";
    		$(".itemList").append(html);
    	}
	}
	
	function check_data(){
		
		var gval = $(':radio[name="genderRadio"]:checked').val();
		
		if(($('input:checkbox[name="f_age"]').is(":checked") == false) && ($("#f_age_total").is(":checked") == false)){
			alert("연령대를 선택하쇼");
			return false;
		}
		
		if(($('input:checkbox[name="f_stype"]').is(":checked") == false) && ($("#f_skintype_total").is(":checked")) == false){
			alert("피부타입을 선택하쇼");
			return false;
		}
		
		var age_arr = new Array();
		if ($('input:checkbox[name="f_age"]:checked').length == 0){
			age_arr = ["10", "20", "30", "40"];
		} else{
			var f_age = $('input:checkbox[name="f_age"]:checked').each(function(){
				age_arr.push($(this).val());
			});
		}
		
		var stype_arr = new Array();
		if($('input:checkbox[name="f_stype"]:checked').length == 0){
			stype_arr = ["건성", "지성", "중성", "복합성", "민감성"];
		} else{
			var f_stype = $('input:checkbox[name="f_stype"]:checked').each(function(){
				stype_arr.push($(this).val());
			});
		}
		
		$.ajax({
	        url: '${pageContext.request.contextPath }/FilteringListController',
	        type: 'POST',
	        contentType:"application/x-www-form-urlencoded;charset=utf-8",
	        data: {
	        	category2 : category2,
	        	gval : gval,
	        	age_arr : age_arr,
	        	stype_arr : stype_arr
	        },
	        success: function(result){
	        	var arr = $.parseJSON(result);
	        	alert(arr[0].i_img);
				$(".itemList").empty();
	        	makeTbl(arr);
			}
		});
		
		return true;
	}
	$(document).ready(function(){
		if(keyword == ""){
	    	$.ajax({
		        url: '${pageContext.request.contextPath }/selectController',
		        type: 'POST',
		        contentType:"application/x-www-form-urlencoded;charset=utf-8",
		        data : {
		        	category2 : category2
		        },
		        success: function(result){
		        	arr = $.parseJSON(result);
		        	makeTbl(arr);
		        }
		    });
		}
		else{
	       	$.ajax({
	   	        url: '${pageContext.request.contextPath }/SearchController',
	   	        type: 'POST',
	   	        contentType:"application/x-www-form-urlencoded;charset=utf-8",
	   	        data : {
	   	        	keyword : keyword
	   	        },
	   	        success: function(result){
	   	        	arr = $.parseJSON(result);
	   	        	makeTbl(arr);
	   	        }
	       	});
		}
		
		$("#f_age_total").click(function(){
			$("input:checkbox[name='f_age']").prop("checked",false);
		});
		
		$('input:checkbox[name="f_age"]').click(function(){
			if($("#f_age_total").is(":checked")){
				$("#f_age_total").prop("checked",false);
			}
		});
		
		$("#f_skintype_total").click(function(){
			$("input:checkbox[name='f_stype']").prop("checked",false);
		});
		
		$('input:checkbox[name="f_stype"]').click(function(){
			if($("#f_skintype_total").is(":checked")){
				$("#f_skintype_total").prop("checked",false);
			}
		});
		
		$("#f_reset_btn").click(function(){
			$("input:checkbox[name='f_age']").prop("checked",false);
			$("input:checkbox[name='f_stype']").prop("checked",false);
			$("input:radio[name='genderRadio']").prop("checked",false);
			$("#f_skintype_total").prop("checked",true);
			$("#f_age_total").prop("checked",true);
			$("input:radio[name='genderRadio']").filter("[value='1']").prop("checked",true);
		});
		
		$("#category2").change(function(){
			category2 = $(this).val();
		});
		
		$("#orderby").change(function(){
			var orderby = $(this).val();
			$.ajax({
		        url: '${pageContext.request.contextPath }/RankedController',
		        type: 'POST',
		        contentType:"application/x-www-form-urlencoded;charset=utf-8",
		        data: {
		        	category2 : category2,
		        	orderby : orderby
		        },
		        success: function(result){
		        	arr = $.parseJSON(result);
		        	$(".itemList").empty();
		        	makeTbl(arr);
		        }
		    });
			
			$("#filter").css('visibility','hidden');
		});
		
	});
	
	
	
</script>

<body>
	<%@ include file="/view/common/header.jsp"%>
	

			<div class="title" style="text-align: center; height: 5%;">
			<br><br><br><br>
			<h2 style="color: #625772"> ${param.category2} &nbsp; 랭킹 </h2>
			</div>





	<div id="wrapper">
		<div id="staff" class="container">
			<div class="filter">
				<div class="filters__filed filters__is-sorted" id="filter" style="background: #fafafc; border:2px solid #e6e6e6;">
					<div class="filter-header" style="font-size: 20px; margin-bottom:30px; margin-top:15px; margin-left:10px;">
						<img src="${pageContext.request.contextPath }/resources/images/filter.png"> 필터
					<hr>
					</div>
					<section class="filter-body">
						<fieldset class="fieldset" style="margin-bottom:10px;">
							<legend style="text-align: left; margin-left:10px;">성별</legend>
	
						<div id="text-radio" style="margin-left:10px; float:left;">
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_radio", "checked_text": "전 체", "unchecked_text": "전 체"}'
						checked="checked" type="radio"  name="genderRadio" value="1" />
						</div>	
						<div id="text-radio" style="margin-left:10px; margin-right:10px; float:left;">
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_radio", "checked_text": "여 자", "unchecked_text": "여 자"}'
						type="radio" name="genderRadio" value="2" />	
						</div>	
						<div id="text-radio">
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_radio", "checked_text": "남 자", "unchecked_text": "남 자"}' 
						type="radio"  name="genderRadio" value="3" />	
						</div>		
						</fieldset>
						
						
						<hr>
						<fieldset  id="text-checkbox" class="fieldset" style="margin-bottom:10px; ">
						<legend style="text-align: left; margin-left:10px;">연령대</legend>			
						<div id="text-checkbox" style="margin-left:10px; float:left;">
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "전 체", "unchecked_text": "전 체"}' 
						checked="checked" type="checkbox" value="0" id="f_age_total"/>
						</div>
						<div id="text-checkbox" style="margin-left:10px; margin-right:10px; float:left;">
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "10대", "unchecked_text": "10대"}'
						type="checkbox" value="10" name="f_age"/>
						</div>
						<div id="text-checkbox" >	
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "20대", "unchecked_text": "20대"}'
						type="checkbox" value="20" name="f_age" />
						</div>
						<div id="text-checkbox" style="margin-left:10px; margin-right:10px; float:left;">	
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "30대", "unchecked_text": "30대"}'
						type="checkbox" value="30" name="f_age"  />	
						</div>
						<div id="text-checkbox" style="margin-left:10px; ">	
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "40대 이상", "unchecked_text": "40대 이상"}'
						type="checkbox" value="40" name="f_age" />	
						</div>
						</fieldset>
						
						
						<hr>
						<fieldset  id="text-checkbox" class="fieldset" style="margin-bottom:40px; ">
						<legend style="text-align: left; margin-left:10px;">피부타입</legend>			
						<div id="text-checkbox" style="margin-left:10px; float:left;">
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "전 체", "unchecked_text": "전 체"}' 
						checked="checked" type="checkbox" value="전체" id="f_skintype_total"/>
						</div>
						<div id="text-checkbox" style="margin-left:10px; margin-right:10px; float:left;">
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "건 성", "unchecked_text": "건 성"}'
						type="checkbox" value="건성" name="f_stype"/>
						</div>
						<div id="text-checkbox" style="margin-left:10px;">
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "민감성", "unchecked_text": "민감성"}'
						type="checkbox" value="민감성" name="f_stype" />						
						</div>
						<div id="text-checkbox" style="margin-left:10px; float:left;" >	
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "중 성", "unchecked_text": "중 성"}'
						type="checkbox" value="중성" name="f_stype" />
						</div>
						<div id="text-checkbox" style="margin-left:10px; margin-right:10px; float:left;">	
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "지 성", "unchecked_text": "지 성"}'
						type="checkbox" value="지성" name="f_stype"/>	
						</div>
						<div id="text-checkbox" style="margin-left:10px; ">	
						<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "복합성", "unchecked_text": "복합성"}'
						type="checkbox" value="복합성" name="f_stype"  />	
						</div>
						</fieldset>


					</section>
					<button class="btn btn-secondary" style="background:#CEC3DF; border:1px solid #CEC3DF; color:#625772;"  id="f_reset_btn">초기화</button>
					<button class="btn btn-secondary" style="margin-top:10px; margin-bottom:10px; background:#625772; border:1px solid #625772;" id="filter_submit" onclick="check_data()">필터 적용</button>
				</div>
			</div>
			<div class="row">
				<div class="col" >
					<select class="form-control" name="category2" id="category2">
						<option value="" disabled selected hidden>${param.category2}</option>
						<option disabled>====페이스메이크업====</option>
						<option value="피니시파우더">피니시파우더 </option>
						<option value="파운데이션">파운데이션 </option>
						<option value="컨실러">컨실러</option>
						<option disabled>====아이메이크업====</option>
						<option value="마스카라">마스카라 </option>
						<option value="섀도우">섀도우</option>
						<option disabled>====립메이크업====</option>
						<option value="틴트">틴트 </option>
						<option value="립스틱">립스틱</option>
						<option disabled>====스킨케어====</option>
						<option value="스킨/토너">스킨/토너</option>
						<option value="로션/에센스">로션/에센스</option>
						<option value="크림">크림</option>
						<option disabled>====페이셜클렌저====</option>
						<option value="클렌징폼">클렌징폼</option>
						<option value="비누">비누</option>
						<option disabled>====메이크업클렌저====</option>
						<option value="클렌징워터">클렌징워터</option>
						<option value="클렌징오일">핸드크림</option>
						<option disabled>====바디워시====</option>
						<option value="샤워젤">샤워젤</option>
						<option value="천연비누">천연비누</option>
						<option disabled>====바디로션====</option>
						<option value="바디오일">바디오일</option>
						<option value="바디로션">바디로션</option>						
					</select>
					</div>
					<div class="col">
					<select  class="form-control" name="orderby" id="orderby">
						<option value="i_star:desc">평점 높은순</option>
						<option value="i_star:asc">평점 낮은순</option>
						<option value="i_price:desc">가격 높은순</option>
						<option value="i_price:asc">가격 낮은순</option>
					</select>
					</div>
				</div>
				<div class="itemList">
				</div>
			</div>
		</div>
		
		<div id="welcome" class="container">
			<div class="title">
				<h2>Welcome to our website</h2>
			</div>
			<p>
				This is <strong>RedMarket</strong>, a free, fully
				standards-compliant CSS template designed by <a
					href="http://templated.co" rel="nofollow">TEMPLATED</a>. The photos
				in this template are from <a href="http://fotogrph.com/">
					Fotogrph</a>. This free template is released under the <a
					href="http://templated.co/license">Creative Commons Attribution</a>
				license, so you're pretty much free to do whatever you want with it
				(even use it commercially) provided you give us credit for it. Have
				fun :)
			</p>
		</div>
	</div>

	
	<%@ include file="/view/common/footer.jsp"%>
</body>

	<script src="<%=request.getContextPath()%>/resources/jquery.nicelabel.js"></script>
	<script>
	$(function(){
		$('#text-checkbox > input').nicelabel();
		$('#text-radio > input').nicelabel();
		$('#text-checkbox-ico > input:eq(0)').nicelabel({
			checked_ico: './ico/checked.png',
			unchecked_ico: './ico/unchecked.png'
		});
		
	});
	</script>
	
	<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</html>