<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/bootstrap.css">

<link rel="shortcut icon" href="./img/icon/myicon.ico"
	type="image/x-icon" />
<title>계정 생성 | Echo계정</title>
</head>
<body style="background-color: #f2f2f2">
	<nav class="navbar navbar-dark bg-white">
		<div class="navbar-header">
			<img src="img/echo_account3.png" />
		</div>
	</nav>

	<section class="h-100">
		<div class="container h-100" style="padding-top: 150px;">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">
								계정 만들기<br>
							</h4>
							<form method="POST" class="my-login-validation" novalidate="" action="registerProc.jsp">

								<div class="form-group">
									<input id="id" type="text" class="form-control"
										placeholder="ID" name="ID" required>
									<div class="invalid-feedback" required autofocus>ID is
										required</div>
								</div>

								<div class="form-group">
									<input id="password" type="password" class="form-control"
										placeholder="Password" name="password" required data-eye>
									<div class="invalid-feedback">Password is required</div>
								</div>

								<div class="form-group">
									<input id="tel" type="tel" class="form-control" name="phone"
										placeholder="Phone Number" pattern="[0-9]{11}" required>
									<div class="invalid-feedback">Phone Number is invalid</div>
								</div>

								<div class="form-group">
									<input id="name" type="text" class="form-control" name="name"
										placeholder="Name" required autofocus>
									<div class="invalid-feedback">What's your name?</div>
								</div>



								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="agree" id="agree"
											class="custom-control-input" required=""> <label
											for="agree" class="custom-control-label"><a href="#">이용약관</a>에
											동의합니다. </label>
										<div class="invalid-feedback">You must agree with our
											Terms and Conditions</div>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										회원가입</button>
								</div>
								<div class="mt-4 text-center">
									이미 계정이 있다면 <a href="login.jsp">로그인</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>