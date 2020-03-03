<%-- 
    Document   : register
    Created on : Mar 30, 2017, 4:00:16 PM
    Author     : cit pc
--%>

<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGN UP</title>
    </head>
    <body>
    <center><h2>SIGN UP</h2></center>
    <form action="" method="post">
        <CENTER>
            
        <table>
          
            <tr><td>NAME</td><td><input type="text" name="name"></td></tr>
            <tr><td>ADDRESS</td><td><textarea name="address"></textarea></td></tr>
            <tr><td>AGE</td><td><input type="text" name="age"></td></tr>
            <tr><td>GENDER</td><td><input type="radio" value="Male" name="gender" checked>Male
                    <input type="radio" value="Female" name="gender">Female</td></tr>
            <tr><td>PHONE NUMBER</td><td><input type="text" name="phn"></td></tr>
            <tr><td>EMAIL</td><td><input type="email" name="email"></td></tr>
            <tr><td>USERNAME</td><td><input type="text" name="username"></td></tr>
            <tr><td>PASSWORD</td><td><input type="password" name="password"></td></tr>
            <tr><td>LICENSE NUMBER</td><td><input type="text" name="license"></td></tr>
              <tr><td>ID PROOF</td><td><input type="FILE" name="id"></td></tr>
              
              
              <table>
                  <br><br>
                  <tr><td></td><td></td><td><input type="submit" value="Sign up" name="save"></td><td><input type="submit" value="Edit"></td></tr>
</table>
        </table> 
        </center>
    </form>

    </body>
</html>
<%
    if(request.getParameter("save")!=null)
    {
        String a=request.getParameter("name");
            String b=request.getParameter("address");
                    
             String c=request.getParameter("age");
              String d=request.getParameter("gender");
               String e=request.getParameter("phn");
                String f=request.getParameter("email");
                String g=request.getParameter("username");
                String h=request.getParameter("password");
                String i=request.getParameter("license");
                 String j=request.getParameter("id");
                 String sql="insert into registration(username,name,address,phno,gender,age,email_id,id_proof,license_no)values('"+g+"','"+a+"','"+b+"','"+e+"','"+d+"','"+c+"','"+f+"','"+j+"','"+i+"')";
            int i1=connect.insertData(sql);
            if(i1==1)
            {
                String sql1="insert into login(username,password,role)values('"+g+"','"+h+"','user')";
                int j1=connect.insertData(sql1);
                response.sendRedirect("login.jsp");
            }
    }
    %>
