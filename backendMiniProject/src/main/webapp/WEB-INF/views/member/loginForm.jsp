<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="${url}/css/signin.css" rel="stylesheet" type="text/css">
<style>
#log {
	width: 400px;
	margin: 0px auto;
}

#log>h1 {
	text-align: center;
}

#logfrm>ul>li {
	float: left;
	width: 30%;
}

#logfrm>ul>li:nth-child(2n) {
	width: 70%;
}

#logfrm>ul>li:last-of-type {
	width: 100%;
	text-align: center;
	margin-top: 30px;
}
</style>
<script>
	function logFormCheck() {
		//아이디와 비밀번호 입력 유무를 확인하고, 모두 입력되면 action의 파일을 요청하고
		//하나라도 입력이 안되면 현재 페이지에 머물러야 한다.
		//아이디가 있는지 확인
		var id = document.getElementById("userid");
		if (id.value == "") {//아이디가 없을 때
			alert("아이디를 입력하세요.");
			id.focus();//focus : 커서를 해당 객체에 위치시킨다.
			return false;
		}
		if (document.querySelector("#userpwd").value == "") {
			alert("비밀번호를 입력하세요.");
			document.querySelector("#userpwd").focus();
			return false;
		}
		//아이디와 비밀번호가 모두 입력되었을 떄    
		return true;
	}
</script>
<div class="findit-box-bottom">
	<div class="wrap">
		<div class="content-box container">
			<div class="content-header">
					<h3>로그인</h3>
			</div>

			<div id="log" class="login">
				<div class="login-input">
					<form class="form-horizontal" method="post"
						action="/myapp/member/loginOk" id="logfrm"
						onsubmit="return logFormCheck()">
						<div class="form-group">
							<div class="col-sm-8">
								<input type="text" class="form-control" name="userid"
									id="userid" placeholder="아이디 입력" required maxLength=20
									onInput="maxLengthCheck(this)"
									onKeyUp="inputDataCheck(this.id)">
								<div class="invalid-feedback"></div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-8">
								<input type="password" class="form-control" name="userpwd"
									id="userpwd" placeholder="비밀번호 입력" required maxLength=20
									onInput="maxLengthCheck(this)"
									onKeyUp="inputDataCheck(this.id)">
								<div class="invalid-feedback"></div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-8">
								<input type="submit" class="btn btn-default col-sm-12" id="btn_sumit"
									value="로그인" />
							</div>
						</div>
						
					</form>
				</div>

				<div class="btn-social col-sm-8">
					<hr />
					아이디가 없으신가요? <a href="${url}/member/memberForm" id="btn_f"
						class="btn btn-default btn-block btn-social-login btn-social-f"><img class="signup-img"
						src="${url}/images/logo_orange.png" width="20px">&nbsp;파인드잇
						회원가입</a>
				</div>
			</div>
		</div>
	</div>
</div>

