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
<body>
<h1><%= "Accueil" %></h1>

<%--test jstl--%>
<p>
<c:set var="message" value="test tags" scope="request"/>
<c:out value="message" />
</p>

<br/>
<%--Menu--%>
<a href="patients_vue_principale.jsp">Patients</a>
</body>
</html>