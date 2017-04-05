<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/components/grid.min.css">

<style type="text/css">
	
	.ui.bottom.visible.sidebar, .ui.left.visible.sidebar, .ui.right.visible.sidebar, .ui.top.visible.sidebar {
    width: 17%;
}
	.title{
		font-weight: bold;
	}
	
	.ui.vertical.menu .item:before {
    position: absolute;
    content: '';
    top: 0;
    left: 0;
    width: 100%;
    height: 1px;
    background: rgba(33, 133, 208, 0.08);    
	}
	
	.ui .vertical.menu .title:HOVER{
		color: #9d7fef;
	}
	.ui.vertical.menu .item:HOVER{
		color: #9d7fef;
	}
	#logo{
		position: fixed;
	}
	
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">

$(function(){
	$('.visible.example .ui.sidebar')
	.sidebar({
	    context: '.visible.example .bottom.segment'
	    })
	.sidebar('hide');
		
	$('.ui.accordion').accordion();

});


function menu1(menu){
	   console.log("11");
	   $(".title").css("color","black");
	   $("#"+menu.id).css("color","#9d7fef");
	   
	}
function menu2(menu){
	console.log("222");
	$(".title").css("color","black");
	$(".somenu").css("color","black");
	console.dir($("#"+menu.id).parent().closest(".title"));
	$("#"+menu.id).parent().closest(".title").css("color","#9d7fef");
	$("#"+menu.id).css("font-weight","bold");
	$("#"+menu.id).css("color","#9d7fef");
	
	
}
</script>

<body>
	<div class="ui accordion bottom attached segment pushable">
		<div class="ui visible left vertical sidebar menu">
			
			<div class="item">
				<i class="home icon"></i>
				<div class="title" onclick="menu1(this)" id="m1"> 기본정보</div>
			</div>
			
			<div class="item">
				<i class="smile icon"></i>
				<div class="title" onclick="menu1(this)" id="m2">회원</div>
			</div>
			
			<div class="item">
				<i class="browser icon"></i>
				<div class="title" onclick="menu1(this)" id="m3">상품</div>
			</div>
			
			<div class="item">
				<i class="shop icon"></i>	
				<div class="menuItem">
					<div class="title" id="m4">주문</div>
					<div class="content">
						<a href="#" class="item somenu" onclick="menu2(this)" id="s11">전체주문</a>
						<a href="#" class="item somenu" onclick="menu2(this)" id="s12">주문배송</a>
						<a href="#" class="item somenu" onclick="menu2(this)" id="s13">교환관리</a>
						<a href="#" class="item somenu" onclick="menu2(this)" id="s14">환불관리</a>
					</div>
				</div>
			</div>
			
			
			<div class="item">
				<i class="calendar Outline icon"></i>	
				<div class="title">이벤트</div>
				<div class="content ">
					<a href="#" class="item somenu" onclick="menu2(this)" id="s21">요구분석..</a>
				</div>
			</div>
			
			<div class="item">
				<i class="ticket icon"></i>
				<div class="title ">쿠폰</div>
				<div class="content">
					<a href="#" class="item somenu" onclick="menu2(this)" id="s31">쿠폰관리</a>
					<a href="#" class="item somenu" onclick="menu2(this)" id="s32">쿠폰발급</a>
				</div>
			</div>
			
			<div class="item">
				<i class="comment Outline icon"></i>
				<div class="title">게시판</div>
				<div class="content">
					<a href="#" class="item somenu" onclick="menu2(this)" id="41">리뷰관리</a>
					<a href="#" class="item somenu" onclick="menu2(this)" id="42">미러톡관리</a>
					<a href="#" class="item somenu" onclick="menu2(this)" id="43">Q&A</a>
				</div>
			</div>
			
			<div class="item">
				<i class="signal icon"></i>
				<div class="title">통계</div>
				<div class="content">
					<a href="#" class="item somenu" onclick="menu2(this)" id="51">수익통계</a>
					<a href="#" class="item somenu" onclick="menu2(this)" id="52">회원통계</a>
					<a href="#" class="item somenu" onclick="menu2(this)" id="53">브랜드통계</a>
				</div>
			</div>
			
			
			<div>
			</div>
		</div>
	</div>
</body>
</html>