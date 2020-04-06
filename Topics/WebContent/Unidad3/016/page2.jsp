<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("userName", "Programacion Objetos");
	response.sendRedirect("index.jsp");
%>