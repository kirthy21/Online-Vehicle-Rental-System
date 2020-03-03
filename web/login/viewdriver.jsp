<%-- 
    Document   : viewdriver
    Created on : Apr 27, 2017, 6:56:08 PM
    Author     : lenovo
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
        <%
            String id=request.getParameter("id");
            String sql="select *from driver_assign where bid='"+id+"'";
            ResultSet rs=connect.getData(sql);
            int f=0;
            String s="";
            String name="";
            String phone="";
            String address="";
            String photo="";
           if(rs.next())
            {
                f=1;
                s=rs.getString("did");
                
            }
           if(f==1)
           {
               String sql3="select *from driver where driver_id='"+s+"'";
              ResultSet rs1=connect.getData(sql3);
              if(rs1.next())
              {
                  name=rs1.getString("driver_name");
                  phone=rs1.getString("phone_no");
                  address=rs1.getString("address");
                  photo=rs1.getString("image");
                  
              }
              %>
              <table><th>name</th><th>address</th><th>phone</th><th>photo</th>
                  <tr><td><%=name%></td><td><%=address%></td><td><%=phone%></td><td><img src="../images/<%=photo%>" width="50" height="50"></td></tr>
              </table>
              <%
           }
           else
           {
               out.println("sorrrrryyyy!!!!!!!!!");
           }
            %>
    </body>
</html>
