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


<table align="left" bgcolor="#999999" width="26%" height="185">
  <tr>
    <td align="center" class="id2">Welcome  <%=session.getValue("name")%>&nbsp;</td>

</tr>
<tr>
<td align="center" class="id2"><a href="updateacc.jsp">My Account Details</a></td>
<td></td>
</tr>

<tr>
<td align="center" class="id2"><a href="sendmsg.jsp">Message to Admin</a></td></tr>
<tr>
<td align="center" class="id2"><a href="home.html">Sign out</a></td></tr>
<tr><td align="center" class="id2"><a href="msgbox1.jsp">Message box</a></td></tr>
</table>
<form action="insertpur.jsp" name="f1" method="post" onSubmit="return val()">
  <table width="50%" height="458" border="0" align="right" cellpadding="3" cellspacing="3" bgcolor="#CC0000">
  <tr> 
    <td colspan="12" align="center" class="id2" background="Images/bg_thead.gif">View 
      Register User Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="">My 
      menu</a></td>
  </tr>
  <tr>   <th width="69" height="62" align="left" class="id2"> </th>

      <th width="263" height="62" align="left" class="id2"> Name </th>
    <th width="124" class="id2" align="left">Rate 
     </th>
    <th width="237" class="id2" align="left">Quantity</th>
  </tr>
  <% 

    
    Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs=null;
	 String pro = null,rate = null,pid = null;
	
	try
	 {  
	   con=databasec.getconnection();
	   
	   stmt = con.prepareStatement("select * from prodetails");
	     
	   rs = stmt.executeQuery();
		
		int i=1;
	   while(rs.next())
       {
	   
	      pro =rs.getString(2);
		  rate =rs.getString(3);
		  pid = rs.getString(1);
		  
		   
         %>
  <tr>
    <td><input type="checkbox" name="p<%=i%>" value="<%=pid%>"></td> 
    <td class="id2"> <%=pro%> </td>
    <td class="id2"><%=rate%> </td>
      <td class="id2"> <input type="text" name="q<%=i%>"></td>
  </tr>
  <%
   i++;
	   }
	  
	  
	 }
	   catch(Exception e)
	   {
	     out.println(e.getMessage());
	   }
	   
	    %>
		<tr>
		<td></td><td></td><td><input type="submit" name="sub" value="Add to cart">&nbsp;&nbsp;&nbsp;<td><input type="reset" name="reset" value="Clear"></td></td></tr>
</table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table align="left" bgcolor="#CC0000" width="40%" height="38%">
    <tr valign="top">
      <td align="center" class="id1">ONLINE AUCTION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
	<tr>
      <td class="id2"><img src="image/LAPTOP.JPG" width="40%" height="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="laptop.jsp">LAPTOP</A></td>
    </tr>
		<tr><td class="id2"><img src="image/oppo-dv-983h-dvd-player-front-main-large.jpg" width="40%" height="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="dvd.jsp">DVD PLAYER</a></td></tr>

	<tr><td class="id2" align="left"><img src="image/Acer-AT4220-LCD-TV.jpg" width="40%" height="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="lcd.jsp">LCD TV</a></td></tr>

  </table>

</form>
<!--
<script type="text/javascript">
function val()
{
if(document.f1.p1.checked==true)
{
if(document.f1.q1.value=="")
{
alert("Select quantity1");
document.f1.q1.focus();
return false;
}
}

if(document.f1.p2.checked==true)
{
if(document.f1.q2.value=="")

{
alert("Select quantity2");
document.f1.q2.focus();
return false;
}
}

if(document.f1.p3.checked==true)
{
if(document.f1.q3.value=="")

{
alert("Select quantity3");
document.f1.q3.focus();
return false;
}
}

if(document.f1.p1.checked==false&&document.f1.p2.checked==false&&document.f1.p3.checked==false)
{
alert("Select Product");
return false;
}
}
</script>
-->


</body>

</html>

