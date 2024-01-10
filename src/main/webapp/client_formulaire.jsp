<%--
formulaire de création de fiche client
 renvoie un message de validation
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp"%>

<html>
<head>
    <title>Nouveau client</title>
</head>
<body>
<h1>Nouveau client</h1>
<%--Formulaire--%>
<form action="client_formulaire.jsp" method="post">

    <label for="nom">Nom</label>
    <input type="text" id="nom" name="nom" required>

    <label for="prenom">Prénom</label>
    <input type="text" id="prenom" name="prenom" required>

    <label for="date_naissance">Date de naissance</label>
    <input type="date" id="date_naissance" name="date_naissance">

    <label for="num_secu">Numéro de sécurité sociale</label>
    <input type="text" name="num_secu" id="num_secu" pattern="[1-2]{1}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{3}[0-9]{3}[0-9]{2}">

    <label for="telephone">Téléphone</label>
    <input type="tel" id="telephone" name="telephone" pattern="[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}">

    <label for="email">Email</label>
    <input type="email" id="email" name="email">

    <label for="adresse">Adresse</label>
    <input type="text" id="adresse" name="adresse">

    <input id="btn-valider" type="submit">

</form>

<%--Récupération et affichage des données --%>
<p><c:set var="vnom" value="${param.nom}" scope="page"/>
    <c:out value="${vnom}"/>

    <c:set var="vprenom" value="${param.prenom}" scope="page"/>
    <c:out value="${vprenom}"/>

    <c:set var="vdate" value="${param.date_naissance}" scope="page"/>
    <c:out value="${vdate}"/>

    <c:set var="vnum_secu" value="${param.num_secu}" scope="page"/>
    <c:out value="${vnum_secu}"/>

    <c:set var="vtelephone" value="${param.telephone}" scope="page"/>
    <c:out value="${vtelephone}"/>

<%--    TODO ajouter regex dans bean ? --%>
    <c:set var="vemail" value="${param.email}" scope="page"/>
    <c:out value="${vemail}"/>

    <c:set var="vadresse" value="${param.adresse}" scope="page"/>
    <c:out value="${vadresse}"/>
</p>

</body>
</html>