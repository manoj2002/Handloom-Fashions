<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/login.css">
<title>REGISTER</title>
</head>
<body>
	<div>
		 <p><jsp:include page="disp.jsp"></jsp:include></p>
	</div>
	<div class="form-boxl">
                <div class="button-box">
                    <div id="btn"></div>
                    <button type="button" class="toggle-btn" >Register</button>
                    <a href="login"><button type="button" class="toggle-btn" >Log In</button></a>
                </div>
                <form name="signupform"  id="register" class="input-groupr" action="registerUser" method="post">
                	<input type="text" name="userId" class="input-field" placeholder="User Name">
                    <input type="text" name="fname" class="input-field" placeholder="First Name">
                    <input type="text" name="lname" class="input-field" placeholder="Last Name">
                    <input type="email" name="email" class="input-field" placeholder="Email">
                    <input type="password" name="password" class="input-field" placeholder=" Enter Password">
                    <input type="password" name="password2" class="input-field" placeholder="Confirm Password">
                    <input type="checkbox" class="check-box"><span id="l">I Agree to terms & conditions</span>
                    <button type="submit" class="submit-btn">Register</button>
                </form>
       </div>
</body>
</html>