<%-- 
    Document   : payment
    Created on : Apr 2, 2017, 10:55:29 AM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAYMENT</title>
    </head>
    <body>
        <center><h2>PAYMENT</h2></center>
        <form action="payment" method="post">
            
<center>
<table>

<tr><td>FIRST NAME</td><td><input type="text" name="fname"></td></tr>
<tr><td>LAST NAME</td><td><input type="text" name="lname"></td></tr>
<tr><td>PAYMENT TYPE</td><td><select name="payment"><option value="Debit card">Debit card</option><option value="Credit card">Credit card</option></select>
<tr><td>AMOUNT</td><td><input type="number" name="amount"></td></tr>
<tr><td>ENTER PIN</td><td><input type="password" name="pin"></td></tr>
<tr><td>CONFIRM PIN</td><td><input type="password" name="cnfrm pin"></td></tr><br><br><br>
</table>
<table>
    <tr><td></td><td></td><td><td></td><td></td><td></td><td><input type="button"value="Finish"></td><td></td><td><input type="button"value="Cancel"></td></tr>
</table> 
</center>
      
    </body>
</html>
