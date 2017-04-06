<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/components/grid.min.css">
<link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">

<script type="text/javascript" src="/bower_components/semantic-ui-calendar/dist/calendar.min.js"></script>
<link rel="stylesheet" href="/bower_components/semantic-ui-calendar/dist/calendar.min.css" />

<style type="text/css">
.ui.icon.input>i.icon:not(.link) {
    pointer-events: visiblepainted;
}
</style>
<script type="text/javascript">
	$(function(){
		
		/* 검색 카테고리 */
		$('.ui.dropdown').dropdown();
		
		/* 카테고리 뭐 선택했는지 검색창에 placeholder로 뜨게 하기 */
		$("#searchField").on("change", function(){
			var sel = $("#searchField").val();
			$("#searchText").attr("placeholder", sel);
		});
		
		/* 아이콘 눌렸을때  */
		$("i.icon.search").on("click",function(){
			var input = $("#searchText").val();
			var sel = $("#searchField").val();
			if(sel=="회원번호"){searchByNumber(input);}
		});
		// Enter.
		$("#searchText").keydown(function(){
				if(event.keyCode==13){
					var input = $("#searchText").val();
					var sel = $("#searchField").val();
					if(sel=="회원번호"){searchByNumber(input);}
				}
		});
		
		// Search member by member_no
		function searchByNumber(number){
			console.log("number: "+number);
			$.ajax({
				type:'POST',
				data:{
					no:number
				},
				url:"server01",
				success:function(object){
					console.log("object::"+object);
					var html="";
					$.each(object,function(index,entry){
						console.log("index:"+index);
						html+="<tr>";
						html+="<td class='collapsing'>";
						html+="<div class='ui fitted checkbox'>";
						html+="<input type='checkbox'> <label></label>";
						html+="</div>";
						html+="</td>";
						html+="<td>"+entry.member_no+"</td>";
						html+="<td>"+entry.id+"</td>";
						html+="<td>"+entry.name+"</td>";
						html+="<td>"+entry.email+"</td>";
						html+="<td>"+entry.phone+"</td>";
						html+="<td>"+entry.regdate+"</td>";
						html+="<td>"+entry.degree+"</td>";
						html+="</tr>";
					});
					$("tbody").html(html);
				},
				error: function(){
					alert("Fail! ");
				}
			});
		}
	});
</script>
</head>
<body>

	<div>
		<ul>
		</ul>
	</div>

<div class="ui two column right aligned  grid">
	<div class="column">
		<div class="ui four column grid">
			<!-- 달력시작 -->
			<div class="column">
	    	</div>
		    <div class="column">
			</div>
		</div>
	</div>

	<div class="column">
		<div class="ui four column right aligned grid">
			<!-- 칸맞추기...ㅠㅠ -->
			<div class="column"></div>
			<!-- 검색카테고리 그리드 -->
			<div class="column">
		    	<select name="searchField" id="searchField" class="ui fluid dropdown">
			      	<option selected disabled>검색 분야 선택</option>
			      	<option value="회원번호">회원번호</option>
			      	<option value="아이디">아이디</option>
			      	<option value="이름">이름</option>
			      	<option value="등급">등급</option>
				</select>
	    	</div>	<!-- 검색카테고리 그리드 끝 -->
	    	<!-- 검색창 -->
		    <div class="column">
				<div class="ui search">
				  <div class="ui icon input">
				    <input class="prompt" type="text" placeholder="검색" value="" id="searchText"> 
				    <i class="search icon"id="searchIcon"></i>
				  </div>
				</div>
			</div>
		</div>
	</div>
</div>

<table class="ui compact celled definition table">
  <thead class="full-width">
    <tr>
      <th></th>
      <th>No.</th>
      <th>ID</th>
      <th>Name</th>
      <th>E-mail</th>
      <th>Phone</th>
      <th>Registration Date</th>
      <th>Degree</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list }" var="m" >
    <tr>
      <td class="collapsing">
        <div class="ui fitted checkbox">
          <input type="checkbox"> <label></label>
        </div>
      </td>
	  <td>${m.member_no}</td>
	  <td>${m.id }</td>
	  <td>${m.name }</td>
	  <td>${m.email }</td>
	  <td>${m.phone }</td>
	  <td>${m.regdate }</td>
	  <td>${m.degree }</td>
    </tr>
  </c:forEach>
  </tbody>
  <tfoot class="full-width">
  	 <tr>
      <th></th>
      <th colspan="8">
      	 <div class="ui right floated small primary labeled icon button">
		   <i class="user icon"></i> Add User
		 </div>
		 <div class="ui small  button">
		   Approve
		 </div>
		 <div class="ui small  disabled button">
		   Approve All
		 </div>
      </th>
    </tr>
  </tfoot>
</table>
 <div class="ui right floated pagination menu">
   <c:if test="${criteria.prev==true }">
	   <a class="icon item">
	     <i class="left chevron icon"></i>
	   </a>
   </c:if>
   <c:forEach begin="${criteria.startPage }" end="${criteria.endPage }" var="index">
	   <a class="item">${index}</a>
   </c:forEach>
    <c:if test="${criteria.next==true }">
	   <a class="icon item">
	     <i class="right chevron icon"></i>
	   </a>
    </c:if>
</div>
</body>
</html>