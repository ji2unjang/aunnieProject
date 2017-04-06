<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<script type="text/javascript">
	$(function(){
		$("#mainImgBtn").on("click",function(){
			console.log("ff")
		});
	});
</script>
</head>
<body>
<form class="ui form">
	<div class="ui grid">
		<div class="ten wide column">
			<div class="field">
			    <label>제품명</label>
			    <input name="pdname" type="text" placeholder="제품명" value="">
			</div>
			<div class="field">
			    <label>상세 정보</label>
			    <textarea placeholder="제품의 상세정보를 입력해주세요."></textarea>
			</div>
		</div>
		
		<div class="six wide column">
			<div class="field">
				<label>대표 이미지</label>
			</div>
			<div>
				<input type="file" name="f" id="f" />
			</div>
		</div>
	</div>
</form>
</body>
</html>