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
		
		$('.ui.dropdown').dropdown();
		
		$( "#startDate" ).datepicker({
			dateFormat:'ymmdd',
	        changeYear: true,
			changeMonth: true 
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
		
		<div class="five wide column">
			<div class="field">
				<label>브랜드</label>
				<select class="ui dropdown">
					<option value="">Select Country</option>
					<option>데이터가</option>
					<option>들어있나..?</option>
				</select>
			</div>
		</div>
		<div class="five wide column">
			<div class="field">
				<label>제조사</label>
				<input type="text" name="" id="" placeholder="제조사" />
			</div>
		</div>
		<div class="five wide column">
			<div class="ui form">
				<div class="field">
					<label>제조국</label>
					<select class="ui dropdown">
					  <option value="">Select Country</option>
				      <option value="AU">Australia</option>
				      <option value="AT">Austria</option>
				      <option value="BE">Belgium</option>
				      <option value="BR">Brazil</option>
				      <option value="CA">Canada</option>
				      <option value="CN">China</option>
				      <option value="CO">Colombia</option>
				      <option value="EG">Egypt</option>
				      <option value="FR">France</option>
				      <option value="DE">Germany</option>
				      <option value="HK">Hong Kong</option>
				      <option value="ID">Indonesia</option>
				      <option value="IT">Italy</option>
				      <option value="JP">Japan</option>
				      <option value="KR">Korea, Republic of</option>
				      <option value="MO">Macao</option>
				      <option value="MC">Monaco</option>
				      <option value="SG">Singapore</option>		
				      <option value="ES">Spain</option>
				      <option value="SE">Sweden</option>
				      <option value="GB">United Kingdom</option>
				      <option value="US">United States</option>
					</select>
				</div>
			</div>
		</div>
		
		<div class="five wide column">
			<div class="field">
				<label>카테고리</label>
				<select class="ui dropdown">
					<option value="">대분류</option>
					<option>데이터는</option>
					<option>내일 넣겠다.</option>
				</select>
			</div>
		</div>
		<div class="five wide column">
			<div class="field">
				<label>　</label>
				<select class="ui dropdown">
					<option value="">중분류</option>
					<option>데이터는</option>
					<option>내일 넣겠다.</option>
				</select>
			</div>
		</div>
		<div class="five wide column">
			<div class="field">
				<label>　</label>
				<select class="ui dropdown">
					<option value="">소분류</option>
					<option>데이터는</option>
					<option>내일 넣겠다.</option>
				</select>
			</div>
		</div>
		
		<div class="sixteen wide column">
			
			이미지 미리보기 자리
		</div>
		
		<div class="fourteen wide column"></div>
		<div class="two wide column">
			<div class="ui button">
				옵션 추가
			</div>
		</div>
		
		<div class="three wide column">
			<div class="field">
				<label>제품 번호</label>
				<input name="" type="text" placeholder="" />
			</div>
		</div>
		<div class="six wide column">
			<div class="field">
				<label>제품 이름</label>
				<input name="" type="text" placeholder="" />
			</div>
		</div>
		<div class="three wide column">
			<div class="field">
				<label>가격</label>
				<input name="" type="text" placeholder="" />
			</div>
		</div>
		<div class="three wide column">
			<div class="field">
				<label>재고</label>
				<input name="" type="text" placeholder="" />
			</div>
		</div>
		<div class="one wide column">
			<div class="field">
				<label>　</label>
				<i class="big remove icon"></i>
			</div>
		</div>
		
		<div class="sixteen wide column">
			<div class="field">
			    <label>성분 정보</label>
			    <textarea placeholder="제품의 성분 정보를 입력해주세요."></textarea>
			</div>
		</div>
		
	</div>
</form>
</body>
</html>