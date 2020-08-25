<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width: 33%;
	padding: 10px;
}

.itemList {
	float: left;
	width: 50%;
	padding: 10px;
}
</style>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div id="wrapper">
		<div id="staff" class="container">
			<div class="title">
				<h2>당신의 고민을 해결해주는 뭐사지!</h2>
				<span> 연령대, 성별, 취향에 맞는 선물을 추천받으세요!</span>
			</div>
			<div class="filter">
				<fieldset class="filters__filed filters__is-sorted" data-v-07810608>
					<div class="filter-header">
						<i class="icon-sprite icon-filter filter-header__text-icon"
							data-v-2c3efac9></i> <span data-v-2c3efac9>필터</span>
						</h1>
						<button class="filter-reset-btn">초기화</button>
					</div>
					<section class="filter-body">
						<fieldset class="fieldset">
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend"> 성별 </legend>
							<ul class="fieldset__list">
								<li class="fieldset__list-item fieldset__list-item--selected"><label
									class="fieldset__item-label"><input type="radio"
										class="fieldset__item-input">전체 <!----> <!----></label></li>
								<li class="fieldset__list-item"><label
									class="fieldset__item-label"><input type="radio"
										class="fieldset__item-input">여자 <!----> <!----></label></li>
								<li class="fieldset__list-item"><label
									class="fieldset__item-label"><input type="radio"
										class="fieldset__item-input">남자 <!----> <!----></label></li>
							</ul>
						</fieldset>

						<fieldset class="fieldset" data-v-7e828efe data-v-684826a2>
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend" data-v-7e828efe> 연령대 </legend>
							<ul class="fieldset__list" data-v-7e828efe>
								<li class="fieldset__list-item fieldset__list-item--selected"
									data-v-7e828efe><label class="fieldset__item-label"
									data-v-7e828efe><input type="checkbox"
										class="fieldset__item-input" data-v-7e828efe>전체 <!---->
										<!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>10대
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>20대
										초반 <!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>20대
										후반 <!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>30대
										초반 <!----> <!----></label></li>
								<li class="fieldset__list-item late30" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>30대
										후반 <i class="icon icon-sprite icon-late30-gray"
										data-v-7e828efe></i> <i
										class="icon icon-sprite icon-late30-red" data-v-7e828efe></i></label></li>
							</ul>
						</fieldset>

						<fieldset class="fieldset" data-v-7e828efe data-v-684826a2>
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend" data-v-7e828efe> 피부타입 </legend>
							<ul class="fieldset__list" data-v-7e828efe>
								<li class="fieldset__list-item fieldset__list-item--selected"
									data-v-7e828efe><label class="fieldset__item-label"
									data-v-7e828efe><input type="checkbox"
										class="fieldset__item-input" data-v-7e828efe>전체 <!---->
										<!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>건성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>지성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>중성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>복합성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe>민감성
										<!----> <!----></label></li>
							</ul>
						</fieldset>
					</section>
				</fieldset>
			</div>
			<div class="itemList">
				<div class="boxA">
					<img src="${pageContext.request.contextPath }/resources/images/lip_1.png" width="100%" height="100%" alt="" />
				</div>
			</div>
		</div>
		<div id="page" class="container">
			<div class="boxA">
				<h2>
					박스A<br /> <span>제목A</span>
				</h2>
				<p>내용A</p>
				<ul class="style4">
					<li class="first"><a href="#">링크1</a></li>
					<li><a href="#">링크2</a></li>
					<li><a href="#">링크3</a></li>
				</ul>
			</div>
			<div class="boxB">
				<h2>
					박스B<br /> <span> 제목B</span>
				</h2>
				<ul class="style3">
					<li class="first">
						<p class="date">
							<a href="#">Dec<b>30</b></a>
						</p>
						<h3>제목B</h3>
						<p>
							<a href="#">링크1</a>
						</p>
					</li>
					<li>
						<p class="date">
							<a href="#">Dec<b>28</b></a>
						</p>
						<h3>내용B</h3>
						<p>
							<a href="#">링크2</a>
						</p>
					</li>
				</ul>
			</div>
			<div class="boxC">
				<h2>
					Etiam posuere<br /> <span>augue sit amet</span>
				</h2>
				<ul class="style4">
					<li class="first"><a href="#">Consectetuer adipiscing elit</a></li>
					<li><a href="#">Metus aliquam pellentesque</a></li>
					<li><a href="#">Suspendisse iaculis mauris</a></li>
					<li><a href="#">Urnanet non molestie semper</a></li>
					<li><a href="#">Suspendisse iaculis mauris</a></li>
				</ul>
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