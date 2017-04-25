<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.webjars.WebJarAssetLocator"%>
<%-- 
    Document   : listeLivre
    Created on : 10 sept. 2014, 16:31:39
    Author     : Fitec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container col-lg-10 col-md-10 col-sm-10">
	<h1>Les livres</h1>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Titre</th>
				<th>Auteur</th>
				<th>Editeur</th>
				<th>Prix</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="livre" items="${listLivre}">

				<tr>
					<td>${livre.titre}</td>
					<td>${livre.auteur.nom}</td>
					<td>${livre.editeur.nom}</td>
					<td>${livre.prix}</td>
					<td><a onclick="myFunction()" href="#" data-toggle="modal"
						data-target="#dialog"
						data-url="<%=request.getContextPath()%>/livre/ajoutLivre.htm?id=${livre.id}">
							<span class="glyphicon glyphicon-pencil">modifier</span>
					</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div id="dialog" class="modal">
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div>
