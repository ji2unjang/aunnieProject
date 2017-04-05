<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.css" />
<link rel="stylesheet" type="text/css" href="css/head.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/list.css" />
<style type="text/css">
.ui.cards>.card {
	border: 1px solid #e6e6e6 !important;
	box-shadow: none !important;
}
.ui.cards>.card:hover {
	border:1px solid #ec488c !important;
}


.ui.cards {
	text-align: center;

}

.ui.inverted.dimmer {
	background: rgba(255, 255, 255, .20) !important;
}

.description {
	min-height: 100px !important;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('.ui.multiple.dropdown').dropdown();

		$('.max.example .ui.multiple.dropdown').dropdown({
			maxSelections : 3
		});
		$('.tag.example .ui.dropdown').dropdown({
			allowAdditions : true
		});
		$('.special.cards .image').dimmer({
			on : 'hover'
		});
		$('.ui.rating').rating('disable')
	});
</script>
</head>
<body>
	<%@include file="/WEB-INF/views/head.jsp"%>
	<div class="container">
		<div id="selectDiv">
			<!-- 카테고리 내용 추가해주세요-->
			<select class="ui dropdown">
				<option value="">대분류</option>
				<option value="1">Male</option>
				<option value="0">Female</option>
			</select> <select class="ui dropdown">
				<option value="">증분류</option>
				<option value="1">Male</option>
				<option value="0">Female</option>
			</select> <select class="ui dropdown">
				<option value="">소분류</option>
				<option value="1">Male</option>
				<option value="0">Female</option>
			</select>
		</div>

		<div class="titleDiv">
			<h1>현재페이지 카테고리</h1>
		</div>

		<div class="filter">
			<!-- 필터추가하겠음-->
			<div class="ui multiple selection dropdown">
				<input name="tags" type="hidden" value="1,2,3,4"> <i
					class="dropdown icon"></i>
				<div class="default text">가격</div>
				<div class="menu">
					<div class="item" data-value="1">1</div>
					<div class="item" data-value="2">2</div>
					<div class="item" data-value="3">3</div>
					<div class="item" data-value="4">4</div>
				</div>
			</div>
		</div>

		<h4 class="ui horizontal divider header">
			<i class="tag icon"></i> 언니의 화장대 베스트 상품
		</h4>

		<div class="ui four column grid">
			<div class="column">
				<div class="ui fluid special cards">
					<div class="card">
						<div class="blurring dimmable image">
							<div class="ui inverted dimmer">
								<div class="content">
									<div class="bottom">
										<div class="ui small basic icon buttons">
											<button class="ui button">
												<i class="add to cart icon"></i>
											</button>
											<button class="ui button">
												<i class="heart icon"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<img src="img/product1.jpg">
						</div>
						<div class="content">
							<div class="meta">
								<a>브랜드명</a>
							</div>
							<div class="header">상품명</div>
							<div class="header">가격</div>
						</div>
						<div class="description"></div>
					</div>
				</div>
			</div>
			
			<div class="column">
				<div class="ui fluid special cards">
					<div class="card">
						<div class="blurring dimmable image">
							<div class="ui inverted dimmer">
								<div class="content">
									<div class="bottom">
										<div class="ui small basic icon buttons">
											<button class="ui button">
												<i class="add to cart icon"></i>
											</button>
											<button class="ui button">
												<i class="heart icon"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<img src="img/product1.jpg">
						</div>
						<div class="content">
							<div class="meta">
								<a>브랜드명</a>
							</div>
							<div class="header">상품명</div>
							<div class="header">가격</div>
						</div>
						<div class="description"></div>
					</div>
				</div>
			</div>
			<div class="column">
				<div class="ui fluid special cards">
					<div class="card">
						<div class="blurring dimmable image">
							<div class="ui inverted dimmer">
								<div class="content">
									<div class="bottom">
										<div class="ui small basic icon buttons">
											<button class="ui button">
												<i class="add to cart icon"></i>
											</button>
											<button class="ui button">
												<i class="heart icon"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<img src="img/product1.jpg">
						</div>
						<div class="content">
							<div class="meta">
								<a>브랜드명</a>
							</div>
							<div class="header">상품명</div>
							<div class="header">가격</div>
						</div>
						<div class="description"></div>
					</div>
				</div>
			</div>
			
			<div class="column">
				<div class="ui fluid special cards">
					<div class="card">
						<div class="blurring dimmable image">
							<div class="ui inverted dimmer">
								<div class="content">
									<div class="bottom">
										<div class="ui small basic icon buttons">
											<button class="ui button">
												<i class="add to cart icon"></i>
											</button>
											<button class="ui button">
												<i class="heart icon"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<img src="img/product1.jpg">
						</div>
						<div class="content">
							<div class="meta">
								<a>브랜드명</a>
							</div>
							<div class="header">상품명</div>
							<div class="header">가격</div>
						</div>
						<div class="description">
						<div class="ui star rating" data-rating="5"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="ui divider"></div>
	</div>
</body>
</html>