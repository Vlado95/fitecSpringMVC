<%-- 
    Document   : modif
    Created on : 12 sept. 2014, 12:19:27
    Author     : Fitec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Modif user</h1>
        <form:form action="" method="post" modelAttribute="userModif">
            <form:hidden path="id"/><br>
            <form:label path="nom">Nom :</form:label><br>
            <form:input path="nom"/><br>
            <form:label path="prenom">Prenom :</form:label><br>
            <form:input path="prenom"/><br>
            <form:label path="email">Email :</form:label><br>
            <form:input path="email"/><br>
            <form:label path="password">Password :</form:label><br>
            <form:password path="password"/><br>
            <form:button value="Valider">Valider</form:button>
        </form:form>
    </body>
</html>
