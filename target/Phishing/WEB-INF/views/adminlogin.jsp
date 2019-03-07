<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doppelganger Admin</title>
<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #2e5cb8;
   color: white;
   text-align: center;
}
.navbar
{
	background-color: #2e5cb8;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
</head>
<body>
<img src="dglogo.jpg" alt="Doppelganger Logo" title="Doppelganger Admin">
<form>
	<div class="text-center">
		<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-user"/></span>
			<input id="email" type="text" class="form-control" name="email" placeholder="Email">
		</div>
		<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-lock"/></span>
			<input id="password" type="password" class="form-control" name="password" placeholder="Password">
		</div>
	</div>
</form>
</body>
</html>