<%-- 
    Document   : AjoutLivre
    Created on : 10 sept. 2014, 16:31:05
    Author     : Fitec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter Livre</title>



    </head>
    <body>
        <h1>Ajouter un livre</h1>
        <form:form method="post" name="ajoutLivre" modelAttribute="livre">
            <form:hidden path="id"/>
            <form:label path="titre">Titre : </form:label><br>
            <form:input path="titre"/>
            <form:errors path="titre" cssStyle="color : red;"/><br>
            <form:label path="auteur">Auteur : </form:label><br>
            <form:select items="${listA}" itemLabel="nom" itemValue="id" path="auteur.id"/><br>
            <form:label path="editeur">Editeur : </form:label><br>
            <form:select items="${listE}" itemLabel="nom" itemValue="id" path="editeur.id"/><br>
            <form:label path="nbPages">Nombre de pages : </form:label><br>
            <form:input path="nbPages"/><br>
            <form:button>Valider</form:button>
        </form:form>
    </body>
</html>
