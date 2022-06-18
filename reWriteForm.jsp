<%
//한글처리
request.setCharacterEncoding("UTF-8");

//전달한 데이터 저장 (bno,re_ref, re_lev, &re_seq)
int bno = Integer.parseInt(request.getParameter("bno"));
int re_ref = Integer.parseInt(request.getParameter("re_ref"));
int re_lev = Integer.parseInt(request.getParameter("re_lev"));
int re_seq = Integer.parseInt(request.getParameter("re_seq"));

//어떻게 가져갈 것인가? 폼태그안에 담아갈까? 주소창에 GET방식으로 가져갈까?
//bean의 멤버변수에 있는 변수는 폼태그안에 담아가면된다. =>hidden 인풋태그
%>
<fieldset>
<legend>게시판 답글쓰기</legend>
	<form action="reWritePro.jsp" method="post" name="fr">
	  <input type="hidden" name="bno" value="<%=bno%>">
	  <input type="hidden" name="re_ref" value="<%=re_ref%>">
	  <input type="hidden" name="re_lev" value="<%=re_lev%>">
	  <input type="hidden" name="re_seq" value="<%=re_seq%>">
	   글쓴이 : <input type="text" name="name" required><br>
	   비밀번호 : <input type="password" name="pw" required><br>
	   제목 : <input type="text" name="subject" maxlength="15" value="[답글] " required><br>
	   내용 : <br> 
	  <textarea rows="10" cols="35" name="content" placeholder="여기에 답글을 작성해주세요" required></textarea><br>
	  <input type="submit" value="답글등록" class="btn">
	  <button type="reset" class="btn">초기화</button>
	  <input type="button" value="목록으로" class="btn" onclick="location.href='boardList.jsp'">
	</form>
</fieldset>