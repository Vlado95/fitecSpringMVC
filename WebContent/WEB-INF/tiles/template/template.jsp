
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp"
	value="${pageContext.request.servletContext.contextPath}"
	scope="request" />


<html>
<head>
<link rel="stylesheet" href="${cp}/resources/css/style.css"
	type="text/css" />
<script src="${cp}/webjars/jquery/3.2.0/jquery.min.js"></script>
<%-- <script src="${cp}/webjars/bootstrap/4.0.0-alpha.6-1/js/bootstrap.min.js"></script> --%>
<spring:url value="/resources/js/main.js" var="mainJS" />

<script src="${mainJS}"></script>
<%-- <link rel="stylesheet" href="${cp}/webjars/bootstrap/4.0.0-alpha.6-1/css/bootstrap.min.css" /> --%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<div class="header">

		<tiles:insertAttribute name="header" />


	</div>


	<div class="container-fluid text-center">
		<div class="row content">

			<div class="menu">
				<tiles:insertAttribute name="menu" />
			</div>
			<div class="body col-sm-10  col-lg-10 text-left">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
	</div>



	<div class="footer">
		<footer class="container-fluid text-center">
			<tiles:insertAttribute name="footer" />
		</footer>

	</div>
</body>
</html>


