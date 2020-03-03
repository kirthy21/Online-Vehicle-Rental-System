
<%@page import="hello.connect"%>
<%@page import="java.sql.ResultSet"%>
<%
    //out.println("haiii");
    String date=request.getParameter("q");
    String rid=request.getParameter("vid");
   //out.println(state);
    String sql="select b.*,v.* from vehicle_list v,booking b where b.vid='"+rid+"' and v.vehicle_id='"+rid+"' and b.booked_date='"+date+"' and v.status='1'";
    ResultSet rs=connect.getData(sql);
    int f=0;
   while(rs.next())
	{
         f=1;  
       
	} 
%>
<input type="text" name="a" value="<%=f%>">
	
        

