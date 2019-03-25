<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Doppelganger: At Work</title>
	<style>
	body {
  background-color: #000;
  margin: 0;
}

.radar {
  background: url(https://gtms03.alicdn.com/tps/i3/TB1Vet9IVXXXXbuapXXb2YSIVXX-567-567.png) no-repeat 50% 50%;
  width: 284px;
  height: 284px;
  position: relative;
  background-size: 284px 284px;
  position: absolute;
  left: 50%;
  top: 50%;
  margin-left: -142px;
  margin-top: -142px;
}

.radar .pointer {
  position: absolute;
  z-index: 1024;
  left: 10.5820106%;
  right: 10.5820106%;
  top: 10.5820106%;
  bottom: 50%;
  will-change: transform;
  -webkit-transform-origin: 50% 100%;
          transform-origin: 50% 100%;
  border-radius: 50% 50% 0 0 / 100% 100% 0 0;
  background-image: linear-gradient(135deg, rgba(5, 162, 185, 0.8) 0%, rgba(0, 0, 0, 0.02) 70%, rgba(0, 0, 0, 0) 100%);
  -webkit-clip-path: polygon(100% 0, 100% 10%, 50% 100%, 0 100%, 0 0);
          clip-path: polygon(100% 0, 100% 10%, 50% 100%, 0 100%, 0 0);
  -webkit-animation: rotate360 3s infinite linear;
          animation: rotate360 3s infinite linear;
}

.radar .pointer:after {
  content: "";
  position: absolute;
  width: 50%;
  bottom: -1px;
  border-top: 2px solid rgba(0, 231, 244, 0.8);
  box-shadow: 0 0 3px rgba(0, 231, 244, 0.6);
  border-radius: 9px;
}

.shadow {
  position: absolute;
  left: 11%;
  top: 11%;
  right: 11%;
  bottom: 11%;
  margin: auto;
  border-radius: 9999px;
  box-shadow: 0 0 66px 6px #A51414;
  -webkit-animation: shadow 2s infinite ease;
          animation: shadow 2s infinite ease;
}
.shadow1 {
  position: absolute;
  left: 11%;
  top: 11%;
  right: 11%;
  bottom: 11%;
  margin: auto;
  border-radius: 9999px;
  box-shadow: 0 0 66px 6px #00802b;
  -webkit-animation: shadow 1s infinite ease;
          animation: shadow 1s infinite ease;
}

@-webkit-keyframes rotate360 {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  to {
    -webkit-transform: rotate(-360deg);
            transform: rotate(-360deg);
  }
}

@keyframes rotate360 {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  to {
    -webkit-transform: rotate(-360deg);
            transform: rotate(-360deg);
  }
}
@-webkit-keyframes shadow {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@keyframes shadow {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}

	</style>
</head>
<body>
	<h1 style="color:#ffffff;font-family:Lucida Console;margin-top:90px;" align="middle"> Scanning the URL you have entered ...</h1>
	<div class="radar">
  		<div class="pointer"></div>
  		<div class="shadow"></div>
  		<div class="shadow1"></div>
	</div>
	<%response.setHeader("Refresh", "10;url=/results.jsp");%>
</body>
</html>