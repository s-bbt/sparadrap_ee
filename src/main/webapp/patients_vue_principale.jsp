<%--
page principale PATIENTS
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>

<html>
<head>
    <title>Patients</title>
</head>
<body>
<h1>Patients</h1>
<%--lien pour fenêtre pop-up "nouveau patient"--%>
<a href="patient_formulaire.jsp">Nouveau patient</a>

<%--champs de recherche--%>
<div class="container" id="section-recherche-patient">
    <div class="row">
        <div class="col-md-7" style="--bs-body-bg-rgb:blue-100">
            <h2>Rechercher un patient</h2>
            <form action="patient_formulaire.jsp" method="post">

                <label for="nom">Nom</label>
                <input type="text" id="nom" name="nom" required>

                <label for="prenom">Prénom</label>
                <input type="text" id="prenom" name="prenom" required>

                <label for="num-secu">Numéro de sécurité sociale</label>
                <input type="text" name="num-secu" id="num-secu"
                       pattern="[1-2]{1}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{3}[0-9]{3}[0-9]{2}">

                <label for="telephone">Téléphone</label>
                <input type="tel" id="telephone" name="telephone"
                       pattern="[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}">

                <input id="btn-valider" type="submit">

            </form>
        </div>
    </div>
</div>

</body>
</html>
