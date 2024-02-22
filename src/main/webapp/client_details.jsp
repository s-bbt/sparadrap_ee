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
    <form method="post" action="ClientModifSt" id="formulaire">
        <div class="row align-items-center">
            <div class="col-md-6" id="clientDetails">
                <%--    détails du client --%>
                <div class="row border border-primary-subtle rounded-2 p-3 m-2">
                    <jsp:useBean id="client" scope="request" type="beans.Client"/>
                    <table class="table-sm">
                        <tr>
                            <th scope="row">Nom</th>
                            <td id="champ-nom">${client.client_nom}</td>
                        </tr>
                        <tr>
                            <th scope="row">Prénom</th>
                            <td id="champ-prenom">${client.client_prenom}</td>
                        </tr>
                        <input type="hidden" id="client_id" name="client_id" value="${client.client_id}"/>
                    </table>
                </div>
            </div>
            <div class="col-2 d-grid gap-2" id="div-boutons">
                <button class="btn btn-outline-primary" id="btn-modifier">Modifier le client</button>
            </div>
        </div>
    </form>
</div>



<script type="text/javascript" src="ressources/script/script.js"></script>
</body>
</html>