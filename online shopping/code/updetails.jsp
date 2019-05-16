<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%!

 Connection con = null;
 Statement st = null;
 ResultSet rs;
 
 %>
 
 
 <%
 try
 {
   String name = (String) session.getValue("name");
    String nname = request.getParameter("nname");
	String nmail = request.getParameter("nmail");
	String npass = request.getParameter("npass");
	 String nq = request.getParameter("q");
	String nans = request.getParameter("ans");
  
	String nphone = request.getParameter("nphone");
	String nsex = request.getParameter("nsex");
	String nadd = request.getParameter("nadd");
	String ncity = request.getParameter("ncity");
	String nstate = request.getParameter("nstate");
	String npin = request.getParameter("npin");
	con = databasec.getconnection();
	
	String sql = "update userdetails set nname='"+nname+"',nmail='"+nmail+"',npass='"+npass+"',nq='"+nq+"',nans='"+nans+"',nphone='"+nphone+"',nsex='"+nsex+"',nadd='"+nadd+"',ncity='"+ncity+"',nstate='"+nstate+"',npin='"+npin+"' where nname='"+name+"'";
   
 
	st = con.createStatement(); 
	int x= st.executeUpdate(sql);
	
	if(x!=0)
	{
	response.sendRedirect("updateacc.jsp?message=success");
}
else
{
out.print("Failed");
}





}
	 
	
catch(Exception e)
{
out.println(e);
}
%>