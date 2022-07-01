<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Frutz</title>
</head>
<body>
	<h1>Les fruits</h1>

	<p>
	
	${fruit.get(0)}
	${fruit.get(1)}
	${fruit.get(2)}
	
	</p>
	
	<h2>${isGood}</h2>
	
	<h2>${nom}</h2>

</body>
</html>