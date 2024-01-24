<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<html>
<head>
    <title>Résultat de la recherche</title>
</head>
<body>

<div class="card bg-light mb-8" style="width: 200px">
    <div class="card-header">Résultat de la recherche</div>
    <ul class="list-group list-group-flush">
    <jsp:useBean id="clientsList" scope="request" type="java.util.List"/>
    <c:forEach var="client" items="${clientsList}">
        <li class="list-group-item">${client.client_nom} ${client.client_prenom}</li>
        <%--            <li><c:out value="${client.client_nom }" /></li>--%>
    </c:forEach>
</ul>
</div>

</body>
</html>
