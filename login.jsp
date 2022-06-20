<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String userID = (String) session.getAttribute("userID");
if (userID != null) {
%>
<script type="text/javascript">
	const result = confirm("로그아웃 하시겠습니까?");
	if (result) {
		alert("로그아웃 되었습니다.");
<%session.invalidate();%>
	} else if (!result) {
		alert("로그아웃이 취소되었습니다.");
<%response.sendRedirect("index.jsp");%>
	}
</script>
<%
} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="shortcut icon" href="./img/icon/myicon.ico"
	type="image/x-icon" />

<title>로그인 | Echo계정</title>

</head>

<body style="background-color: #f2f2f2">
	<nav class="navbar navbar-dark bg-white">
		<div class="navbar-header">
			<a href="index.jsp"><img src="img/echo_account3.png" /></a>
		</div>
	</nav>
	<div class="container h-100" style="padding-top: 200px;">
		<div class="row justify-content-md-center h-100">
			<div class="card-wrapper">
				<div class="card fat">
					<div class="card-body">

						<h3 class="card-title">로그인</h3>
						<form method="POST" class="my-login-validation"
							action="loginProc.jsp">

							<div class="form-group">
								<input type="text" class="form-control" placeholder="Id"
									name="ID" maxlength="20" required autofocus>
								<div class="invalid-feedback">ID is invalid</div>
							</div>

							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="Password" name="Password" maxlength="20" required
									data-eye>
								<div class="invalid-feedback">Password is required</div>
							</div>

							<div class="form-group">
								<div class="custom-checkbox custom-control">
									<input type="checkbox" name="remember" id="remember"
										class="custom-control-input"> <label for="remember"
										class="custom-control-label">ID 기억하기</label>
								</div>
							</div>

							<!-- 로그인 버튼만 구현됨 -->

							<div class="col text-center">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>

							<div class="mt-4 text-center">
								<a href="forgot.jsp" class="float-left"> 비밀번호 찾기 </a> <a
									href="register.jsp" class="float-right">계정 생성</a>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
<%
}
%>