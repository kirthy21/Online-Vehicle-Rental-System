<%-- 
    Document   : viewusers
    Created on : Apr 2, 2017, 4:46:32 PM
    Author     : 
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN HOME-USER LIST</title>
    </head>
    <body>
        <center>
        <a href="vehicles.jsp">ADD VEHICLE</a><a href="viewvehicle.jsp" style="margin-left: 30px">VIEW VEHICLES<a href="viewusers.jsp" style="margin-left: 30px">VIEW USERS</a><a href="adddriver.jsp" style="margin-left: 30px">ADD DRIVERS</a>
        <a href="viewdriver.jsp" style="margin-left: 30px">VIEW DRIVERS</a><a href="addguide.jsp" style="margin-left: 30px">ADD GUIDE</a><a href="viewguide.jsp" style="margin-left: 30px">VIEW GUIDES</a>
        <BR><BR><BR><BR><h2>USER LIST</h2>
        </center><center>
        <table border="2" style="border-collapse: collapse;">
             <th>username</th><th>name</th><th>address</th>
            <th>phone number</th><th>gender</th><th>age</th>
            <th>email_id</th><th>id_proof</th><th>licence</th>
            <%
                String sql="select * from registration";
                ResultSet rs=connect.getData(sql);
                while(rs.next())
                {
                %>
            <tr><td><%=rs.getString("username")%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>
            <td><%=rs.getString(10)%></td>
            </tr>
            <%
            }
%>
        </table>        </center>

    </body>
</html>
