<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String statusResult = "#STATUS#";
	String messageResult = "#MESSAGE#";
	String result = String.format("{\"status\":%s,\"message\":%s}", statusResult, messageResult);
	
	//Se agrega la "nocion" de validacion de usuario, pero no se ha agregado verificar que 
	//el usuario existe en el archivo de autenticacion
	
	if(
		session.getAttribute("019_auth") != null &&
		session.getAttribute("019_auth").getClass().getSimpleName().equals("User")
	){
		if(
			session.getAttribute("019_auth") != null &&
			session.getAttribute("019_auth").getClass().getSimpleName().equals("User")	
		){
			User user = (User) session.getAttribute("019_auth");
			Form019 form = (Form019) session.getAttribute("form");
			FileManager fm = new FileManager();
			
			//El create debe modificarse para retornar un boolean
			fm.create(
				String.format("%s.json", user.getName()),
				String.format(
					"{\"name\":\"%s\",\"age\":\"%s\",\"id\":\"%s\",\"description\":\"%s\"}",
					form.getName(),
					form.getAge(),
					form.getId(),
					form.getDescription()
				)
			);
			out.print(
				result
					.replace(statusResult, "true")
					.replace(messageResult, "\"No se ha detectado un formulario a almacenar en disco.\"")
			);
		}else{
			out.print(
				result
					.replace(statusResult, "false")
					.replace(messageResult, "\"No se ha detectado un formulario a almacenar en disco.\"")
			);
		}
	}else{
		out.print(
				result
					.replace(statusResult, "false")
					.replace(messageResult, "\"No se ha detectado un usuario autenticado o un usuario valido.\"")
		);
	}
%>