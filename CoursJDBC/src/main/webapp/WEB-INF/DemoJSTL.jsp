<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Démo JSTL</title>
<link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css" />" />
</head>
<body>

	<h1>Démo JSTL</h1>
	
	<c:import url="/WEB-INF/menu.jsp" />

	<hr />

	<h2>Boucle</h2>

	<c:forEach var="i" begin="1" end="6" step="2">
		<p>
			Item
			<c:out value="${i}" />
		</p>
	</c:forEach>

	<hr />

	<c:forEach items="${ fruits }" var="fruit" varStatus="infoBoucle">
		<p class="${ infoBoucle.index % 2 == 0 ? 'pair' : 'impair' }">
			<c:out value="${ infoBoucle.index }" /> : <c:out value="${ fruit }" />
		</p>
	</c:forEach>

	<hr />

	<h2>Condition IF</h2>

	<c:if test="${ isGood == '0' }">
		Ce n'est pas bon !
	</c:if>
	
	<hr />
	
	<c:choose>
		<c:when test="${ isGood == '0' }">
			Ce n'est pas bon !
		</c:when>
		<c:when test="${ isGood == '1' }">
			C'est bon !
		</c:when>
		<c:otherwise>
			Je ne sais pas...
		</c:otherwise>
	</c:choose>

	<hr/>
	
	<h2>Lien</h2>
	
	<a href="<c:url value="/exo2" />">Retour à l'exo 2</a>
	<a href="<c:url value="/exo3"><c:param name="prenom" value="Toto" /><c:param name="nom" value="Tata" /></c:url>">Retour à l'exo 3</a>


	
</body>
</html>