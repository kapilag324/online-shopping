<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try
{
  Connection con;
   con = databasec.getconnection();
   Statement st = con.createStatement();
   
   String mail = request.getParameter("auser");
   String pass = request.getParameter("apass");
   
   String s = "select * from admin where name='"+mail+"' and pass='"+pass+"'";
   
   ResultSet rs = st.executeQuery(s);
   
   if(rs.next())
   {
   session.putValue("name",rs.getString(1));
   %>
   <jsp:forward page="adminmenu.jsp" />
   <% 
   }
   else
   out.print("xxxxxxxxxx");
   }
   
   catch(Exception x)
   {
   out.println(x);
   }
   %>