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
</head>
<body>
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
        <div class="ui fitted slider checkbox">
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
   <a class="icon item">
     <i class="left chevron icon"></i>
   </a>
   <a class="item">1</a>
   <a class="item">2</a>
   <a class="item">3</a>
   <a class="item">4</a>
   <a class="icon item">
     <i class="right chevron icon"></i>
   </a>
</div>
</body>
</html>