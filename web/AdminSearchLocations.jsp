<%-- 
    Document   : AdminSearchLocations
    Created on : Apr 27, 2017, 11:54:36 PM
    Author     : EBIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="loc.jsp">
        <table>
            <tr><td>booking number<td>
                    <select name="ab">
                        <%
                            String sql="select *from booking where status='1'";
                            ResultSet rs=connect.getData(sql);
                            while(rs.next())
                            {
       
                            %>
                            <option value="<%=rs.getString("uid")%>"><%=rs.getString("number")%></option>
                            <%
                            }
                            %>
                    </select>
                    
                </td></tr>
            <tr><td><input type="submit" name="a" value="findlocation"></td></tr>
        </table>
      
                           
          </form>
    </body>
</html>

