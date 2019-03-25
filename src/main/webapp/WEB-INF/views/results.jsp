<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doppelganger Results</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<center><img src="resources/logo.png" alt="Doppelganger Logo" height="150px" width="150px"></center>
<div class="container">
	<div class="jumbotron">
	<h2>URL entered by you : </h2> 
	<p><% //Put the user input URL here %>
	</div>
	<br>
	
	<h3>What our directory search says...?</h3><br>
	<%// If the URL is found in the database %>
	<div class="row">
		<p> Your URL is <button class="btn btn-danger">Unsafe to visit</button><br>
		<ul type="disc">
			<li>Port number : </li>
			<li>Protocol : </li>
			<li>Top level domain : </li>
			<li>Host : </li>
		</ul>
		</p>
	</div>
	<!-- If the URL is not database -->
	<div class="row">
		<p> Your URL is <button class="btn btn-success">Safe to visit</button><br>
		Based on the database, the protocol, filepath and domain names, the URL entered seems to be safe to visit
		</p>
	</div>
	
	<h3>What our machine learning algorithm says...?</h3>
</div>
</body>
</html>