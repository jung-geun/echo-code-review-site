<%@page import="data.UserDto"%>
<%@page import="data.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String password = request.getParameter("password");
String ID = request.getParameter("ID");
String phone = request.getParameter("phone");

UserDao dao = UserDao.getInstance();
UserDto user = new UserDto();
user.setName(name);
user.setPassword(password);
user.setID(ID);
user.setPhone(phone);
int result = dao.insertUser(user);
if (result == 1) {
%>
<script>
	alert("이예이");
</script>
<%
response.sendRedirect("login.jsp");
} else if (result == -1) {
%>
<script>
	alert("뭔가 문제가 생긴듯 함.");
	history.back();
</script>
<%
} else if (result == 0) {
%>
<script>
	alert("이미 존재하는 아이디입니다.");
	history.back();
</script>

<%
}
%>