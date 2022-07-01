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






	<form method="post" action="<c:url value="/ModifierLivre"><c:param name="id" value="${livre.id }" /></c:url>">




		<fieldset>
			<legend>modif livre</legend>
			
			
			
			
			<label for= "AuteurLivre"> choix auteur </label>
			<select id ="AuteurLivre" name="AuteurLivre">
			<c:forEach items="${trouverAuteur}" var ="auteur">
			
			<option ${ auteur.id == livre.auteur.id ? "selected" : "" } value ="<c:out value="${auteur.id }"/>"> <c:out value="${auteur.nom }"/> <c:out value="${auteur.prenom }"/>    </option>
			</c:forEach>
			
			
			
			</select>
			<br>
			
			

			<label for="newTitreLivre"> Titre </label> 
			<input value="${livre.titre}" type="text" id="newTitreLivre" name="newTitreLivre" size="20" /> 
			<br>
			
			<label for="newCategorieLivre"> categorie</label> 
			<input value="${livre.categorie}" type="text" id="newCategorieLivre"name="newCategorieLivre" size="20" /> 
			<br>	
			
			<label for="newnbpageLivre">	nombre de page </label> 
			<input value="${livre.nbPages}" type="text" id="newnbpageLivre" name="newnbpageLivre" size="10" /> 
			<br>	
						
			




		</fieldset>

		<input type="submit" value="Valider" /> <input type="reset"
			value="Remettre a zero" />

	</form>

</body>
</html>