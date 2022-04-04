<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/styles.css">
	<title>Omikuji</title>
</head>
<body>
	<h1>Here's Your Omikuji!</h1>
	<div class="container d-flex flex-column justify-content-center">
		<div class="fortuna">
			<p class= "texto"> In <c:out value="${numero}"/> years, you will live in <c:out value="${ciudad}"/> with 
				<c:out value="${persona}"/> as your roommate, <c:out value="${hobby}"/> got a living.
				The next time you see a <c:out value="${animal}"/>, you will have good luck. Also, 
				<c:out value="${texto}"/>
			</p>
		</div>
		<a class="btn btn-link" href="/omikuji">Go Back</a>
	</div>
</body>
</html>