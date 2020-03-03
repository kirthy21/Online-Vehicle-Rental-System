<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
</head>
<body> 
<center>
<h2>LOGIN</h2></center>
<form action="adminhome.jsp" method="post">
<center>
<table>
<img src="123.jpg" width="500" height="400">
<tr><td>Username</td><td><input type="text" name="username"></td></tr>
<tr><td>Password</td><td><input type="password" name="password"></td></tr><br><br>
<tr></tr><tr></tr>
</table>
</center>
    
<center><a href="forgot.jsp">Forgot Password?</a><br><br>
    <input type="checkbox">Keep me logged in<br><br>
<input type="submit" value="login">
</center>
</form>
</body>
</html>