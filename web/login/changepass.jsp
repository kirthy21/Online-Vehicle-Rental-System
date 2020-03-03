<%-- 
    Document   : changepass
    Created on : Apr 22, 2017, 2:45:04 AM
    Author     : cit
--%>

<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     String acc=(String)session.getAttribute("username");
     String ne=request.getParameter("message1");
     String sql="update login set password='"+ne+"' where username='"+acc+"'";
     int i=connect.insertData(sql);
   
         response.sendRedirect("userhome.jsp");
    
    %>