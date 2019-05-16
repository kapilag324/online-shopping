<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try
{
  Connection con;
   con = databasec.getconnection();
   Statement st = con.createStatement();
   String name = null;
   String mail = request.getParameter("cuser");
   String pass = request.getParameter("cpass");
   
   String s = "select * from userdetails where nmail='"+mail+"' and npass='"+pass+"'";
   
   ResultSet rs = st.executeQuery(s);
   
   if(rs.next())
   {
   session.putValue("name",rs.getString(1));
   %>
   <jsp:forward page="usermenu.jsp" />
   
   <%
   
   }
   else
   out.print("Please check your login credentials");
   }
   
   catch(Exception x)
   {
   out.println(x);
   }
   %>