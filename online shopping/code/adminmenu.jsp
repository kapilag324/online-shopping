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
          <td align="center"><a href="home.html">Sign out</a></td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>


<table align="left"  bgcolor="#999999" width="20%" height="135" border="2" bordercolor="#CC0000">
<tr>
    <td align="center" class="id4">Welcome  <%=session.getValue("name")%></td>
</tr>
<tr>
    <td align="center"><a href="msgbox.jsp">View Message box</a></td>
</tr>

</table>

<table align="center" bgcolor="#999999" width="40%" height="300" border="2" bordercolor="#CC0000">
<tr>
<td align="center" class="id2"><a href="regcus.jsp">Registered Customers</a></td>
</tr>
<tr>
<td align="center" class="id2"><a href="itemlist.jsp">Available Items</a></td>
</tr>
<tr>
<td align="center" class="id2"><a href="additem.jsp">Add Item(s)</a></td>
</tr>

</table>



</body>
</html>

