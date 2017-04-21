<%-- 
    Document   : inscription
    Created on : 10 sept. 2014, 16:31:55
    Author     : Fitec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inscription Bibliothèque</h1>
        
        <form:form action="" method="post" modelAttribute="user">
            <form:label path="nom">Nom :</form:label><br>
            <form:input path="nom"/>
            <form:errors path="nom" cssStyle="color:red;"/><br>
            <form:label path="prenom">Prenom :</form:label><br>
            <form:input path="prenom"/><br>
            <form:label path="email">Email :</form:label><br>
            <form:input path="email"/>
            <form:errors path="email" cssStyle="color:red;"/><br>
            <form:label path="password">Password :</form:label><br>
            <form:password path="password"/><br>
            <form:button value="Valider">Valider</form:button>
        </form:form>
        
    </body>
</html>
