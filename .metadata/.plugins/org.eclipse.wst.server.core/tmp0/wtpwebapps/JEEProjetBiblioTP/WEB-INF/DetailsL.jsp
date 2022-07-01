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

		<span> titre : <c:out value="${Details.titre }"></c:out>
		</span>
		 <span> nom : <c:out value="${Details.auteur.nom }"></c:out>
		</span> 
		<span> prenom : <c:out value="${Details.auteur.prenom }"></c:out>
		</span>
		
		<span> categorie : <c:out value="${Details.categorie }"></c:out>
		</span>
		 <span> nombre de page : <c:out value="${Details.nbPages }"></c:out>
		</span>


	</div>



</body>
</html>