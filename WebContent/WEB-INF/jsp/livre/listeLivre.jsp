<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : listeLivre
    Created on : 10 sept. 2014, 16:31:39
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
        <h1>Les livres</h1>
        <ul>
            <c:forEach var="livre" items="${listLivre}">
                <li><a href="<%=request.getContextPath()%>/livre/ajoutLivre.htm?id=${livre.id}">${livre.titre}</a></li>
            </c:forEach>
        </ul>
<%--         <span><a href="<%=request.getContextPath()%>/index.jsp">Retour Menu</a></span> --%>
        <c:import url="/retour.jsp"></c:import>
    </body>
</html>
