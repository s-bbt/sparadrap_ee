<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<html>
<head>
    <title>Résultat de la recherche</title>
</head>
<body>
<h1>Résultat de la recherche</h1>

<ul>
    <jsp:useBean id="clientsList" scope="request" type="java.util.List"/>
    <c:forEach var="client" items="${clientsList}">
        <li>${client.client_nom} ${client.client_prenom}</li>
        <%--            <li><c:out value="${client.client_nom }" /></li>--%>
    </c:forEach>
</ul>

<%--<ul>--%>
<%--    &lt;%&ndash;@elvariable id="clientsList" type="java.util.List"&ndash;%&gt;--%>
<%--    <c:forEach var="client" items="${ clientsList }">--%>
<%--        <li>${client.nom} ${client.prenom}</li>--%>
<%--    </c:forEach>--%>
<%--</ul>--%>

</body>
</html>
