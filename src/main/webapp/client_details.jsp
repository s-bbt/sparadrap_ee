<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Informations du client</title>
</head>
<body>

<div class="border border-primary-subtle rounded-2 m-2 p-4">
    <h1>Informations du client</h1>
<div class="row align-items-center">
    <div class="col-md-6">
    <div id="clientDetails">
        <%--    détails du client --%>
        <div class="row border border-primary-subtle rounded-2 p-3 m-2">
            <jsp:useBean id="client" scope="request" type="beans.Client"/>
            <table class="table-sm">
                <tr>
                    <th scope="row">Nom</th>
                    <td>${client.client_nom}</td>
                </tr>
                <tr>
                    <th scope="row">Prénom</th>
                    <td>${client.client_prenom}</td>
                </tr>

            </table>
        </div>
    </div>
    </div>

<%--    TODO ajouter bouton modifier et supprimer le client --%>
    <div class="col-2 d-grid gap-2">
        <button class="btn btn-outline-primary">Modifier le client</button>
        <button class="btn btn-outline-danger">Supprimer le client</button>
    </div>
</div>

</div>
</body>
</html>