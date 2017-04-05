<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<div class="ui icon input">
							<input type="text" placeholder="Search..."> <i
								class="search icon"></i>
						</div>
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
			<c:forEach items="${categories }" var="category">
				<div class="ui simple dropdown item">
					${category.category_name}<i class="dropdown icon"></i>	
					<div class="menu">
						<c:forEach var="division" items="${divisions }">
							<c:if test="${category.category_no==division.category_no }">
								<div class="header">
									<i class="tags icon"></i>
									${division.division_name }
								</div>
								<div class="divider"></div>
								<c:forEach var="section" items="${sections}">
									<c:if test="${division.division_no==section.division_no }">
										<a class="item">${section.section_name} </a>
									</c:if>
								</c:forEach>
							</c:if>
						</c:forEach>
					</div>

				</div>
			</c:forEach>
			<a class="item"> 미러톡 </a> <a class="item"> 프로모션 </a> <a class="item">
				타임세일 </a> <a class="item"> 베스트 </a>
		</div>
	</div>
