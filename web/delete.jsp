<%-- 
    Document   : delete
    Created on : Apr 27, 2017, 7:26:52 PM
    Author     : lenovo
--%>

<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String a=request.getParameter("id");
    String sql="delete from vehicle_list where vehicle_id='"+a+"'";
    int i=connect.insertData(sql);
    if(i==1)
    {
        %>
        <script>
            alert("successfully deleted");
            window.location="vievehicle.jsp";
            </script>
        <%
    }
    %>