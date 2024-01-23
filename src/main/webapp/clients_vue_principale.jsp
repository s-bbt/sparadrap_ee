<%--
page principale CLIENTS
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Clients</title>
</head>

<body class="m-2">
<h1>Clients</h1>
<%--lien pour fenêtre pop-up "nouveau client"--%>
<a href="client_formulaire.jsp" class="btn btn-outline-primary" id="btn-nv-client">Nouveau client</a>

<%-- formulaire : champs de recherche--%>

    <div class="row">
        <h2>Rechercher un client</h2>
        <form action="<%=request.getContextPath()%>/ClientRechercheSt" method="post">
            <div class="form-row">
                <div class="col-sm">
                <div class="form-group">
                    <label for="nom">Nom</label>
                    <input type="text" id="nom" name="nom" required>
                    <label for="prenom">Prénom</label>
                    <input type="text" id="prenom" name="prenom" required>
                </div>
                <div class="form-group">
                    <label for="num_secu">Numéro de sécurité sociale</label>
                    <input type="text" name="num_secu" id="num_secu"
                           pattern="[1-2]{1}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{3}[0-9]{3}[0-9]{2}">
                </div>
                <div class="form-group">
                    <label for="telephone">Téléphone</label>
                    <input type="tel" id="telephone" name="telephone"
                           pattern="[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}">
                </div>
                <%--bouton--%>
                <input id="btn-valider" type="submit">

        </form>
    </div>



<%--    afficher tous les clients --%>
<div class="card bg-light mb-6" style="width: 200px">
    <div class="card-header">Tous les clients</div>
    <ul class="list-group list-group-flush">
        <c:forEach var="client" items="${requestScope.clientsList}">
            <li class="list-group-item"><c:out value="${client.client_nom }"/> <c:out
                    value="${client.client_prenom}"/></li>
        </c:forEach>
    </ul>
</div>


<%--    <ul>--%>
<%--        <jsp:useBean id="clientsList" scope="request" type="java.util.List"/>--%>
<%--        <c:forEach var="client" items="${clientsList}">--%>
<%--            <li>${client.client_nom} ${client.client_prenom}</li>--%>
<%--&lt;%&ndash;            <li><c:out value="${client.client_nom }" /></li>&ndash;%&gt;--%>
<%--        </c:forEach>--%>
<%--    </ul>--%>

</body>
</html>