<%-- 
    Document   : adminhome
    Created on : Apr 2, 2017, 1:18:06 PM
    Author     : 
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>ADMIN-ADD VEHICLE</title>
       <script>
        function seldist(x)
            {
                // clear(category)
//alert("haii");
                // f1(category);
				//var b=document.getElementById("sem").value;
				//alert(b);
                                //alert(x);
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp = new XMLHttpRequest();
                } else
                {// code for IE6, IE5
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function ()
                {
                    //4=request finished and response is ready,0=request not initialized,1=server connection established,2=request received,3=processing request      status 200=ok,404=page not found
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        

                        document.getElementById("sel").innerHTML = xmlhttp.responseText;
                        // alert(xmlhttp.responseText);
                    }
                }
            xmlhttp.open("GET", "state.jsp?q="+x, true);
              
            xmlhttp.send();
            }
             </script> 
            
    </head>
    <body>
    <center>

        <BR><BR><BR><BR><h2>Search VEHICLE</h2>
    </center>
    <center>
        <form action="add_vehicle" method="post" enctype="multipart/form-data">
            <table><tr><td>type of vehicle</td><td><select name="type" onchange="seldist(this.value)">
                        <%
                            String sql="select *from vehicletype";
                            ResultSet rs=connect.getData(sql);
                            while(rs.next())
                            {
                            %>       
              <option value="<%=rs.getString("v_id")%>"><%=rs.getString("vehicle_type")%></option>
              <%}
%>
              
                    
                    
                    </select></td></tr>
            <tr><td>category</td><td><select name="cat" id="sel">
                                <option>select</option>
                        </select></td>
            <tr><td>vehicle name</td><td><input type="text" name="vname"></td></tr>
        <table>
        
        <a href="reserve.jsp">Reserve</a>
        </table>
    </form>
    </center>
    </body>
</html>
