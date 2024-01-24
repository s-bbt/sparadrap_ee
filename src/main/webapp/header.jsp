<%--
header
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<link href="ressources/css/header.css" type="text/css" rel="stylesheet">
<link href="ressources/script/script.js" type="text/javascript">

<header>
        <div class="row align-self-start flex-nowrap align-items-center">
            <div class="col">
                <img src="ressources/img/bandage.png" alt="logo Sparadrap" id="logo">
            </div>

                <h1 id="sparadrap-logo">Sparadrap</h1>

        </div>

    <%--Menu--%>
    <%--bouton client--%>
    <div class="btn-group">
        <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Clients
        </button>
        <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="ClientRechercheSt">Rechercher un client</a></li>
            <li><a class="dropdown-item" href="client_formulaire.jsp">Ajout un client</a></li>
        </ul>
        <%--    bouton médecin--%>
        <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Médecins
        </button>
        <ul class="dropdown-menu">
            <li><button class="dropdown-item" type="button" href="medecin_vue_principale.jsp">Rechercher un médecin</button></li>
            <li><button class="dropdown-item" type="button" href="MedecinFormulaireSt">Ajouter un médecin</button></li>
        </ul>
    </div>
</header>

<link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css"/>
<script rel="stylesheet" href="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="ressources/script/script.js"></script>