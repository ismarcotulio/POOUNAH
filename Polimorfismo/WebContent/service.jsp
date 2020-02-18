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

if(
		
	request.getParameter("Point") != null &&
	request.getParameter("Point").toString().trim().matches("\\d+,\\d+") &&
	request.getParameter("h") != null &&
	request.getParameter("w") != null

){
	Validator validator = new Validator();
	
	Point point = new Point(
		request.getParameter("Point").toString()
	);
	
	int h = validator.maxInt(
		request.getParameter("h"),
		0,
		100
	);
	
	int w = validator.maxInt(
		request.getParameter("w"),
		0,
		100
	);
	
	Rectangle rectangle = new Rectangle();
	
	out.print(
		rectangle.draw(point, h, w)		
	);
}else{
	if(
		request.getParameter("PointA") != null &&
		request.getParameter("PointA").toString().trim().matches("\\d+,\\d+") &&
		request.getParameter("PointB") != null &&
		request.getParameter("PointB").toString().trim().matches("\\d+,\\d+")
	){
		Validator validator = new Validator();
		
		Point pointA = new Point(
			request.getParameter("PointA").toString()	
		);
		
		Point pointB = new Point(
			request.getParameter("PointB").toString()	
		);
		
		Rectangle rectangle = new Rectangle();
		
		out.print(
			rectangle.draw(pointA, pointB)		
		);
		
		
	}
		
}

%>
</body>
</html>