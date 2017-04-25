<%-- 
    Document   : AjoutLivre
    Created on : 10 sept. 2014, 16:31:05
    Author     : Fitec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-hidden="true">&times;</button>
	<h4 class="modal-title">Ajouter un livre</h4>
</div>


<form:form method="post" name="ajoutLivre" modelAttribute="livre"
	class="form-horizontal">
	<div class="modal-body">

		<form:hidden path="id" />
		<div class="form-group">
			<label class="col-xs-3 control-label">Titre : </label>
			<div class="col-xs-5">
				<form:input path="titre" class="form-control" />
				<form:errors path="titre" cssStyle="color : red;" />
			</div>
		</div>

		<div class="form-group">
		<form:label class="col-xs-3 control-label" path="auteur">Auteur : </form:label>
<!-- 			<label class="col-xs-3 control-label">Editeur : </label> -->
			<div class="col-xs-5">
			
		<form:select class="form-control" items="${listA}" itemLabel="nom" itemValue="id"
			path="auteur.id" />
			</div>
		</div>


		<div class="form-group">
			<label class="col-xs-3 control-label">Editeur : </label>
			<div class="col-xs-5">
				<form:select class="form-control" items="${listE}" itemLabel="nom"
					itemValue="id" path="editeur.id" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-xs-3 control-label">Nombre de pages :</label>
			<div class="col-xs-5">
				<form:input path="nbPages" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-xs-3 control-label">prix:</label>
			<div class="col-xs-5">
				<form:input class="form-control" path="prix" />
				<form:errors path="prix" cssClass="" />
			</div>
		</div>

		<div class="modal-footer">
			<button type="submit" class="btn btn-primary">Valider</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
		</div>

	</div>
</form:form>
