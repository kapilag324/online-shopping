<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>


  
  
   







<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
.id1{font-size:40px; color:white}
.id2{font-size:20px; color:white}
.id3{font-size:15px; color:white}
.id4{font-size:20px; color:black}
</style>

<title>ONLINE SHOPPING</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#66CCFF">
<table align="center" border="0" width="100%" height="100">
<tr>
<td>
<table align="center"  bgcolor="#CC0000" width="100%" height="80%">
<tr>
<td align="center" class="id1">ABC ELECTRONICS PRIVATE LIMITED</td>
</tr>
</table>
<table align="center"  bgcolor="#999999" width="100%" height="30">
<tr>
<td align="center"> <a href="home.html">Home</a></td>
<td align="center"> <a href="home.html">Sign out</a></td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>

<form method="post" >
<table width="742" height="300" border="1px" align="center" cellpadding="3" cellspacing="3" bgcolor="#CC0000" >
  	<tr>
  		
      <td colspan="12" align="center" class="id2">View Mail box &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</tr>
	<tr>
		
	  
	  
      <th width="110" class="id2" align="left"> From</th>
	  <th width="80" class="id2" align="left">Subject</th>
	  <th width="78" class="id2" align="left">Message</th>
	    <th width="78" class="id2" align="left">Delete</th>
		
      
	      
	</tr>
  
<% 

    
    Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs=null;
	 String afrom = null,subj= null,msg = null;
	String name = (String) session.getValue("name");
	try
	 {  
	   con=databasec.getconnection();
	   
	   stmt = con.prepareStatement("select * from customermsgs where ato='"+name+"'");
	     
	   rs = stmt.executeQuery();
		
	   while(rs.next())
       {
	   
	      afrom =rs.getString(3);
		  subj =rs.getString(4);
		  msg=rs.getString(5); 
		  
		   
         %>
		 <tr>
		 <td class="id4"> 
		    <%=afrom%>
		</td>
		<td class="id4"> 
		    <%=subj%>
		</td>
		
		<td class="id4">
		      <%=msg%>
			  
			  </td>
			  <td class="id4">
			    <%
		 String ecode =""+ rs.getInt(1);
		 %>
		     <a href="delmsg1.jsp?code=<%=ecode%>"> Delete</a>
			  
			  </td>
		</tr>
         <%
	   }
	  
	 }
	   catch(Exception e)
	   {
	     out.println(e.getMessage());
	   }
	   
	    %>
	</table>
	
</form>



</body>
</html>

