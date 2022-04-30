<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="${url}/css/signup.css" rel="stylesheet" type="text/css">
<script src="/myapp/js/member.js" type="text/javascript"></script>
<script type="text/javascript">
	/*회원가입 유효성 체크*/
	function maxLengthCheck(object) {
		if (object.value.length > object.maxLength) {
			object.value = object.value.slice(o, object.maxLength);
		}
	}
	let inputDataCheck = (id) => {
		if (id) {
			$("#" + id).removeClass("is-invalid");
		}
	}
	

	 $(function() {
		//아이디 중복검사
		$("#userid").keyup(function() {
				var userid = $("#userid").val();
				if (userid != '' && userid.length >= 6) {
					var url = "/myapp/member/memberIdCheck";
					$.ajax({
						url : url,
						data : "userid=" + userid,
						type : "POST",
						success : function(result) {
							if (result > 0) {//사용불가능
								$("#chk").html("아이디가 존재합니다.");
								$("#idchk").val("N");
								$("#chk").css("color", "red")
							} else {//사용가능
								$("#chk").html("사용 가능한 아이디입니다.");
								$("#idchk").val("Y");
								$("#chk").css("color", "blue")
							}
						}
					});
				} else {//사용불가
					$("#chk").html("6글자 이상 입력해주세요");
					$("#idchk").val("N");
					$("#chk").css("color", "red")
				}
			
		});
	}); 
	

</script>

<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<div class="header">
				<h3>회원 가입</h3>
			</div>
			<form class="form-horizontal" method="post"
				action="/myapp/member/memberOk" id="mFrm"
				onsubmit="return memberCheck()">
				
				<ul>
					<li>아이디</li>
					<li>
					<input type="text" class="form-control" name="userid"
						id="userid" placeholder="아이디 입력" maxLength=20
						onInput="maxLengthCheck(this)" onKeyUp="inputDataCheck(this.id)" required>
						<input type="text" id='idchk'
						value="N" style="visibility: hidden"><br/>
						</li>
					<li><span id='chk'></span>
					</li>
					<li>비밀번호</li>
					<li><input type="password" class="form-control" name="userpwd"
						id="userpwd" placeholder="비밀번호 입력" required maxLength=20
						onInput="maxLengthCheck(this)" onKeyUp="inputDataCheck(this.id)" required>
						<div class="invalid-feedback"></div></li>

					<li>비밀번호 확인</li>
					<li><input type="password" class="form-control"
						name="userpwd2" id="userpwd2" placeholder="비밀번호 다시 입력" required
						maxLength=20 onInput="maxLengthCheck(this)"
						onKeyUp="inputDataCheck(this.id)">
						<div class="invalid-feedback"></div></li>

					<li>닉네임</li>
					<li><input type="text" class="form-control" name="username"
						id="username" placeholder="닉네임 입력" required maxLength=20
						onInput="maxLengthCheck(this)" onKeyUp="inputDataCheck(this.id)" required>
						<span id='chk'></span>
						<div class="invalid-feedback"></div> <input type="text" id='idchk'
						value="N" style="visibility: hidden"></li>

					<li>연락처</li>
					<li><select name='tel1' id="tel1">
							<option value='010'>010</option>
							<option value='02'>02</option>
							<option value='031'>031</option>
							<option value='041'>041</option>
					</select><span id="s">-</span><input type='text' class="form-control" name='tel2' required maxlength="4" id='tel2' /><span id="s"> - </span><input type='text'
						class="form-control" name='tel3' required maxlength="4" id='tel3' /></li>

					<li>이메일</li>
					<li><input type="email" class="form-control" name="email"
						id="email" placeholder="이메일 입력" required>
						<div class="invalid-feedback"></div></li>
					<li><input type="submit" value="가입하기"
						class="btn btn-default btn-block btn-social-login btn-social-f" onclick="memberCheck()"/>
						<img src="${url}/images/logo_orange.png" width="20px" id="signup-logo"/></li>
				</ul>
			</form>
		</div>
	</div>
</div>