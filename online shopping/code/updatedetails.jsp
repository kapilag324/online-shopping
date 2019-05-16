<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%! 
String na;
  ResultSet rs;
  Statement st,st1;
  Connection con;
  
  %>
  
  <% 
  
  
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
    
  %>
 <% 
  
  try
  {
     String na = (String) session.getValue("name");     
    con=databasec.getconnection();
	st=con.createStatement(); 
	String s = "update userdetails set nname='"+nname+"',nmail='"+nmail+"',npass='"+npass+"',npass='"+nq+"',npass='"+nans+"',nphone='"+nphone+"',nsex='"+nsex+"',nadd='"+nadd+"',ncity='"+ncity+"',nstate='"+nstate+"',npin='"+npin+"' where nname='"+na+"'";
	int x =st.executeUpdate(s);
	
	if(x!=0)
	{
	%>
	<jsp:forward page="home.html" />
	<%
	}
	else
	{
	
	out.print("Error");
	}
	}
	
	catch(Exception e)
	{
	out.print(e);
	}
	%>