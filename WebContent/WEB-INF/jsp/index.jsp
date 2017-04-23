<%@page import="org.webjars.WebJarAssetLocator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}"  scope="request" /> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"   "http://www.w3.org/TR/html4/loose.dtd"> 

<!-- <html> -->
<!-- <head> -->
<%-- <script src="${cp}/webjars/jquery/3.2.0/jquery.min.js"></script> --%>
<%-- <script src="${cp}/webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.min.js"></script> --%>

<!-- <link rel="stylesheet" -->
<%-- 	href="${cp}/webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.min.css" /> --%>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- <title>Welcome to Spring Web MVC project</title> -->
<!-- </head> -->

<!-- <body> -->
<div class="container"><br/>
            <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert"
                  aria-label="close">×</a>
                <strong>Success!</strong> It is working as we expected.
            </div>
        </div>
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
<!-- </body> -->
<!-- </html> -->


<%-- <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> --%>
 
<%-- <tiles:insertDefinition name="defaultTemplate" /> --%>
