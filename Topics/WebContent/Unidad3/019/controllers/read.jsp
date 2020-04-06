<%@page import="Unidad3.Form019"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	if(
		session.getAttribute("form") != null &&
		session.getAttribute("form").getClass().getSimpleName().equals("form019")
	){
		out.print("yes");
		Form019 form = (Form019) session.getAttribute("form");
		
		out.print(String.format(
				"{\"status\":true,\"name\":\"%s\",\"age\":\"%s\",\"id\":\"%s\",\"description\":\"%s\"}",
				form.getName(),
				form.getAge(),
				form.getId(),
				form.getDescription()
		));
	}else{
		out.print(String.format("{\"status\":false}"));
	}
%>