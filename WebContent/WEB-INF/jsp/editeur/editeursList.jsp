
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}"  scope="request" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<tiles:insertDefinition name="defaultTemplate">

	<tiles:putAttribute name="body">
		<h1>Les Editeurs</h1>
		<a href="ajoutEditeur.htm">Ajouter Edtieur</a>
		<ul>
			<c:forEach var="editeur" items="${listEditeur}">
				<li>${editeur.nom}</li>
			</c:forEach>
		</ul>
	</tiles:putAttribute>

	<tiles:putAttribute name="footer">
        Copyright &copy; Jean-Vladimir 2017
    </tiles:putAttribute>

</tiles:insertDefinition>