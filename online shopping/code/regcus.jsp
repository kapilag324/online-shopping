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
<td align="center"> <a href="home.html">Home</a></td>
          <td align="center"><a href="home.html">Log out</a></td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>


<form method="post" >
<table width="90%" height="500" border="1px" align="center" cellpadding="3" cellspacing="3" bgcolor="#CC0000" >
  	<tr>
  		
      <td colspan="12" align="center" class="id2" >View Register User Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="adminmenu.jsp">My menu</a></td>
	</tr>
	<tr>
		
	  
	  
      <th width="110" class="id2" align="left"> Name</th>
	  <th width="80" class="id2" align="left">Mail id</th>
	  <th width="78" class="id2" align="left">Phone</th>
		<th width="41" class="id2" align="left">Sex</th>
		<th width="136" class="id2" align="left">Address</th>
		<th width="65" class="id2" align="left">City</th>
		<th width="69" class="id2" align="left">State</th>
		<th width="70" class="id2" align="left">Pin code</th>
		
      
	      
	</tr>
  
<% 

    
    Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs=null;
	 String name = null,mail = null,phone = null,sex = null,address = null,city = null,state = null,pin = null;
	
	try
	 {  
	   con=databasec.getconnection();
	   
	   stmt = con.prepareStatement("select * from userdetails");
	     
	   rs = stmt.executeQuery();
		
	   while(rs.next())
       {
	   
	      name =rs.getString(1);
		  mail =rs.getString(2);
		  phone=rs.getString(4); 
		  sex=rs.getString(5); 
		  address=rs.getString(6);
		  city=rs.getString(7); 
		  state=rs.getString(8); 
		  pin=rs.getString(9); 
		  
		   
         %>
		 <tr>
		 <td class="id4"> 
		    <%=name%>
		</td>
		<td class="id4"> 
		    <%=mail%>
		</td>
		
		<td class="id4">
		      <%=phone%>
			  
			  </td>

		<td class="id4"> 
		    <%=sex%>
		</td>
		<td class="id4"> 
		    <%=address%>
		</td>
		<td class="id4"> 
		    <%=city%>
		</td>
		<td class="id4"> 
		    <%=state%>
		</td>
		<td class="id4"> 
		    <%=pin%>
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
