<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
@charset "UTF-8";

.header {
	text-align: center;
}

.container{
	overflow:hidden;
	height:auto;
}

.findit-box-bottom .wrap .container {
	width: 40%;
	padding:100px;
}

#mFrm li{
	float: left; height:40px; line-height:40px; width:25%;
	text-align:left;
	margin-top: 15px;
}

#mFrm li:nth-child(2n){
	width: 75%;
}

#mFrm li:last-child {
	width: 100%;
	text-align:center;
}

#tel1, #tel2, #tel3, #s{
	margin-left:3px;
	float:left;
}
#tel1, #tel2, #tel3{
	width:30%;
	height:40px; 
	line-height:40px;
}

.btn-social-login.btn-social-f {
	background-color: #F8CF95;
	border-color: #F8CF95;
	color: #ffffff;
	
}

.signup-img{
	position:relative;
	left:-50px;
	top:-40px;
}
input[type="password" i], input[type="text" i], input[type="email" i]{
	font-family:san-serif;
}
</style>
<script>
	$(function(){
		$("#mFrm").submit(function(){
			if($("#userpwd").val()==''){
				alert("비밀번호 입력 후 수정 하세요");
				return false;
			}
			if($("#username").val()==''){
				alert("이름을 입력하세요");
				return false;
			}
			var reg = /^[0-9]{3,4}$/
			var reg2 = /^[0-9]{4}$/
			if(!reg.test($("#tel2").val())|| !reg2.test($("#tel3").val())){
				alert("전화번호를 잘못 입력하였습니다.");
				return false;
			}
			return true; 
		})
	});
</script>



<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<div class="header">
				<h3>회원 정보 수정</h3>
			</div>
			<form class="form-horizontal" method="post"
				action="/myapp/member/memberEditOk" id="mFrm">
				<ul>
					<li>아이디</li>
					<li>${vo.userid }</li>
					<li>비밀번호</li>
					<li><input type="password" class="form-control" name="userpwd"
						id="userpwd" placeholder="비밀번호 입력" required maxLength=20
						onInput="maxLengthCheck(this)" onKeyUp="inputDataCheck(this.id)">

					<li>비밀번호 확인</li>
					<li><input type="password" class="form-control"
						name="userpwd2" id="userpwd2" placeholder="비밀번호 다시 입력" required
						maxLength=20 onInput="maxLengthCheck(this)"
						onKeyUp="inputDataCheck(this.id)">

					<li>닉네임</li>
					<li><input type="text" class="form-control" name="username"
						id="username" placeholder="닉네임 입력" required maxLength=20
						onInput="maxLengthCheck(this)" onKeyUp="inputDataCheck(this.id)" value="${vo.username}">
						<span id='chk'></span> <input type="text" id='idchk'
						value="N" style="visibility: hidden"></li>

					<li>연락처</li>
					<li><select name='tel1' id="tel1">
							<option value='010'<c:if test="${vo.tel1=='010'}">selected</c:if>>010</option>
							<option value='02'<c:if test="${vo.tel1=='02'}">selected</c:if>>02</option>
							<option value='031'<c:if test="${vo.tel1=='031'}">selected</c:if>>031</option>
							<option value='041'<c:if test="${vo.tel1=='041'}">selected</c:if>>041</option>
					</select><span id="s">-</span><input type='text' class="form-control" name='tel2' id='tel2'  maxlength="4" value="${vo.tel2 }"/><span id="s"> - </span><input type='text'
						class="form-control" name='tel3' id='tel3'  maxlength="4" value="${vo.tel3 }"/></li>

					<li>이메일</li>
					<li><input type="email" class="form-control" name="email"
						id="email" placeholder="이메일 입력"  value="${vo.email}">
						</li>
					<li><input type="submit" value="정보 수정하기"
						class="btn btn-default btn-block btn-social-login btn-social-f" />
						<img src="${url}/images/logo_orange.png" width="20px" class="signup-img" id="signup-logo"/></li>
				</ul>
			</form>
		</div>
	</div>
</div>