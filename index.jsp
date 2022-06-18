<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="shortcut icon" href="./img/icon/echo_icon.ico"
	type="image/x-icon" />
	
<title>Echo | 애들아 코드좀</title>
</head>
<body class="index" style="background-color: #f2f2f2">

	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="navbar-header">
				<a href="index.jsp"><img src="img/echo.png" /></a>
			</div>
			<div class="container-fluid">
				<a class="navbar-brand" href="freeboard.jsp">자유게시판</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<a class="navbar-brand" href="qnaboard.jsp">질의응답 게시판</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				

				<a class="navbar-brand" href="#">자료실</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<a class="navbar-brand" href="#">고객센터</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>


				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">



					</ul>
					<form class="d-flex">
						<input class="form-control ml-auto" type="search" placeholder="검색"
							aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
					
					<a href="login.jsp"><button type="button" class="btn btn-light">로그인</button></a>
					
					<button type="button" class="btn btn-light">어드민</button>
				</div>
			</div>
		</nav>
	</div>
	
<!-- 배경이미지 아직 안넣음 공지사항이 이미지 위로 떠야함 -->

	<div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="hero-content text-center">
                        <h1 style="color:black; font-weight: bold;">공지사항</h1>
                    </div>
                </div>
            </div>
        </div>
        <img src="img/city.jpg">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>