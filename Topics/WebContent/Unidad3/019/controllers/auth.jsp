<%@page import="Unidad3.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Controladoe de autenticacion
	
	//Se genera una variable generica para el manejo de las respuestas (tanto positivas como negativas)
	String statusResult = "#STATUS#";
	String messageResult = "#MESSAGE#";
	String result = String.format("{\"status\":%s, \"message\":%s}",statusResult, messageResult);
	
	if(
		request.getParameter("userName") != null &&
		request.getParameter("userPassword") != null
	){
		String subResult = result
				.replace(statusResult, "false")
				.replace(messageResult, "\"El usuario y/o la password no son validos.\"")
		;
		String userName = request.getParameter("userName").toString().trim();
		String userPassword = request.getParameter("userPassword").toString().trim();
		
		List<User> users = Auth.readList("auth.csv");
		for(User user: users){
			
			if(user.validate(userName, userPassword)){
				
				User userSession = new User();
				userSession.setName(user.getName());
				
				session.setAttribute("019_auth", userSession);
				
				subResult = result
					.replace(statusResult, "true")
					.replace(messageResult, "\"\"")
				;
				break;
			}
		}
		out.print(subResult);
	}else{
		//object.action().action().action()
		out.print(
			result
				.replace(statusResult, "false")
				.replace(messageResult, "\"No se han encontrado los parametros correctos.\"")
		);
	}
%>

    
    