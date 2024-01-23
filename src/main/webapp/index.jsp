<%--
page d'accueil
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
</head>
<body class="m-2">
<h1><%= "Accueil" %></h1>

<%--Menu--%>
<div class="dropdown">
<button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Clients
</button>
    <div class="dropdown-menu">
        <button class="dropdown-item">Recherche clients</button>
        <a class="dropdown-item" href="ClientRechercheSt">Recherche clients</a>
        <a class="dropdown-item" href="medecin_vue_principale.jsp">Your Second Item</a>
    </div>
</div>

<%--<button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--    Médecins--%>
<%--</button>--%>
<%--<div class="dropdown-menu">--%>
<%--     </div>--%>


<%--<a href="medecin_vue_principale.jsp">Médecins</a>--%>

</body>
</html>