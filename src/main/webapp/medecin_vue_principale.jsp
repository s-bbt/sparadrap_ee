<%--
page principale MEDECIN
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>

<html>
<head>
    <title>Médecins</title>
</head>
<body>
<h1>Médecins</h1>
<%--lien pour fenêtre pop-up "nouveau client"--%>
<a href="medecin_formulaire.jsp">Nouveau médecin</a>

<%--champs de recherche--%>
<div class="container" id="section-recherche-medecin">
    <div class="row">
        <div class="col-md-7" style="--bs-body-bg-rgb:blue-100">
            <h2>Rechercher un médecin</h2>
            <form action="medecin_vue_principale.jsp" method="post">

                <label for="nom">Nom</label>
                <input type="text" id="nom" name="nom" required>

                <label for="prenom">Prénom</label>
                <input type="text" id="prenom" name="prenom">

                <%--    TODO liste déroulante avec choix --%>
                <label for="specialite">Spécialité</label>
                <input type="checkbox" id="specialite" name="specialite">

                <label for="num_secu">Numéro d'agrément</label>
                <input type="text" name="num_secu" id="num_secu" pattern="[1-9]{11}">

                <label for="ville">Ville</label>
                <input type="text" id="ville" name="ville" inputmode="text">

                <label for="code_postal">Code postal</label>
                <input type="number" id="code_postal" name="code_postal" inputmode="numeric" maxlength="5">

                <input id="btn-valider" type="submit">

            </form>
        </div>
    </div>
</div>

</body>
</html>
