<%-- 
    Document   : addguide.jsp
    Created on : Apr 7, 2017, 5:30:50 PM
    Author     : 
--%>

<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
   
     <title>ADMIN HOME-ADD GUIDE</title>
    </head>
    <body>
        <center>
        <a href="vehicles.jsp">ADD VEHICLE</a><a href="viewvehicle.jsp" style="margin-left: 30px">VIEW VEHICLES<a href="viewusers.jsp" style="margin-left: 30px">VIEW USERS</a><a href="adddriver.jsp" style="margin-left: 30px">ADD DRIVERS</a>
        <a href="viewdriver.jsp" style="margin-left: 30px">VIEW DRIVERS</a><a href="addguide.jsp" style="margin-left: 30px">ADD GUIDE</a><a href="viewguide.jsp" style="margin-left: 30px">VIEW GUIDES</a>
        <BR><BR><BR><BR><h2>GUIDE LIST</h2>
    </center>
    <center>
        <table>
    <form action="">
 <tr><td>NAME</td><td><input type="text" name="gname"></td></tr>
<tr><td>ADDRESS</td><td><textarea name="gaddress"></textarea></td></tr>
<tr><td>PHONE NUMBER</td><td><input type="number" name="gphno"></td></tr>
<tr><td>EMAIL</td><td><input type="email" name="gemail"></td></tr>
<tr><td>EXPERIENCE</td><td><input type="number" name="years"></td><td>(in years)</td></tr>
<tr><td>AGE</td><td><input type="text" name="gage"></td></tr>
  <tr><td>GENDER</td><td><select><option>Aadhar</option><option>Passport</option><option>Pan card</option><option>Voter id</option></select></td></tr>

<tr><td>IMAGE</TD><TD><input type="file" name="gimg"></td></tr></table>
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
        String a=request.getParameter("gname");
            String b=request.getParameter("gaddress");
            String c=request.getParameter("gphno");
              String d=request.getParameter("gemail");
               String e=request.getParameter("years");
               String f=request.getParameter("gage");
               String g=request.getParameter("gender");
                 String h=request.getParameter("gimg");
                  
                String sql1="insert into guide(guidename,address,phoneno,age,gender,emailid,experience,image)values('"+a+"','"+b+"','"+c+"','"+f+"','"+g+"','"+d+"','"+e+"','"+h+"')";
        int i1=connect.insertData(sql1);
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

   
       
 