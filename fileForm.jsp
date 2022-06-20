<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="shortcut icon" href="img/icon/echo_icon.ico"
	type="image/x-icon" />

<title>ECHO | 자료실</title>
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="navbar-header">
				<a href="index.jsp"><img src="img/echo.png" /></a>
			</div>
		</nav>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="hero-content text-center">
					<h1 style="color: black; font-weight: bold;">자료실</h1>
				</div>
			</div>
		</div>
	</div>

</head>
<body>
   <form name="fileForm" method="post" 
      enctype="multipart/form-data" action="fileUpload.jsp">
	작성자: 
	<input type="text" name="user"><br>
	제  목: 
	<input type="text" name="title"><br>
	파일명: 
	<input type="file" name="uploadFile"><br>
	<input type="submit" value="파일 올리기"><br>
</form>
</body>
</html>