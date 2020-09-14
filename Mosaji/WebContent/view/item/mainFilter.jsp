<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
} 

.boxA, .boxB{
	width:100%;
	margin-top:10px;
	border-bottom : 1px solid #c7c6c6;
}
.element_1, .element_2, .element_3{
	float:left;
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
    		html += "<a href=${pageContext.request.contextPath }/ItemDetailController?i_no="+arr[i].i_no+"><div class='element_1'><div class='i_element i_img'><img src='arr[i].i_img' style='width:100px;height:100px;'></div></div>";
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
				<div class="filters__filed filters__is-sorted" id="filter" style="background: #EAEAEA; border:none;">
					<div class="filter-header" style="text-align: left; font-size: 20px; margin-bottom:10px; margin-top:10px;">
						<span>  &nbsp; ✔  &nbsp;필터</span>
					</div>
					<section class="filter-body">
						<fieldset class="fieldset" style="margin-bottom:10px;">
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend"> 성별 </legend>
							<div class="row"  style="margin-top:10px;">
								<div class="col"><input type="radio" class="fieldset__item-input" name="genderRadio" value="1" checked="checked">전체 </div>
								<div class="col"><input type="radio" class="fieldset__item-input" name="genderRadio" value="2" checked="checked">여자 </div>
								<div class="col"><input type="radio" class="fieldset__item-input" name="genderRadio" value="3" checked="checked">남자 </div>
							</div>
						</fieldset>

						<fieldset class="fieldset" data-v-7e828efe data-v-684826a2 style="margin-bottom:10px;  ">
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend" data-v-7e828efe> 연령대 </legend>
							<ul class="fieldset__list" data-v-7e828efe style="margin-top:10px;">
								<li class="fieldset__list-item fieldset__list-item--selected"
									data-v-7e828efe><label class="fieldset__item-label"
									data-v-7e828efe><input type="checkbox"
										class="fieldset__item-input" data-v-7e828efe value="0" checked="checked" id="f_age_total">전체 <!---->
										<!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="10" name="f_age">10대
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="20" name="f_age">20대
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="30" name="f_age">30대
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="40" name="f_age">40대 이상
										<!----> <!----></label></li>
							</ul>
						</fieldset>

						<fieldset class="fieldset" data-v-7e828efe data-v-684826a2 style="margin-bottom:10px;">
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend" data-v-7e828efe> 피부타입 </legend>
							<ul class="fieldset__list" data-v-7e828efe style="margin-top:10px;">
								<li class="fieldset__list-item fieldset__list-item--selected"
									data-v-7e828efe><label class="fieldset__item-label"
									data-v-7e828efe><input type="checkbox"
										class="fieldset__item-input" data-v-7e828efe value="전체" checked="checked" id="f_skintype_total">전체 <!---->
										<!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="건성" name="f_stype">건성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="지성" name="f_stype">지성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="중성" name="f_stype">중성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="복합성" name="f_stype">복합성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="민감성" name="f_stype">민감성
										<!----> <!----></label></li>
							</ul>
						</fieldset>
					</section>
					<button class="btn btn-secondary" id="f_reset_btn">초기화</button>
					<button class="btn btn-secondary" style="margin-top:10px; margin-bottom:10px;" id="filter_submit" onclick="check_data()">필터 적용</button>
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
</html>