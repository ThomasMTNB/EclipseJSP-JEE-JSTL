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






	<form method="post" action="<c:url value="/ModifierAuteur"><c:param name="id" value="${auteur.id }" /></c:url>">




		<fieldset>
			<legend>modif auteur</legend>
			
			

			<label for="newPrenomAuteur"> prenom </label> 
			<input value="${auteur.prenom}" type="text" id="newPrenomAuteur" name="newPrenomAuteur" size="20" /> 
			<br>
			
			<label for="newNomAuteur"> nom</label> 
			<input value="${auteur.nom}" type="text" id="newNomAuteur"name="newNomAuteur" size="20" /> 
			<br>	
			
			<label for="newTelAuteur">	telephone</label> 
			<input value="${auteur.telephone}" type="text" id="newTelAuteur" name="newTelAuteur" size="10" /> 
			<br>	
						
			<label for="newMailAuteur"> email</label> 
			<input value="${auteur.email}" type="text" id="newMailAuteur" name="newMailAuteur" size="60" />
			<br>




		</fieldset>

		<input type="submit" value="Valider" /> <input type="reset"
			value="Remettre a zero" />

	</form>

</body>
</html>