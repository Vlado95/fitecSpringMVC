<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script src="/webjars/jquery/3.2.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.min.css" />
<title>Welcome to Spring Web MVC project</title>
</head>

<body>
<div class="container"><br/>
            <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert"
                  aria-label="close">×</a>
                <strong>Success!</strong> It is working as we expected.
            </div>
        </div>
	<nav>
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
	</nav>
</body>
</html>
