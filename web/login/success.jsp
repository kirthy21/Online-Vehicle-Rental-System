<%-- 
    Document   : success
    Created on : Apr 25, 2017, 11:30:33 PM
    Author     : EBIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="hello.connect"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String s=(String)session.getAttribute("username");
    String sql="select phno from registration where username='"+s+"'";
    ResultSet rs=connect.getData(sql);
    String a="";
    if(rs.next())
    {
     a=rs.getString(1);   
    }
    
    String ran=request.getParameter("id");
     String userName = "fortune-edu";
        String password = "686661";
        String senderName = "FORTUN";
        
      String b="bnumber"+ran;
        String baseurl="http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=" + userName + "&password=" + password + "&sendername=" + senderName + "&mobileno=" +a+ "&message=" + b;
       URL url = new URL( baseurl);
      // String encodedURL=java.net.URLEncoder.encode(baseurl,"UTF-8");
       BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
         String s1 = null;
    while ((s1 = reader.readLine()) != null)
        System.out.println(s1);
    response.sendRedirect("userhome.jsp");
%>
