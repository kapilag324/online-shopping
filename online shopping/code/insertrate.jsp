<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
  try
  {
  String rate = null;
  String rate1 = request.getParameter("rate");
  String pro = (String) session.getValue("pro");
  Connection con = databasec.getconnection();
  Statement st = con.createStatement();
  String ss = "select rate from auction where proname = '"+pro+"'";
  ResultSet rs=st.executeQuery(ss);
  while(rs.next())
  {
  rate = rs.getString(1);
  }
  if(Integer.parseInt(rate1)>Integer.parseInt(rate))
  {
  String name = (String) session.getValue("name");
  String s = "update auction set rate='"+rate1+"',user='"+name+"' where proname='"+pro+"'";
  Statement st1 = con.createStatement();
  int x=st1.executeUpdate(s);
  if(x!=0)
  {
out.print("You have successfully Registered your auction rate");

  }
  else
  {
  out.print("failed");
  }
  }
  
  else
  {
  out.print("Your rate is below AUCTION rate");
  }
  
  }
  
  catch(Exception e)
  {
  out.print(e);
  }
  %>