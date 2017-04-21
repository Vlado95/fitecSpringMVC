<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : listeUser
    Created on : 10 sept. 2014, 16:32:17
    Author     : Fitec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Les Utilisateurs</h1>
        <ul>
    <c:forEach var="user" items="${luser}">
        <li><a href="<%=request.getContextPath()%>/user/modif.htm?id=${user.id}">${user.nom}</a></li>
    </c:forEach>
    </ul>
    </body>
</html>
