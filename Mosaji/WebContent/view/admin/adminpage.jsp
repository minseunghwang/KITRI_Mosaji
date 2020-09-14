<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}
/* body {width: 700px;margin: 20px auto;} */
li {
	list-style: none;
}

a {
	
}

/* lnb */
#lnb {
	position: relative;
	width: 200px;
}

#lnb h1 {
	height: 40px;
	text-align: center;
	color: #fff;
	font-size: 20px;
	line-height: 1.8;
	letter-spacing: -2px;
	background: #d71a21;
}

#lnb>ul {
	
}

#lnb>ul>li {
	border-bottom: 1px solid #dcdcdc;
}

#lnb>ul>li>a {
	display: block;
	padding: 14px 35px 14px 15px;
	color: inherit;
	font-size: 14px;
	background: #f5f2ec
		url(http://cfile26.uf.tistory.com/image/2417E04D570C5C02256897)
		no-repeat 95% 15px;
}

#lnb>ul>li a:hover {
	color: #d91c1b;
	background-color: #f5f2ec;
}

#lnb>ul>li.on>a {
	color: #d91c1b;
	background: #f5f2ec
		url('http://cfile9.uf.tistory.com/image/257B794F570C5C0D1A05E1')
		no-repeat 95% 14px;
}

#lnb>ul>li ul {
	display: none;
}

#lnb>ul>li>ul>li>a {
	display: block;
	padding: 0 25px 14px 14px;
	color: #inherit;
	font-size: 12px;
	background: #f5f2ec
		url('http://cfile26.uf.tistory.com/image/2417E04D570C5C02256897')
		no-repeat 95% 1px;
}

#lnb>ul>li>ul>li>a {
	color: #d91c1b;
	background-color: #f5f2ec;
}

#lnb>ul>li>ul>li.on a {
	color: #d91c1b;
	background: #f5f2ec
		url('http://cfile9.uf.tistory.com/image/257B794F570C5C0D1A05E1')
		no-repeat 95% 3px;
}

#lnb>ul>li>ul li ul {
	display: none;
	padding-bottom: 8px;
	background-color: #f5f2ec;
}

#lnb>ul>li>ul li li a {
	display: block;
	padding: 0 25px 10px 22px;
	color: #666;
	font-size: 12px;
	background-color: #f5f2ec;
}

#lnb>ul>li>ul>li li a:hover {
	color: #d91c1b;
}

#lnb>ul li.noDepth a {
	background-image: none !important;
}
</style>

</head>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<h3 style="text-align:center;">관리자 페이지</h3>
	<div class="container">
		<div id="lnb">
			<h1>LNB 타이틀</h1>
			<ul>
				<li><a href="#none">1Depth</a>
					<ul>
						<li><a href="#none">- 2Depth</a>
							<ul>
								<li><a href="#none">- 3Depth</a></li>
								<li><a href="#none">- 3Depth</a></li>
								<li><a href="#none">- 3Depth</a></li>
							</ul></li>
						<li><a href="#none">- 2Depth</a>
							<ul>
								<li><a href="#none">- 3Depth</a></li>
								<li><a href="#none">- 3Depth</a></li>
							</ul></li>
						<li><a href="#none">- 2Depth</a></li>
						<li><a href="#none">- 2Depth</a></li>
					</ul></li>

				<li><a href="#none">1Depth</a>
					<ul>
						<li><a href="#none">- 2Depth</a>
							<ul>
								<li><a href="#none">- 3Depth</a></li>
								<li><a href="#none">- 3Depth</a></li>
							</ul></li>
						<li><a href="#none">- 2Depth</a>
							<ul>
								<li><a href="#none">- 3Depth</a></li>
								<li><a href="#none">- 3Depth</a></li>
								<li><a href="#none">- 3Depth</a></li>
							</ul></li>
					</ul></li>
				<li><a href="#none">1Depth</a>
					<ul>
						<li><a href="#none">- 2Depth</a></li>
						<li><a href="#none">- 2Depth</a></li>
					</ul></li>
				<li><a href="#none">1Depth</a>
					<ul>
						<li><a href="#none">- 2Depth</a></li>
						<li><a href="#none">- 2Depth</a></li>
					</ul></li>
			</ul>
			<div class="col-md-6">ㅋㅋㅋㅋㅋㅋㅋ</div>
		</div>
		
	</div>


	<%@ include file="/view/common/footer.jsp"%>
</body>
<script>
	(function($) {

		var lnbUI = {
			click : function(target, speed) {
				var _self = this, $target = $(target);
				_self.speed = speed || 300;

				$target.each(function() {
					if (findChildren($(this))) {
						return;
					}
					$(this).addClass('noDepth');
				});

				function findChildren(obj) {
					return obj.find('> ul').length > 0;
				}

				$target
						.on('click', 'a',
								function(e) {
									e.stopPropagation();
									var $this = $(this), $depthTarget = $this
											.next(), $siblings = $this.parent()
											.siblings();

									$this.parent('li').find('ul li')
											.removeClass('on');
									$siblings.removeClass('on');
									$siblings.find('ul').slideUp(250);

									if ($depthTarget.css('display') == 'none') {
										_self.activeOn($this);
										$depthTarget.slideDown(_self.speed);
									} else {
										$depthTarget.slideUp(_self.speed);
										_self.activeOff($this);
									}

								})

			},
			activeOff : function($target) {
				$target.parent().removeClass('on');
			},
			activeOn : function($target) {
				$target.parent().addClass('on');
			}
		};

		// Call lnbUI
		$(function() {
			lnbUI.click('#lnb li', 300)
		});

	}(jQuery));
</script>
</html>