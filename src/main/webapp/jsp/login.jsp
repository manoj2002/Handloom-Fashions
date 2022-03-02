<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	 <jsp:include page="disp.jsp"></jsp:include>
	<div class="form-box">
			<div class="button-box">
                 <div id="btn"></div>
                 <button type="button" class="toggle-btn" >Log In</button>
                 <a href="register"><button type="button" class="toggle-btn" >Register</button></a>
            </div>
            <form name="loginform" id="login" class="input-group" action="loginUser" method="post">
                <input type="text" name="username" class="input-field" placeholder="username">
                <input type="password" name="password" class="input-field" placeholder="password">
                <input type="checkbox" class="check-box"><span id="s">Remember Me</span>             
                <button type="submit" class="submit-btn">Log In</button><br><br>
            </form>
	</div>
</body>
</html>