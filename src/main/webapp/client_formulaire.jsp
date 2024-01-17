<%--
formulaire de création de fiche client
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>

<html>
<head>
    <title>Nouveau client</title>
</head>
<body>
<h1>Nouveau client</h1>

<%--Formulaire--%>
<div id="div_formulaire">
    <form action="client_formulaire.jsp" method="post">

        <div id="div_nom_prenom">
            <label for="nom">Nom</label>
            <input type="text" id="nom" name="nom" required>

            <label for="prenom">Prénom</label>
            <input type="text" id="prenom" name="prenom" required>
        </div>

        <div id="div_date_secu">
            <label for="date_naissance">Date de naissance</label>
            <input type="date" id="date_naissance" name="date_naissance">

            <label for="num_secu">Numéro de sécurité sociale</label>
            <input type="text" name="num_secu" id="num_secu"
                   pattern="[1-2]{1}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{3}[0-9]{3}[0-9]{2}">
        </div>

        <div id="medecin_mut">
        </div>

        <div id="div_contact">
            <label for="telephone">Téléphone</label>
            <input type="tel" id="telephone" name="telephone" pattern="[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}">

            <label for="email">Email</label>
            <input type="email" id="email" name="email">
        </div>

        <div id="div_adresse">
            <label for="ville">Ville</label>
            <input type="text" id="ville" name="ville" inputmode="text">

            <label for="rue">Rue (numéro et nom de la voie)</label>
            <input type="text" id="rue" name="ville">

            <label for="code_postal">Code postal</label>
            <input type="number" id="code_postal" name="code_postal" inputmode="numeric" minlength="3" maxlength="5">
        </div>

        <div id="div_btn">
            <input id="btn-valider" type="submit">
            <input id="btn-annuler" type="button" value="Annuler">
        </div>

    </form>
</div>

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

    <c:set var="vemail" value="${param.email}" scope="page"/>
    <c:out value="${vemail}"/>

    <c:set var="vrue" value="${param.rue}" scope="page"/>
    <c:out value="${vrue}"/>

    <c:set var="vville" value="${param.ville}" scope="page"/>
    <c:out value="${vville}"/>

    <c:set var="vcode_postal" value="${param.code_postal}" scope="page"/>
    <c:out value="${vcode_postal}"/>
</p>

<%--    TODO passer par bean--%>

</body>
</html>