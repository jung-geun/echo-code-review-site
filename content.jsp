
<%@page import="data.BoardDto"%>
<%@page import="data.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));
BoardDao dbPro = BoardDao.getInstance();
BoardDto article = dbPro.getBoard(num, "자유게시판");
%>
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<p>글내용 보기</p>
	<%
	if (article != null) {
	%>
	<form>
		<table>
			<tr height="30" height="30">
				<td align="center" width="125">글번호</td>
				<td align="center" width="125" align="center"><%=article.getNum()%></td>
			</tr>
			<tr height="30" height="30">
				<td align="center" width="125">작성자</td>
				<td align="center" width="125" align="center"><%=article.getID()%></td>
				<td align="center" width="125">작성일</td>
				<td align="center" width="125" align="center"><%=article.getRegDate()%></td>
			</tr>
			<tr height="30" height="30">
				<td align="center" width="125">글제목</td>
				<td align="center" width="375" align="center" colspan="3"><%=article.getTitle()%></td>
			</tr>
			<tr>
				<td align="center" width="125" height="30">글내용</td>
				<td align="left" width="375" colspan="3"><%=article.getContent()%></td>
			</tr>
			<tr height="30">
				<td colspan="2" align="right">
					<input type="button" value="답글쓰기"
					Onclick="window.location='write.jsp'"> <input
					type="button" value="글목록" Onclick="window.location='freeboard.jsp'">
				</td>
			</tr>
		</table>
	</form>
	<%
	} else {
	out.println("게시글이 없습니다.");
	}
	%>
</body>
</html>