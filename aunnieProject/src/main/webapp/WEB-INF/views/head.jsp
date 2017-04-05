<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/head.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />

</head>
<body>
	<div class="container">
		<div class="ui grid">
			<div class="left floated five wide column">
				<ul>
					<li><a href="">즐겨찾기</a></li>
				</ul>
			</div>
			<div class="right floated five wide column">
				<ul>
					<li><a href="">로그인</a><span class="bar">|</span></li>
					<li><a href="">회원가입</a><span class="bar">|</span></li>
					<li><a href="">마이페이지</a><span class="bar">|</span></li>
					<li><a href="">장바구니</a></li>
				</ul>
			</div>
		</div>

		<div class="ui grid">
			<div class="three column row">
				<div class="column">
					<a href=""><img src="img/logo.png" alt="logo"
						class="header_logo" /></a>
				</div>
				<div class="column">
					<div id="searchbar">
						<input type="text" name="search" id="" /> <input type="button"
							value="" name="searchBtn" />
					</div>
				</div>
				<div class="column"></div>
			</div>

		</div>
	</div>

	<div class="ui attached stackable menu">
		<div class="container" id="menuList">
			<a class="item"> <i class="home icon"></i> 전체메뉴
			</a>
			<div class="ui simple dropdown item">
				메이크업 <i class="dropdown icon"></i>
				<div class="menu">
					<a class="item">Edit Profile</a> <a class="item">Choose
						Language</a> <a class="item">Account Settings</a>
				</div>
			</div>
			<div class="ui simple dropdown item">
				스킨케어 <i class="dropdown icon"></i>
				<div class="menu">
					<div class="header">
						<i class="tags icon"></i> 클렌징
					</div>
					  <div class="divider"></div>
					<a class="item">메이크업 리무버</a> <a class="item">페이스워시</a> <a
						class="item">필링 &스크럽</a>
					<div class="header">
						<i class="tags icon"></i>모이스처라이징
					</div>
					<a class="item">메이크업 리무버</a> <a class="item">페이스워시</a> <a
						class="item">필링 &스크럽</a>
				</div>
			</div>
			<div class="ui simple dropdown item">
				헤어/바디 <i class="dropdown icon"></i>
				<div class="menu">
					<a class="item">Edit Profile</a> <a class="item">Choose
						Language</a> <a class="item">Account Settings</a>
				</div>
			</div>


			<a class="item"> 미러톡 </a> <a class="item"> 프로모션 </a> <a class="item">
				타임세일 </a> <a class="item"> 베스트 </a>
		</div>
	</div>
</body>
</html>