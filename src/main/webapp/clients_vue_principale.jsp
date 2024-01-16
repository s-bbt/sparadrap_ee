<%--
page principale CLIENTS
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>

<html>
<head>
    <title>Clients</title>
</head>
<body>
<h1>Clients</h1>
<%--lien pour fenêtre pop-up "nouveau client"--%>
<a href="client_formulaire.jsp">Nouveau client</a>

<%--champs de recherche--%>
<div class="container" id="section-recherche-client">
    <div class="row">
        <div class="col-md-7" style="--bs-body-bg-rgb:blue-100">
            <h2>Rechercher un client</h2>
            <form action="clients_vue_principale.jsp" method="post">

                <label for="nom">Nom</label>
                <input type="text" id="nom" name="nom" required>

                <label for="prenom">Prénom</label>
                <input type="text" id="prenom" name="prenom" required>

                <label for="num_secu">Numéro de sécurité sociale</label>
                <input type="text" name="num_secu" id="num_secu" pattern="[1-2]{1}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{3}[0-9]{3}[0-9]{2}">

                <label for="telephone">Téléphone</label>
                <input type="tel" id="telephone" name="telephone"
                       pattern="[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}">

                <input id="btn-valider" type="submit">

            </form>
        </div>
    </div>
</div>

<div class="row" id="resultat-rech-client">
<%--TODO resultats de la recherche--%>
    <ul>
        <c:forEach var="client" items="${clientsList}">
            <li>${client.nom} ${client.prenom}</li>
        </c:forEach>
    </ul>

</div>

</body>
</html>
