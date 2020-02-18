<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="service.jsp">
		<p>Seleccione una opcion de etiqueta a crear:</p>
		<select name="htmlTag">
			<option value="0">Paragraph</option>
			<option value="1">Span</option>
			<option value="2">Division</option>
			<option value="3">Anchor</option>		
		</select><hr>
		
		<p>Escriba un contenido a crear dentro de la etiqueta:</p>
		<textarea name="htmlContent" rows="3" cols="40"></textarea><br>
		
		<button type="submit">Enviar formulario</button>
	
	</form>
</body>
</html>