<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ALLO</title>


</head>

<body>

<a href="<c:url value="/AjouterLivre"><c:param name="id" value="${livre.id }" /></c:url>"> Ajouter Livre </a>

	<c:choose>

		<c:when test="${ empty booklist }">
		<p>Vide</p>
		
		</c:when>
		
		<c:otherwise>

			<table>

				<tr>
					<th>titre</th>
					<th>auteur</th>
					<th>categorie</th>
					<th>nombre de page</th>
					<th>action</th>
					<th>Delet</th>

				</tr>

				<c:forEach items="${booklist}" var="livre">

					<tr>
						<td><c:out value="${livre.titre}"></c:out></td>
						<td><c:out value="${livre.auteur.nom}"></c:out><c:out value="${livre.auteur.prenom}"></c:out></td>
						<td><c:out value="${livre.categorie}"></c:out></td>
						<td><c:out value="${livre.nbPages }"></c:out></td>

						
						<td><a href="<c:url value="/DetailsLivre"><c:param name="id" value="${livre.id }" /></c:url>"> Voir </a>
						<a href="<c:url value="/ModifierLivre"><c:param name="id" value="${livre.id }" /></c:url>"> modif </a>
						</td>
						
						<td><a href="<c:url value="/SupprimerLivre"><c:param name="id" value="${livre.id }" /></c:url>"> DELETE </a></td>
						

					</tr>
				</c:forEach>
				
			</table>	
				
		</c:otherwise>
	</c:choose>


</body>
</html>