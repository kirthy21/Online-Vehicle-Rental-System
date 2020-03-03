<%-- 
    Document   : take
    Created on : Apr 26, 2017, 1:10:14 AM
    Author     : EBIN
--%>

<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   String id=request.getParameter("id");
   String st=request.getParameter("st");
   if(st.equals("1"))
   {
       String sql="update vehicle_list set status='1' where vehicle_id='"+id+"'";
       int i=connect.insertData(sql);
       
      
           response.sendRedirect("AdminViewBooking.jsp");
      
   }
   else
   {
       String bnum=request.getParameter("bnumber");
       String sql="update vehicle_list set status='0' where vehicle_id='"+id+"'";
       int i=connect.insertData(sql);
        
          response.sendRedirect("AdminViewBooking.jsp");
      
   }
%>