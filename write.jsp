<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>ECHO</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	String type = request.getParameter("type");
	if (type == null) {
		type = "자유게시판";
	} else if (type.equals("free")) {
		type = "자유게시판";
	} else if (type.equals("qna")) {
		type = "질문게시판";
	}
	System.out.print(type);
	%>

	<nav class="navbar navbar-default">
		<div class="navbar-header">

			<a class="navbar-brand" href="index.jsp"><img src="img/echo.png" /></a>
		</div>

		<%-- 네비게이션 바 login 되어있음 => 로그아웃 login 안되어있음 => 회원가입, 로그인
			
			class=active를 포함하면 li 태그에 표식 생김
		
		 --%>
		<%
		if (userID == null) {
		%>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li class="active"><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
		</div>

		<%
		} else {
		%>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class="active"><a href="bbs.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
		</div>
		<%
		}
		%>

	</nav>
	<div class="container">
		<div class="row">
			<form method="post" action="writeproc.jsp">
				<input type="hidden" name="type" value="<%=type%>">
				<table class="table table-striped"
					style="text-align: center; height: 800px; width: 1000px; border: 1px solid #dddddd">
					<%-- 홀,짝 행 구분 --%>
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeeee; text-align: center;">
								글쓰기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea type="text" class="form-control"
									placeholder="글 내용" name="bbsContent" rows="30" cols="30"
									maxlength="2048" style="resize: none;">
						   </textarea></td>
						</tr>
						<tr>
							<!-- 							<td><input type="file" class="form-control" name="bbsFile"></td> -->
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>

	<script
		src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>