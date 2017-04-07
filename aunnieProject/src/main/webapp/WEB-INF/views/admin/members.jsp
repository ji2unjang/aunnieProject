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
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/components/grid.min.css">
<link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">

<style type="text/css">
.ui.icon.input>i.icon:not(.link) {
    pointer-events: visiblepainted;
}

#calBtn{
	height : 38px;
	margin-left: 15px;
	margin-top: 13px;
}
</style>
<script type="text/javascript">
	$(function(){		
		/* 달력 */
		$( "#startDate" ).datepicker({
			dateFormat:'ymmdd',
	        changeYear: true,
			changeMonth: true 
		});
		$( "#endDate" ).datepicker({
			dateFormat:'ymmdd',
			changeYear: true,
			changeMonth: true
		});
		
		$("#calBtn").on("click",function(){
			var s = $("#startDate").val();
			var e = $("#endDate").val();
			if((s!="")&&(e!="")){
				searchDate(s,e);
			}
		});
		
		function searchDate(cal1,cal2){
			console.log(cal1);
			console.log(cal2);
			$.ajax({
				type:'POST',
				data:{
					s:cal1,
					e:cal2
				},
				url:"server02",
				
				success:function(object){
					console.log(object)
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
				error:function(){
					alert("실패");
				}
				
			});
			
		}
		
		/* 검색 카테고리 */
		$('.ui.dropdown').dropdown();
		//DatePicker.
		 $( "#testDatepicker" ).datepicker({
		 });
		/* 카테고리 뭐 선택했는지 검색창에 placeholder로 뜨게 하기 */
		$("#searchField").on("change", function(){
			var sel = $("#searchField").val();
			$("#searchText").val("");
			$("#searchText").attr("placeholder", sel);
		});
		
		/* 아이콘 눌렸을때  */
		$("i.icon.search").on("click",function(){
			var input = $("#searchText").val();
			var sel = $("#searchField").val();
			//회원번호로 검색한 경우.
			if(sel=="회원번호"){searchByNumber(input);}
		});
		// Enter 키로 검색한 경우 
		$("#searchText").keydown(function(){
				// 회원번호로 검색한 경우.
				if(event.keyCode==13){
					var input = $("#searchText").val();
					var sel = $("#searchField").val();
					if(sel=="회원번호"){searchByNumber(input);}
				}
		});
		// Search member by member_no
		function searchByNumber(number){
			console.log("number: "+number);
			var object;
			$.ajax({
				type:'POST',
				data:{
					"no":number
				},
				url:"searchMemberNo",
				success:function(data){
					console.log(data.length);
					var html="";
					$.each(data,function(index,entry){
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
					
					$.ajax({
						method:'POST',
						data:{
							length:data.length
						},
						url:"changePagination",
						success:function(criteria){
							console.dir(criteria);
							var html2="";
							if(criteria.prev==true){
								html2+="<a class='icon item' href='memberList?pno="+(criteria.startPage-10)+"'>";
								html2+="<i class='left chevron icon'></i></a>";
							}
							for(var i=criteria.startPage;i<=criteria.endPage;i++){
								console.log(i);
								html2+="<a class='item' href='memberList?pno="+i+"'>"+i;
								html2+="</a>";
							}
							if(criteria.next==true){
								html2+="<a class='icon item' href='memberList?pno="+(criteria.endPage+1)+"'>";
								html2+="<i class='right chevron icon'></i></a>";
							}
							$("tbody").html(html);
							$(".pagination").html(html2);
						}
					});
				},//end success
				error: function(){
					alert("Fail! ");
				}//end error
			});//end Get Memberby no AJAX END----
		}//function end.
	});//start function end.
</script>
</head>
<body>
<div class="ui two column right aligned  grid">

	<!-- 달력 -->
	<div class="column">
		<div class="ui four column grid form">
			<!-- calendar start -->
			<div class="column">
				<div class="ui icon input">
				   <input type="text" placeholder="Start" id="startDate">
				   <i class="calendar icon"></i>
			    </div>
	    	</div>
	    	<!-- calendar end -->
		    <div class="column">
		    	<div class="ui icon input">
					<input type="text" placeholder="End" id="endDate">
					<i class="calendar icon"></i>
			    </div> 
			</div>
					<input type="button" value="검색" id="calBtn" class="ui button"/>
		</div>
	</div>

	<div class="column">
		<div class="ui four column right aligned grid">
			<!-- 칸맞추기...ㅠㅠ -->
			<div class="column"></div>
			<!-- 검색카테고리 그리드 -->
			<div class="column">
		    	<select name="searchField" id="searchField" class="ui fluid dropdown">
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
      	 <div class="ui right floated small labeled icon button">
		   <i class="user icon"></i>
		   Remove
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
   <c:if test="${criteria.prev==true}">
	   <a class="icon item" href="memberList?pno=${criteria.startPage-10}">
	     <i class="left chevron icon"></i>
	   </a>
   </c:if>
   <c:forEach begin="${criteria.startPage}" end="${criteria.endPage}" var="index">
	   <a class="item" href="memberList?pno=${index}">${index}</a>
   </c:forEach>
   <c:if test="${criteria.next==true }">
	   <a class="icon item" href="memberList?pno=${criteria.endPage+1}">
	     <i class="right chevron icon"></i>
	   </a>
   </c:if>
</div>
</body>
</html>