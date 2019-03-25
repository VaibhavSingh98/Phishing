<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doppelganger Homepage</title>
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
<script>
	function validateUserInput()
	{
		var x = document.forms["UserInput"]["url"].value;
		//var validURL1 = [a-zA-Z0-9];
		var validURL = /(http(s)?:\/\/.)?(w{3,}\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{1,6}\b([-a-zA-Z0-9@:%_\+.~#?&=]*)/mi;
		
		var res = x.match(validURL);
		if(res==null)
		{
			alert("Please enter a valid URL");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<nav class="navbar">
	<ul class="nav navbar-nav navbar-right">
		<li style="font-family:Georgia;"><a href="adminlogin"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp; Admin Login &nbsp;&nbsp; </a>
	</ul>
</nav>
	<center><img src="resources/logo.png" alt="Doppelganger Logo" height="150px" width="150px"></center>
	<h3 style="font-family:Trebuchet MS; text-align:center;"><i>The ultimate phishing detector</i></h3>
<br>
<hr width=100%>
<br><br>
	<div class="container-fluid">
		<div class="form-group">
		<form action="url2" method="Post" name="UserInput" onsubmit="return validateUserInput()">
			<center> <input class="form-control" id="inputdefault" type="text" name="url" required><br><br>
			<input class="btn btn-info" type="submit" value="Search for phishing"></center>
		</form>
		</div>
	</div>
	<div class="footer">
		<h4 style="text-align:center;"> &copy; Saloni and team</h4>
	</div>
</body>
</html>