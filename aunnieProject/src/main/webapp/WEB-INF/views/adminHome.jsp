<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/components/grid.min.css">

<meta charset="UTF-8">
<style type="text/css">
	.test1{
		background-color: red;
	}
</style>
<title>Insert title here</title>
</head>
<script type="text/javascript">
$(function(){
	$('.ui.accordion').accordion();
});

</script>


<body>
	<div class="ui grid">
		<div class="ui vertical accordion menu two wide column">
			<div class="item">
				<div class="title">기본정보</div>
			</div>
			<div class="item">
				<div class="title">회원</div>
			</div>
			<div class="item">
				<div class="title">상품</div>
			</div>
			<div class="item">
				<div class="title">
					<i class="dropdown icon"></i> 주문
				</div>
				<div class="content">
					<p class="transition visible" style="display: block !important;">전체주문</p>
					<p class="transition visible" style="display: block !important;">주문배송</p>
					<p class="transition visible" style="display: block !important;">교환관리</p>
					<p class="transition visible" style="display: block !important;">환불관리</p>
				</div>
			</div>
			<div class="item">
				<div class="title">
					<i class="dropdown icon"></i> 이벤트
				</div>
				<div class="content ">
					<p class="transition visible" style="display: block !important;">요구분석..</p>
				</div>
			</div>
			<div class="item">
				<div class="title ">
					<i class="dropdown icon"></i> 쿠폰
				</div>
				<div class="content">
					<p class="transition visible" style="display: block !important;">쿠폰
						관리</p>
					<p class="transition visible" style="display: block !important;">쿠폰
						발급</p>
				</div>
			</div>
			<div class="item">
				<div class="title ">
					<i class="dropdown icon"></i> 게시판
				</div>
				<div class="content">
					<p class="transition visible" style="display: block !important;">리뷰
						관리</p>
					<p class="transition visible" style="display: block !important;">미러톡
						관리</p>
					<p class="transition visible" style="display: block !important;">Q&A</p>
				</div>
			</div>
			<div class="item">
				<div class="title">
					<i class="dropdown icon"></i> 통계
				</div>
				<div class="content">
					<p class="transition visible" style="display: block !important;">수익통계</p>
					<p class="transition visible" style="display: block !important;">회원통계</p>
					<p class="transition visible" style="display: block !important;">브랜드통계</p>
				</div>
			</div>
		</div>
		
		<div class="fourteen wide column" >
			<div class="test1">
				
			</div>
		</div>
	</div>
</body>
</html>