<%-- 
    Document   : viewvehicle
    Created on : Apr 7, 2017, 6:16:57 PM
    Author     : cit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW VEHICLE</title>
         <title>ADMIN HOME-VIEW DRIVERS</title>
    </head>
    <body>
        
        <center>
        <a href="vehicles.jsp">ADD VEHICLE</a><a href="viewvehicle.jsp" style="margin-left: 30px">VIEW VEHICLES<a href="viewusers.jsp" style="margin-left: 30px">VIEW USERS</a><a href="adddriver.jsp" style="margin-left: 30px">ADD DRIVERS</a>
        <a href="viewdriver.jsp" style="margin-left: 30px">VIEW DRIVERS</a><a href="addguide.jsp" style="margin-left: 30px">ADD GUIDE</a><a href="viewguide.jsp" style="margin-left: 30px">VIEW GUIDES</a>
        <BR><BR><BR><BR><h2>VEHICLE LIST</h2>
        </center><center>
        <table border="2" style="border-collapse: collapse;">
            
          <th>TYPE OF VEHICLE</th><th>VEHICLE NAME</th><th>CATEGORY</th>
            <th>COLOUR</th><th>MODEL</th><th>MILEAGE</th><th>IMAGE</th>
           
            <%
                String sql="select * from vehicle_list";
                ResultSet rs=connect.getData(sql);
                while(rs.next())
                {
                %>
            <tr><td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
           <td><%=rs.getString(4)%></td>
           <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
         <td><%=rs.getString(8)%></td>
         <td><%=rs.getString(7)%></td>
            </tr>
            <%
            }
%>
        </table>        </center>

    </body>
</html>