<%-- 
    Document   : adddriver.jsp
    Created on : Apr 5, 2017, 5:46:28 PM
    Author     :
--%>

<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN HOME-ADD DRIVER</title>
    </head>
    <body>
        <center>
       <a href="vehicles.jsp">ADD VEHICLE</a><a href="viewvehicle.jsp" style="margin-left: 30px">VIEW VEHICLES<a href="viewusers.jsp" style="margin-left: 30px">VIEW USERS</a><a href="adddriver.jsp" style="margin-left: 30px">ADD DRIVERS</a>
        <a href="viewdriver.jsp" style="margin-left: 30px">VIEW DRIVERS</a><a href="addguide.jsp" style="margin-left: 30px">ADD GUIDE</a><a href="viewguide.jsp" style="margin-left: 30px">VIEW GUIDES</a>
        <BR><BR><BR><BR><h2>DRIVER LIST</h2>
    </center>
    <center>
        <table>
    <form action="">
 <tr><td>NAME</td><td><input type="text" name="dname"></td></tr>
<tr><td>ADDRESS</td><td><textarea name="daddress"></textarea></td></tr>
<tr><td>PHONE NUMBER</td><td><input type="number" name="dphno"></td></tr>
<tr><td>EMAIL</td><td><input type="email" name="demail"></td></tr>
<tr><td>EXPERIENCE</td><td><input type="number" name="noofyears"></td><td>(in years)</td></tr>
<tr><td>AGE</td><td><input type="text" name="dage"></td></tr>
  <tr><td>GENDER</td><td><input type="radio" value="Male" name="gender" checked>Male
                    <input type="radio" value="Female" name="gender">Female</td></tr>
<tr><td>LICENSE NUMBER</td><td><input type="text" name="dlicense"></td></tr>
<tr><td>IMAGE</TD><TD><input type="file" name="dimg"></td></tr></table>
</table>              
<table>
<tr><td>Scanned copy of driving license</td><td><input type="FILE"value="Upload"></td></tr>
<tr><td>Scanned copy of any id proof</td><td><select><option>Aadhar</option><option>Passport</option><option>Pan card</option><option>Voter id</option></select></td></tr><tr><td></td><td><input type="FILE"value="Upload"></td></tr></tr>

</table>
<table>
<tr><td></td><td></td><td><input type="submit" value="Submit" name="save"></td></tr>
      
    </body>
</html>
<%
    if(request.getParameter("save")!=null)
    {
        String a=request.getParameter("dname");
            String b=request.getParameter("daddress");
            String c=request.getParameter("dphno");
              String d=request.getParameter("demail");
               String e=request.getParameter("noofyears");
               String f=request.getParameter("dage");
               String g=request.getParameter("gender");
                 String h=request.getParameter("dlicense");
                 String i=request.getParameter("dimg");
                   
                String sql="insert into driver(driver_name,address,phone_no,gender,age,email_id,licenseno,experience,image)values('"+a+"','"+b+"','"+c+"','"+g+"','"+f+"','"+d+"','"+h+"','"+e+"','"+i+"')";
        int i1=connect.insertData(sql);
        if(i1==1)
        {
            %>
            <script>
                alert("successfully added");
                </script>
            <%
        }
    }
    %>
