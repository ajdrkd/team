<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
	charset="utf-8"></script>
</head>
<body>
	<div class="wrapper">

		<div class="wrap">
			<form id="login_form" method="post">
				<div class="logo_wrap">
					<span>MINPARKKANG LOGIN</span>
				</div>
				<div class="login_wrap">
					<div class="id_wrap">
						<div class="id_input_box">
							<input class="id_input" name="user_id" placeholder="아이디">
						</div>
					</div>
					<div class="pw_wrap">
						<div class="pw_input_box">
							<input class="pw_iput" name="password" placeholder="비밀번호"><br>
							&nbsp;<span id="checklogin"></span><br>
						</div>
					</div>
					<div class="login_button_wrap">
						<input type="button" class="login_button" value="로그인">
					</div>
					<br>
					<div id="naverIdLogin"></div>
					<!-- //네이버아이디로로그인 버튼 노출 영역 -->

				</div>
			</form>
		</div>

	</div>
	<script>
		/* 로그인 버튼 클릭 메서드 */
		$(".login_button").click(function() {
			/* 로그인 메서드 서버 요청 */
			$("#login_form").attr("action", "/member/login");
			$("#login_form").submit();
		});
	</script>
	<!-- 네이버아디디로로그인 초기화 Script -->
	<script type="text/javascript">
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "kZ3Dhu0SmGhumoSEF0uv",
			callbackUrl : "http://localhost:8080/main",
			isPopup : false, /* 팝업을 통한 연동처리 여부 */
			loginButton : {
				color : "green",
				type : 3,
				height : 60
			}
		/* 로그인 버튼의 타입을 지정 */
		});

		/* 설정정보를 초기화하고 연동을 준비 */
		naverLogin.init();
	</script>
	<!-- // 네이버아이디로로그인 초기화 Script -->
</body>
</html>

