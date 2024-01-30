<%--
header
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<head>
    <link href="ressources/css/header.css" type="text/css" rel="stylesheet">
</head>

<header>

    <%--    logo --%>
    <%--    <div class="row align-self-start flex-nowrap align-items-center">--%>
    <%--        <div class="col">--%>
    <%--            <img src="ressources/img/bandage.png" alt="logo Sparadrap" id="logo">--%>
    <%--        </div>--%>
    <%--        <h1 id="sparadrap-logo">Sparadrap</h1>--%>
    <%--    </div>--%>

    <%--Menu--%>
    <%--        partie avec logo --%>
    <nav class="navbar navbar-static-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <img src="ressources/img/bandage.png" alt="logo Sparadrap" id="logo">
                <a class="navbar-brand" id="sparadrap-logo" href="accueil.jsp">Sparadrap</a>
            </div>

            <%--            partie avec menu dropdown--%>
            <ul class="nav navbar-nav flex-row me-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="accueil.jsp">Accueil</a>
                </li>
<%--                icone clients --%>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Clients
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="ClientAccueilSt">Rechercher un client</a></li>
                        <li><a class="dropdown-item" href="client_formulaire.jsp">Ajout un client</a></li>
                    </ul>
<%--                icone médecins --%>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Médecins
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="medecin_vue_principale.jsp">Rechercher un médecin</a></li>
                        <li><a class="dropdown-item" href="medecin_formulaire.jsp">Ajout un médecin</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>

</header>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css"/>
<script src="webjars/bootstrap/5.2.3/js/bootstrap.bundle.min.js"></script>




