<%@page import="org.webjars.WebJarAssetLocator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}"  scope="request" /> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"   "http://www.w3.org/TR/html4/loose.dtd"> 

	<h1>Menu Bibliothèque</h1>
	<ul>
		<li><a href="<%=request.getContextPath()%>/user/inscription.htm">Inscription</a></li>
		<li><a href="<%=request.getContextPath()%>/user/login.htm">Login</a></li>
		<li><a href="<%=request.getContextPath()%>/editeur/editeurs.htm">Les
				editeurs</a></li>
		<li><a href="<%=request.getContextPath()%>/user/listeUser.htm">Les
				utilisateurs</a></li>
		<li><a href="<%=request.getContextPath()%>/livre/ajoutLivre.htm">Ajouter
				un livre</a></li>
		<li><a href="<%=request.getContextPath()%>/livre/lesLivres.htm">Les
				livres</a></li>
	</ul>
