<%@page import="data.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="data.BoardDao"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
String userID = (String) session.getAttribute("userID");
String type = request.getParameter("type");

if (userID == null) {
	response.sendRedirect("login.jsp");
} else {
	String bbsTitle = request.getParameter("bbsTitle");
	String bbsContent = request.getParameter("bbsContent");
	System.out.print(type);

	BoardDao dao = BoardDao.getInstance();
	BoardDto board = new BoardDto();
	board.setID(userID);
	board.setContent(bbsContent);
	board.setTitle(bbsTitle);

	int result = 0;
	if (type.equals("자유게시판")) {
		result = dao.insertBoard(board, type); // type : 1 : 자유게시판, 2 : 질문게시판
	} else if (type.equals("질문게시판")) {
		result = dao.insertBoard_qna(board, type);
	}

	if (result == 1) {
%>
<script type="text/javascript">
	alert("게시글이 등록되었습니다.");
</script>
<%
if (type == "자유게시판") {
	response.sendRedirect("freeboard.jsp");
} else {
	response.sendRedirect("qnaboard.jsp");
}
} else if (result == 0) {
%>
<script type="text/javascript">
	alert("게시글 등록에 실패하였습니다.");
</script>
<%
if (type == "자유게시판") {
	response.sendRedirect("freeboard.jsp");
} else {
	response.sendRedirect("qnaboard.jsp");
}
} else if (result == -1) {
%><script type="text/javascript">
	alert("게시글 등록에 실패하였습니다.");
</script>
<%
if (type == "자유게시판") {
	response.sendRedirect("freeboard.jsp");
} else {
	response.sendRedirect("qnaboard.jsp");
}
}

}
%>
