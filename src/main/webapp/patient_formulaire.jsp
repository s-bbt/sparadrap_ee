<%--
formulaire de création de fiche patient
 renvoie un message de validation
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp"%>

<html>
<head>
    <title>Nouveau patient</title>
</head>
<body>
<h1>Nouveau patient</h1>
<form action="patient_formulaire.jsp" method="post">

    <label for="nom">Nom</label>
    <input type="text" id="nom" name="nom" required>

    <label for="prenom">Prénom</label>
    <input type="text" id="prenom" name="prenom" required>

    <label for="date-naissance">Date de naissance</label>
    <input type="date" id="date-naissance" name="date-naissance">

    <label for="num-secu">Numéro de sécurité sociale</label>
    <input type="text" name="num-secu" id="num-secu" pattern="[1-2]{1}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{3}[0-9]{3}[0-9]{2}">

    <label for="telephone">Téléphone</label>
    <input type="tel" id="telephone" name="telephone" pattern="[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}">

    <label for="email">Email</label>
    <input type="email" id="email" name="email">

    <label for="adresse">Adresse</label>
    <input type="text" id="adresse" name="adresse">

    <input id="btn-valider" type="submit">

</form>
<p>
<%-- TODO récupérer valeur nom --%>
<c:set var="nom" value="nom"/>
<c:out value="nom"/>
</p>

</body>
</html>