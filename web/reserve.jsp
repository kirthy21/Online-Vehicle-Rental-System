<%-- 
    Document   : reserve
    Created on : Apr 1, 2017, 5:46:54 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VEHICLE RESERVATION</title>
    </head>
    <body>
    <CENTRE><h2>VEHICLE  RESERVATION</h2></CENTRE>
        <form action="reserve" method="post">
            <CENTER>
                <table> 
<tr><td>EXACT LOCATION</td><td><select name="location"><option value="kerala">kerala</option><option value="tamilnadu">tamilnadu</option><option value = "karnataka">karnataka</option></select>
<tr><td>NAME</td><td><input type="text" name="name"></td></tr>
<tr><td>ADDRESS</td><td><textarea name="address"></textarea></td></tr>
<tr><td>PHONE NUMBER</td><td><input type="number" name="phno"></td></tr>
<tr><td>EMAIL</td><td><input type="email" name="email"></td></tr>
<tr><td>NUMBER OF PASSENGERS</td><td><input type="number" name="noofpsg"></td></tr>
<tr><td>DROP ADDRESS</td><td><textarea name="drop address"></textarea></td></tr>
<tr><td>DRIVING METHOD</td><td><select name="drving mthd"><option value="self drive">Self drive</option><option value="driver needed">Driver needed</option></select></td></tr>
<tr><td>GUIDE NEEDED</td><td><input type="radio" value="Yes" name="guide needed" checked>Yes
        <input type="radio" value="No" name="guide needed">No</td></tr>
</table>
                
<table>
<tr><td>Scanned copy of driving license</td><td><input type="FILE"value="Upload"></td></tr>
<tr><td>Scanned copy of any id proof</td><td><select><option>Aadhar</option><option>Passport</option><option>Pan card</option><option>Voter id</option></select></td></tr><tr><td></td><td><input type="FILE"value="Upload"></td></tr></tr>
<tr><td>Scanned copy of thumb impression</td><td><input type="FILE"value="Upload"></td></tr>
</table>
<table>
<a href="payment.jsp">Pay</a>
</table>       
            </center>
    </body>
</html>
