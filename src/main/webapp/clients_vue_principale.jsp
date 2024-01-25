<%--
page principale CLIENTS
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<link href="ressources/css/client_vue_principale.css">

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
                <input type="submit" id="btn-rech-client">

    </form>
</div>

<%--TODO lien cliquable vers détails clients--%>

<%-- afficher le résultat de la recherche client --%>
<c:if test="${not empty param}">
    <div class="card bg-light mb-10" style="width: 300px">
        <div class="card-header">Résultat de la recherche</div>
        <ul class="list-group list-group-flush">
            <jsp:useBean id="clientsList" scope="request" type="java.util.List"/>
            <c:forEach var="client" items="${clientsList}">
                <li class="list-group-item">
                    <div style="display: flex; justify-content: space-between; align-items: center">
                            ${client.client_nom} ${client.client_prenom}
<%--                        <a href="ClientDetailsSt" class="btn btn-light">Détails</a>--%>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>
</c:if>

</body>
</html>