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

<%--div bloc principal--%>
<div class="border border-primary-subtle rounded-2 m-2 p-4">
    <h1>Clients</h1>

    <%--lien pour fenêtre pop-up "nouveau client"--%>
    <a href="client_formulaire.jsp" class="btn btn-outline-primary" id="btn-nv-client">Nouveau client</a>

    <%-- div recherche --%>
    <div class="row border border-primary-subtle rounded-2 p-3 m-2">
        <h2>Rechercher un client</h2>

        <%-- formulaire : champs de recherche --%>
        <div class="col-md-6">
            <form action="<%=request.getContextPath()%>/ClientRechercheSt" method="post">
                <div class="row g-3">
                    <div class="form-group col-md-3">
                        <label for="nom" class="form-label">Nom</label>
                        <input type="text" id="nom" name="nom" required>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="prenom" class="form-label">Prénom</label>
                        <input type="text" id="prenom" name="prenom" required>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="num_secu" class="form-label">Numéro de sécurité sociale</label>
                        <input type="text" name="num_secu" id="num_secu"
                               pattern="[1-2]{1}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{3}[0-9]{3}[0-9]{2}">
                    </div>
                    <div class="form-group col-md-12">
                        <label for="telephone" class="form-label">Téléphone</label>
                        <input type="tel" id="telephone" name="telephone"
                               pattern="[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}">
                    </div>
                </div>
                <%--bouton--%>
                <input type="submit" class="btn btn-outline-secondary">
            </form>
        </div>

        <%--TODO lien cliquable vers détails clients--%>
        <div class="col-md-6">
            <%-- Carte d'affichage : résultat de la recherche client --%>
            <c:if test="${not empty param}">
                <div class="card bg-light mb-10" style="width: 300px">
                    <div class="card-header">Résultat de la recherche</div>

                    <ul class="list-group list-group-flush">
                        <jsp:useBean id="clientsList" scope="request" type="java.util.List"/>
                        <c:forEach var="client" items="${clientsList}">
                        <li class="list-group-item">
                            <div class="row">
                                <div class="col">
                                        ${client.client_nom} ${client.client_prenom}
                                </div>
                                <div class="col text-end">
                                    <form action="ClientDetailsSt" method="post">
                                        <input type="hidden" name="id" value="${client.client_id}">
                                        <button type="submit" id="btn-details" class="btn btn-outline-secondary btn-sm">
                                            Détails
                                        </button>
                                    </form>
                                </div>
                            </div>
                            </c:forEach>
                        </li>
                    </ul>
                </div>
            </c:if>
        </div>

        <%--    fin div recherche--%>
    </div>

    <%--    fin div bloc principal--%>
</div>
</body>
</html>