<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
  try
  {
  String afrom = (String) session.getValue("name");
  String subj = request.getParameter("subj");
  String msg = request.getParameter("msg");
  
  Connection con = databasec.getconnection();
  Statement st = con.createStatement();
  
  String s = "insert into adminmsgs(afrom,subject,message) values('"+afrom+"','"+subj+"','"+msg+"')";
  
  int x=st.executeUpdate(s);
  if(x!=0)
  {
  out.print("Msg sent to admin");
  }
  else
  {
  out.print("failed");
  }
  }
  
  catch(Exception e)
  {
  out.print(e);
  }
  %>