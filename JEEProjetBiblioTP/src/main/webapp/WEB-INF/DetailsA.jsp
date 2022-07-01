<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details auteur</title>


</head>

<body>

	<c:import url="/WEB-INF/menu.jsp" />

	<div class="details">

		<span> nom : <c:out value="${Details.nom }"></c:out>
		</span> 
		<span> prenom : <c:out value="${Details.prenom }"></c:out>
		</span> 
		<span> telephone : <c:out value="${Details.telephone }"></c:out>
		</span>
		 <span> email : <c:out value="${Details.email }"></c:out>
		</span>


	</div>




</body>
</html>