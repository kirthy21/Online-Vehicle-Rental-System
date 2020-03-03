
<%@page import="hello.connect"%>
<%@page import="java.sql.ResultSet"%>
<%
    //out.println("haiii");
    String state=request.getParameter("q");
   out.println(state);
    String sql="select *from category where v_id='"+state+"'";
    ResultSet rs=connect.getData(sql);
    %>
    <select name="caste">
    <option>---Select---</option>
    <% while(rs.next())
	{
          
	%>
    
        <option value="<%=rs.getString("id")%>"><%=rs.getString("model")%></option>
       
	<% } %>
	
        
</select>
