<%--
formulaire de création de fiche médecin
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>

<html>
<head>
    <title>Nouveau médecin</title>
</head>
<body>
<h1>Nouveau médecin</h1>

<%--Formulaire--%>
<form action="medecin_formulaire.jsp" method="post">

    <label for="nom">Nom</label>
    <input type="text" id="nom" name="nom" required>

    <label for="prenom">Prénom</label>
    <input type="text" id="prenom" name="prenom" required>

    <%--    TODO liste déroulante avec choix --%>
    <label for="specialite">Spécialité</label>
    <input type="checkbox" id="specialite" name="specialite" required>

    <label for="num_agrement">Numéro d'agrément'</label>
    <input type="text" name="num_agrement" id="num_agrement" pattern="[1-9]{11}" required>

    <label for="telephone">Téléphone</label>
    <input type="tel" id="telephone" name="telephone" pattern="[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}">

    <label for="email">Email</label>
    <input type="email" id="email" name="email">
    <br>
    <label for="ville">Ville</label>
    <input type="text" id="ville" name="ville" inputmode="text">

    <label for="rue">Rue (numéro et nom de la voie)</label>
    <input type="text" id="rue" name="ville">

    <label for="code_postal">Code postal</label>
    <input type="number" id="code_postal" name="code_postal" inputmode="numeric" minlength="3" maxlength="5">

    <input id="btn-valider" type="submit">

</form>

<%--Récupération et affichage des données --%>
<p><c:set var="vnom" value="${param.nom}" scope="page"/>
    <c:out value="${vnom}"/>

    <c:set var="vprenom" value="${param.prenom}" scope="page"/>
    <c:out value="${vprenom}"/>

    <c:set var="vspecialite" value="${param.specialite}" scope="page"/>
    <c:out value="${vspecialite}"/>

    <c:set var="vnum_agrement" value="${param.num_agrement}" scope="page"/>
    <c:out value="${vnum_agrement}"/>

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

</body>
</html>