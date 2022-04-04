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
	<div class="container d-flex flex-column justify-content-center">
		<h1>Send an Omikuji!</h1>
		<div class="row d-flex justify-content-center">
			<div class="col-6 formulario">
				<form action="/registroOmikuji" method="post">
						<div class="mb-3">
							<label for="numero" class="form-label">Pick any number from 5 to 25</label>
							<input type="number" class="form-control" name="numero" min="5" max="25">
						</div>
						<div class="mb-3">
							<label for="ciudad" class="form-label">Enter the name of any city </label>
							<input type="text" class="form-control" name="ciudad">
						</div>
						<div class="mb-3">
							<label for="persona" class="form-label">Enter the name of any real person </label>
							<input type="text" class="form-control" name="persona">
						</div>
						<div class="mb-3">
							<label for="hobby" class="form-label">Enter professional endeavor or hobby </label>
							<input type="text" class="form-control" name="hobby">
						</div>
						<div class="mb-3">
							<label for="" class="form-label">Enter any type of living thing </label>
							<input type="text" class="form-control" name="animal">
						</div>
						<div class="mb-3">
		  					<label for="texto" class="form-label">Say something nice to someone:</label>
		  					<textarea class="form-control" rows="2" name="texto"></textarea>
						</div>
						<p>Send and show a friend</p>
						<div class="d-flex justify-content-end">
							<input class="btn boton" type="submit" value="Send" >
						</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>