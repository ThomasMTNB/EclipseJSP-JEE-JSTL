<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<body>






	<form method="post" action="<c:url value="/AjouterAuteur"></c:url>">




		<fieldset>
			<legend>ajouter auteur</legend>
			
			

			<label for="nomAuteur"> prenom </label> 
			<input value="${auteur.prenom}" type="text" id="nomAuteur" name="nomAuteur" size="20" /> 
			<br>
			
			<label for="prenomAuteur"> nom</label> 
			<input value="${auteur.nom}" type="text" id="prenomAuteur"name="prenomAuteur" size="20" /> 
			<br>	
			
			<label for="telAuteur">	telephone</label> 
			<input value="${auteur.telephone}" type="text" id="telAuteur" name="telAuteur" size="10" /> 
			<br>	
						
			<label for="mailAuteur"> email</label> 
			<input value="${auteur.email}" type="text" id="mailAuteur" name="mailAuteur" size="60" />
			<br>




		</fieldset>

		<input type="submit" value="Valider" /> <input type="reset"
			value="Remettre a zero" />

	</form>

</body>
</html>