<%--
page avec les infos et détails du client
avec possibilité de modifier
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Détails du client</title>
</head>
<body>
<h1>Client</h1>
<p>

    <jsp:useBean id="client" scope="request" type="beans.Client"/>
    <c:out value="${client.client_nom } ${client.client_prenom}"/>

</p>
</body>
</html>
