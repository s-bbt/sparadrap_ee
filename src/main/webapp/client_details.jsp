<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Informations du client</title>
</head>
<body>

<h1>Informations du client</h1>
<div id="clientDetails">
    <%--    détails du client --%>
    <jsp:useBean id="client" scope="request" type="beans.Client"/>
    ${client.client_nom} ${client.client_prenom}
</div>

</body>
</html>