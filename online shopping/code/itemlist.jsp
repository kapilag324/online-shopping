<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>
<style type="text/css">
.id1{font-size:40px; color:white}
.id2{font-size:20px; color:white}
.id3{font-size:15px; color:white}
.id4{font-size:20px; color:black}
</style>

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
<td align="center"><a href="home.html">Home</a></td>
<td align="center"><a href="home.html">Sign out</a></td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>

<form method="post" >
<table width="850" height="468" align="center" cellpadding="3" cellspacing="3" bgcolor="#CC0000" >
  	<tr>
  		
      <td colspan="12" align="center" class="id2">View Available Products&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="adminmenu.jsp">My menu</a></td>
	</tr>
	<tr>
		
	  
	  
      <th width="258" height="62" align="left" class="id2"> Name of product</th>
	  <th width="128" class="id2" align="left">Rate </th>
	  <th width="318" class="id2" align="left">Description</th>
			  <th width="318" class="id2" align="left">Delete</th>
			  <th width="318" class="id2" align="left">Update</th>

      
	      
	</tr>
  
<% 

    
    Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs=null;
	 String pro = null,rate = null,des = null;
	
	try
	 {  
	   con=databasec.getconnection();
	   
	   stmt = con.prepareStatement("select * from prodetails");
	     
	   rs = stmt.executeQuery();
		
	   while(rs.next())
       {
	   
	      pro =rs.getString(2);
		  rate =rs.getString(3);
		  des=rs.getString(4); 
		  
		  
		   
         %>
		 <tr>
		 <td class="id4"> 
		    <%=pro%>
		</td>
		<td class="id4"> 
		    <%=rate%>
		</td>
		
		<td class="id4">
		      <%=des%>
			  
			  </td>

<td class="paragraping">
   <% 
   String ename = rs.getString(2);
   %>
		     <a href="delitem.jsp?name=<%=ename%>"> Delete</a>
			  
			  </td>
<td class="paragraping">
   <% 
   String fname = rs.getString(2);
   %>
		     <a href="upitem.jsp?name=<%=fname%>"> Update</a>
			  
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
