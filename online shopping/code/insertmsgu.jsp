<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
  try
  {
   String to = (String) session.getValue("to");
  String subj = request.getParameter("subj");
  String msg = request.getParameter("msg");
  
  Connection con = databasec.getconnection();
  Statement st = con.createStatement();
  
  String s = "insert into customermsgs (ato,subject,message) values('"+to+"','"+subj+"','"+msg+"')";
  
  int x=st.executeUpdate(s);
  if(x!=0)
  {
  out.print("Msg sent Successfully");
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