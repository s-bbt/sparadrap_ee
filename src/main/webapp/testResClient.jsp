<%--
  Created by IntelliJ IDEA.
  User: User-11
  Date: 22/01/2024
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<ul>
    <jsp:useBean id="clientsList" scope="request" class="java.util.ArrayList"/>
    <c:forEach var="client" items="${clientsList}">
        <li><c:out value="${client.client_nom }"/> <c:out value="{client.client_prenom}"/></li>
    </c:forEach>
</ul>
</body>
</html>
