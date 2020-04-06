<%@page import="Unidad3.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	User user = new User();
	user.setName("Programacion Objetos");
	user.setPassword("qwd123");
	session.setAttribute("user", user);
	session.setAttribute("form", "");
	session.setAttribute("temporal", "");
	session.setAttribute("shop", "");
	response.sendRedirect("page2.jsp");
%>

</body>
</html>