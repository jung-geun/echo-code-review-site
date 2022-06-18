<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/bootstrap.css">


<title>Echo계정</title>
</head>
<body class="my-login-page" style="background-color: #f2f2f2">
	<nav class="navbar navbar-dark bg-white">
		<div class="navbar-header">
			<img src="img/echo_account3.png" />
		</div>
	</nav>
	
	<section class="h-100">
		<div class="container h-100" style="padding-top: 200px;">
			<div class="row justify-content-md-center align-items-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">비밀번호 찾기</h4>
							<form method="POST" class="my-login-validation" novalidate="">
								<div class="form-group">
									<input id="email"
										type="email" class="form-control" name="email" placeholder="Email Address" value=""
										required autofocus>
									<div class="invalid-feedback">Email is invalid</div>
									<div class="form-text text-muted">이메일로 초기화 비밀번호를 보내드립니다. </div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										인증메일 보내기</button>
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