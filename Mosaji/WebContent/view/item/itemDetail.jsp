<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" -->
<!-- 	crossorigin="anonymous"> -->
<link href="/resources/glowpickcustom.css">
<style>
.btn-prrimary {
	color: #fff;
	background-color: #eb6864;
	border-color: #eb6864;
}

.custom-control-input {
	position: absolute;
	left: 0;
	z-index: -1;
	width: 1rem;
	height: 1.25rem;
	opacity: 0;
}

.starR {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 30px;
	height: 30px;
	display: inline-block;
	text-indent: -9999px;
	cursor: pointer;
}

.starR.on {
	background-position: 0 0;
}

.star-rating {
	width: 205px;
}

//
별이미지크기

.star-rating, .star-rating span {
	display: inline-block;
	height: 39px;
	overflow: hidden;
	background:
		url("star.png")no-repeat;
}

//
두개의 span에 동시에 주는 효과들

.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</script>
</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div class="alert alert-secondary" role="alert"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<section id="gp-default-main" data-v-7c3cc7fa="">
					<img src="${i.i_img }">
				</section>
			</div>
			<div class="col-md-8">
				<section id="gp-default-main" data-v-7c3cc7fa="">
					<section data-v-991c3c50="" data-v-7c3cc7fa="" class="detail">
						<div data-v-991c3c50="" class="detail__contents contents">
							<ul data-v-991c3c50="" class="contents__product-info">
								<li data-v-991c3c50=""
									class="contents__product-info__li contents__product-info__image"><div
										data-v-4aaf0415="" data-v-991c3c50=""
										class="image-and-labels contents__product-info__image__section">
										<!-- 								
							</div></li>
						<li data-v-991c3c50=""
							class="contents__product-info__li contents__product-info__text"><section
								data-v-7c039372="" data-v-991c3c50="" class="product-main-info">
								<p data-v-7c039372="" class="product-main-info__brand_name">
									${i.i_brand }</p>
								<h1 data-v-7c039372="" class="product-main-info__product_name">
									<span data-v-7c039372=""
										class="product-main-info__product_name__text"> <!---->
										<%-- 										${i.i_name } </span> --%>
										<!-- 										</h1> -->
										<!-- 										<div data-v-7c039372="" class="sns-links"> -->
										<!-- 											<a data-v-7c039372="" class="sns-links__button link-pop-up"><span -->
										<!-- 												data-v-7c039372="" -->
										<!-- 												class="sns-links__button__icon icon-sprite btn-share"></span></a> -->
										<!-- 										</div> -->
										<!-- 										<div data-v-7c039372="" -->
										<!-- 											class="product-main-info__data_wrapper"> -->
										<!-- 											<div data-v-7c039372="" -->
										<!-- 												class="product-main-info__volume_price"> -->
										<%-- 												${i.i_volume } / <span data-v-7c039372="" --%>
										<%-- 													class="product-main-info__volume_price--bold">${i.i_price }</span>원 --%>
										<!-- 											</div> -->
										<!-- 											<div data-v-7c039372="" -->
										<!-- 												class="product-main-info__ratings ratings"> -->

										<!-- 												<div data-v-7c039372="" class="ratings__heart_graph"> -->
										<!-- 													<ul data-v-4385e41e="" data-v-7c039372=""> -->
										<!-- 														<li data-v-4385e41e=""><article data-v-14354dc6="" -->
										<!-- 																data-v-4385e41e="" class="heart-comp"> -->
										<!-- 																<div data-v-14354dc6="" class="wrap" -->
										<!-- 																	style="width: 100%;"> -->
										<!-- 																	<div data-v-14354dc6="" class="graphic"></div> -->
										<!-- 																</div> -->
										<!-- 															</article></li> -->
										<!-- 														<li data-v-4385e41e=""><article data-v-14354dc6="" -->
										<!-- 																data-v-4385e41e="" class="heart-comp"> -->
										<!-- 																<div data-v-14354dc6="" class="wrap" -->
										<!-- 																	style="width: 100%;"> -->
										<!-- 																	<div data-v-14354dc6="" class="graphic"></div> -->
										<!-- 																</div> -->
										<!-- 															</article></li> -->
										<!-- 														<li data-v-4385e41e=""><article data-v-14354dc6="" -->
										<!-- 																data-v-4385e41e="" class="heart-comp"> -->
										<!-- 																<div data-v-14354dc6="" class="wrap" -->
										<!-- 																	style="width: 100%;"> -->
										<!-- 																	<div data-v-14354dc6="" class="graphic"></div> -->
										<!-- 																</div> -->
										<!-- 															</article></li> -->
										<!-- 														<li data-v-4385e41e=""><article data-v-14354dc6="" -->
										<!-- 																data-v-4385e41e="" class="heart-comp"> -->
										<!-- 																<div data-v-14354dc6="" class="wrap" -->
										<!-- 																	style="width: 100%;"> -->
										<!-- 																	<div data-v-14354dc6="" class="graphic"></div> -->
										<!-- 																</div> -->
										<!-- 															</article></li> -->
										<!-- 														<li data-v-4385e41e=""><article data-v-14354dc6="" -->
										<!-- 																data-v-4385e41e="" class="heart-comp"> -->
										<!-- 																<div data-v-14354dc6="" class="wrap" style="width: 32%;"> -->
										<!-- 																	<div data-v-14354dc6="" class="graphic"></div> -->
										<!-- 																</div> -->
										<!-- 															</article></li> -->
										<!-- 													</ul> -->
										<!-- 												</div> -->

										<!-- 											</div> -->
										<!-- 										</div> -->
										<div data-v-7c039372=""
											class="product-main-info__brand_wrapper brand_info">
											<figure data-v-7c039372="" class="brand_info__logo">
												<div data-v-fedb599a="" data-v-7c039372=""
													class="brand-image brand_info__logo__img brand-image--long-height">
													<div data-v-1c7d6d15="" data-v-fedb599a="" role="img"
														aria-label="브랜드 명 설화수 (Sulwhasoo)의 로고 이미지"
														class="image image--loaded"
														style="width: 100%; height: 100%;">
														<meta data-v-1c7d6d15="" itemprop="image"
															content="https://dn5hzapyfrpio.cloudfront.net/home/glowmee/upload/20140509/1399881263287_160.png">
														<!---->
														<div data-v-1c7d6d15=""
															title="브랜드 명 설화수 (Sulwhasoo)의 로고 이미지"
															class="image__background-image"
															style="width: 100%; height: 100%; background-image: url(&quot;https://dn5hzapyfrpio.cloudfront.net/home/glowmee/upload/20140509/1399881263287_160.png&quot;);"></div>
													</div>
												</div>
											</figure>
											<%-- 											<span data-v-7c039372="" class="brand_info__brand-name">${i.i_brand }</span> --%>

											<form
												action="${pageContext.request.contextPath }/AddWishlistController">
												<input type="hidden" name="i_no" id="i_no"
													value="${i.i_no }"> <input
													class="btn btn-outline-danger" type="submit" value="찜하기"
													onclick="alert('찜 완료');">
											</form>
											<button type="button" class="btn btn-outline-secondary"
												onclick="window.open('https://search.shopping.naver.com/search/all?query=${i.i_name}&cat_id=&frm=NVSHATC') ">네이버
												쇼핑연결</button>
											<button type="button" class="btn btn-outline-info"
												onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=${i.i_brand}') ">브랜드
												명으로 검색하기</button>


										</div>
					</section>
					<!---->
					<section data-v-71605cff="" data-v-991c3c50=""
						class="ingredient contents__product-info__text__section">
						<div data-v-f520a820="" data-v-71605cff=""
							class="product-info-contents contents">
							<div data-v-f520a820="" class="contents__icon">
								<span data-v-f520a820="" class="contents__icon__span"><span
									data-v-f520a820=""
									class="contents__icon__span__sprite icon-sprite label-ingredient"></span></span>
							</div>

							<span data-v-f520a820="" class="contents__arrow-icon"><span
								data-v-f520a820="" class="icon-sprite btn-move-black"></span></span>

						</div>

					</section>
					<section data-v-3b7c2262="" data-v-991c3c50=""
						class="info contents__product-info__text__section">
						<div data-v-f520a820="" data-v-3b7c2262=""
							class="product-info-contents contents">
							<div data-v-f520a820="" class="contents__icon">
								<span data-v-f520a820="" class="contents__icon__span"><span
									data-v-f520a820=""
									class="contents__icon__span__sprite icon-sprite label-pdtinfo"></span></span>
							</div>


							<!---->
						</div>
						<!-- 								<button data-v-3b7c2262="" class="info__mobile-button"></button> -->
						<table data-v-3b7c2262="" class="info__table">
							<tbody data-v-3b7c2262="">
								<tr data-v-3b7c2262="" class="info__description-box info__tr">
									<th data-v-3b7c2262="" class="info__th"><span
										data-v-3b7c2262="" class="title">상품 이름</span></th>
									<td data-v-3b7c2262="" class="info__td"><div
											data-v-3b7c2262="" class="info__description">
											${i.i_name }</div></td>
								</tr>
								<tr></tr>
								<tr data-v-3b7c2262="" class="info__description-box info__tr">
									<th data-v-3b7c2262="" class="info__th"><span
										data-v-3b7c2262="" class="title">브랜드 명</span></th>
									<td data-v-3b7c2262="" class="info__td"><div
											data-v-3b7c2262="" class="info__description">
											${i.i_brand }</div></td>
								</tr>
								<tr></tr>
								<tr data-v-3b7c2262="" class="info__description-box info__tr">
									<th data-v-3b7c2262="" class="info__th"><span
										data-v-3b7c2262="" class="title">상품 용량</span></th>
									<td data-v-3b7c2262="" class="info__td"><div
											data-v-3b7c2262="" class="info__description">
											${i.i_volume }</div></td>
								</tr>
								<tr></tr>
								<tr data-v-3b7c2262="" class="info__description-box info__tr">
									<th data-v-3b7c2262="" class="info__th"><span
										data-v-3b7c2262="" class="title">상품 가격</span></th>
									<td data-v-3b7c2262="" class="info__td"><div
											data-v-3b7c2262="" class="info__description">
											${i.i_price }</div></td>
								</tr>
								<tr></tr>
								<tr data-v-3b7c2262="" class="info__category-list info__tr">
									<th data-v-3b7c2262="" class="info__th"><span
										data-v-3b7c2262="" class="title">카테고리</span></th>
									<td data-v-3b7c2262="" class="info__td"><div
											data-v-3b7c2262="" class="info__category-wrap">
											<p data-v-3b7c2262="" class="info__categories">
												<span data-v-3b7c2262="" class="info__category"> <br>
													<br>${i.i_category1 }
												</span>
											</p>

										</div>
										<div data-v-3b7c2262="" class="info__category-wrap">
											<p data-v-3b7c2262="" class="info__categories">
												<span data-v-3b7c2262="" class="info__category">
													${i.i_category2 } </span>
											</p>

										</div></td>
								</tr>
								<tr></tr>
								<tr data-v-3b7c2262="" class="info__description-box info__tr">
									<th data-v-3b7c2262="" class="info__th"><span
										data-v-3b7c2262="" class="title">설명</span></th>
									<td data-v-3b7c2262="" class="info__td"><div
											data-v-3b7c2262="" class="info__description">${i.i_content}</div></td>
								</tr>
								<tr data-v-3b7c2262="" class="info__description-box info__tr">
									<th data-v-3b7c2262="" class="info__th"><span
										data-v-3b7c2262="" class="title">평점</span></th>
									<td data-v-3b7c2262="" class="info__td"><div
											data-v-3b7c2262="" class="info__description">
											${i.i_star }
											<c:choose>
												<c:when test="${i.i_star >= 4 }">
													<div class="star-wrap">
														<div class="star-rating">
															<span style="width: 100%"></span>
														</div>
													</div>
												</c:when>
												<c:when test="${i.i_star <= 4 && i.i_star >= 5 }">
													<span class="star-rating"> <span style="width: 75%"></span>
													</span>
												</c:when>
												<c:otherwise>
													<span>평점이 없어요</span>
												</c:otherwise>

											</c:choose>
											<div class="star-wrap">
												<div class="star-rating">
													<span style="width: 50%;"></span>
													
												</div>
											</div>
										</div></td>
								</tr>


							</tbody>
						</table>
					</section>
					<!-- 					</li> -->
					<!-- 					</ul> -->
			</div>
			<!-- 			</section> -->
			<!-- 			</section> -->
		</div>
		<c:if test="${sessionScope.u_id eq 'admin' }">
		
		<div class="col-md-12">
			<form action="${pageContext.request.contextPath }/ItemDeleteController">
				<input type="hidden" name="i_no" value="${i.i_no }">
				<input class="btn btn-primary"type="submit" value="상품 삭제" onclick="alert('삭제 완료')">
			</form>
		
		</div>

		</c:if>
		<!--  review -->
		<div class="col-md-12" style="margin-top: 8%;">
			<h2 style="text-align: center;">리뷰 등록</h2>
			<div class="col-md-12">

				<form method="post"
					action="${pageContext.request.contextPath }/AddReviewController">
					<div class="form-group">
						<input type="radio" class="form-check-input" id="r_star"
							name="r_star" value="1" placeholder="1점">1점 <input
							type="radio" class="form-check-input" id="r_star" name="r_star"
							value="2">2점 <input type="radio" class="form-check-input"
							id="r_star" name="r_star" value="3" checked>3점 <input
							type="radio" class="form-check-input" id="r_star" name="r_star"
							value="4">4점 <input type="radio" class="form-check-input"
							id="r_star" name="r_star" value="5">5점
					</div>
					<div class="starRev">
						<span class="starR on" id="r_star" name="r_star" value="1">1</span>
						<span class="starR" id="r_star" name="r_star" value="2">2</span> <span
							class="starR" id="r_star" name="r_star" value="4">3</span> <span
							class="starR" id="r_star" name="r_star" value="4">4</span> <span
							class="starR" id="r_star" name="r_star" value="5">5</span>

					</div>
					<textarea class="form-control" rows="10" cols="66%"
						name="r_content" id="r_content"></textarea>
					<input type="hidden" value="${i.i_no }" name="i_no" id="i_no" /> <input
						class="btn btn-primary" type="submit"
						style="width: 33.9%; float: right; cursor: pointer;" value="등록" />

					<!-- 						<input type="hidden" value="1" id="r_star" name="r_star"/>  -->
				</form>
			</div>

		</div>
		<div class="col-md-12" style="margin-top: 5%;">
			<h2 style="text-align: center;">리뷰 내용</h2>
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">num</th>
						<th scope="col">작성자</th>
						<th scope="col">내용</th>
						<th scope="col">등록일</th>
						<th scope="col">평점</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="review" items="${review }">
						<tr>
							<td>${review.rownum }</td>
							<td>${review.u_id }</td>
							<td style="overflow: hidden; text-overflow: ellipsis;">${review.r_content }</td>
							<td>${review.r_date }</td>
							<td>${review.r_star }</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>


	<%@ include file="/view/common/footer.jsp"%>

	<script>
		$('.starRev span').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			return false;
		});
	</script>
</body>
</html>