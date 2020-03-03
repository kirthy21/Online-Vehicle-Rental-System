<%-- 
    Document   : loc
    Created on : Apr 28, 2017, 12:36:05 AM
    Author     : EBIN
--%>

<%@page import="hello.connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
                                String txt_lat="";
                                String txt_lng="";
    
        String num=request.getParameter("ab");
        System.out.println(num);
        String ph="";
        String ssq="select *from registration where username='"+num+"'";
        ResultSet rs1=connect.getData(ssq);
        if(rs1.next())
        {
            ph=rs1.getString("phno");
        }
        String s1="";
        String sq1="select *from map where contact='"+ph+"'";
        ResultSet rs4=connect.getData(sq1);
        
        
        if(rs4.next())
        {
           txt_lat=rs4.getString(3);
           txt_lng=rs4.getString(4);
        }
  System.out.println(txt_lat);
    %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>FindLocation</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: <%=txt_lat%>, lng: <%=txt_lng%>};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_8h8KlDTj70KewuJJ1tdnZ5aUh9vhBFQ&callback=initMap">
        </script>
  </body>
</html>