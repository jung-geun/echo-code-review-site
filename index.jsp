<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//세션 불러오기
String userID = (String) session.getAttribute("userID");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="shortcut icon" href="./img/icon/echo_icon.ico"
	type="image/x-icon" />

<link rel="stylesheet" href="css/style.css">
<style>
div {
	position: relative;
}

#cm {
	position: absolute;
}

.hc {
	width: 200px;
	left: 0;
	right: 0;
	margin-left: auto;
	margin-right: auto;
} /* 가로 중앙 정렬 */
.vc {
	height: 40px;
	top: 0;
	bottom: 0;
	margin-top: auto;
	margin-bottom: auto;
} /* 세로 중앙 정렬 */
</style>
<title>Echo | 애들아 코드좀</title>
</head>
<body class="index" style="background-color: #f2f2f2">

	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light````````">
			<div class="navbar-header">
				<a href="index.jsp"><img src="img/echo.png" /></a>
			</div>
			<div class="container-fluid">
				<a class="navbar-brand menu" href="freeboard.jsp">자유게시판</a>
				<!--<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
				</button>-->

				<a class="navbar-brand menu" href="qnaboard.jsp">질의응답 게시판</a>
				<!--<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					
				</button>-->


				<a class="navbar-brand menu" href="fileForm.jsp">자료실</a>
				<!--<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
				</button>-->


				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">



					</ul>
					<form class="d-flex">
						<input class="form-control ml-auto" type="search" placeholder="검색"
							aria-label="Search">
						<button class="btn btn-outline-success searchbtn" type="submit">Search</button>
					</form>
					<a class="leftpush" href="login.jsp" class=""><button
							type="button" class="btn btn-light login">
							<%
							if (userID == null) {
							%>
							로그인
							<%
							} else if (userID != null) {
							%>
							로그아웃
							<%
							}
							%>
						</button></a> <a class="leftpush" href="http://pieroot.xyz:8080/ECHO/admin/index.jsp"><button type="button"
							class="btn btn-light admin">어드민</button></a>
				</div>
			</div>
		</nav>
	</div>

	<!-- 배경이미지 아직 안넣음 공지사항이 이미지 위로 떠야함 -->

	
	
	<img src="img/background.png"background-size:cover;>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>