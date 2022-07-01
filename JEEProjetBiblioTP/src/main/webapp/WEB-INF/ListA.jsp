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

	<h1>Les Auteurs</h1>

<a href="<c:url value="/AjouterAuteur"><c:param name="id" value="${auteur.id }" /></c:url>"> Ajouter Auteur</a>



	<c:choose>

		<c:when test="${ empty listeAuteur }">
		<p>Vide</p>
		
		</c:when>
		
		<c:otherwise>

			<table>

				<tr>
					<th>Nom</th>
					<th>Prenom</th>
					<th>telephone</th>
					<th>email</th>
					<th>action</th>
					<th>SUPR</th>
				</tr>

				<c:forEach items="${listeAuteur}" var="auteur">

					<tr>
						<td><c:out value="${auteur.nom}"></c:out></td>
						<td><c:out value="${auteur.prenom}"></c:out></td>
						<td><c:out value="${auteur.telephone}"></c:out></td>
						<td><c:out value="${auteur.email}"></c:out></td>
						
						<td><a href="<c:url value="/DetailsAuteur"><c:param name="id" value="${auteur.id }" /></c:url>"> Voir </a>
						<a href="<c:url value="/ModifierAuteur"><c:param name="id" value="${auteur.id }" /></c:url>"> modif </a>
						</td>
						
						<td><a href="<c:url value="/SupprimerAuteur"><c:param name="id" value="${auteur.id }" /></c:url>"> DELETE </a></td>
						

					</tr>
				</c:forEach>
				
			</table>	
				
		</c:otherwise>
	</c:choose>

	


</body>
</html>






<!-- <c:choose>

<c:when test="${ empty auteur }"></c:when>
<c:otherwise>

<c:forEach items="${listeAuteur}" var="auteur">


			<li><c:out value="${auteur}"></c:out></li>
	
		</c:forEach>

</c:otherwise>

</c:choose> -->












