<%
// 한글 처리 
request.setCharacterEncoding("UTF-8");
// 액션태그 사용 파라미터값 저장
// useBean,setProperty
%>
<jsp:useBean id="bb" class="com.itwillbs.board.BoardBean"/>
<jsp:setProperty property="*" name="bb"/>	   
<%
System.out.println(bb);
// ip 정보 저장
bb.setIp(request.getRemoteAddr());

// BoardDAO 객체 생성 - reInsertBoard(객체)
BoardDAO bdao = new BoardDAO();
bdao.reInsertBoard(bb); 

// 페이지 이동(글 목록)
response.sendRedirect("boardList.jsp");
%>