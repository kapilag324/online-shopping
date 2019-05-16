<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%!
   Connection con;
   Statement st;
   ResultSet rs;
   
   %>
   
   <%
   
    try
	{
	
	String pro = request.getParameter("pro");
	String rate = request.getParameter("rate");
	String des = request.getParameter("des");
	
	con = databasec.getconnection();
	st=con.createStatement();
	String s = "insert into prodetails(pro,rate,des) values('"+pro+"','"+rate+"','"+des+"')";
	int x=st.executeUpdate(s);
	
	if(x!=0)
	{
	response.sendRedirect("additem.jsp?message=success");
	}
	else
	out.print("Failed");
	}
	
	catch(Exception e)
	{
	out.print(e);
	}
	%>