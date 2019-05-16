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

<script type="text/javascript">
function fun()
{
var a = document.f1.pro.value;
var b = document.f1.rate.value;
var c = document.f1.des.value;

if(a=="")
{
alert("Enter the product name");
document.f1.pro.focus();
return false;
}

if(b=="")
{
alert("Enter the product rate");
document.f1.rate.focus();
return false;
}
if(isNaN(b))
{
alert("Enter the product rate");
document.f1.rate.focus();
return false;
}
if(c=="")
{
alert("Enter the product description");
document.f1.des.focus();
return false;
}


}
</script>
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
<td align="center"> <a href="adminmenu.jsp">My menu</a></td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>



<table align="left" bgcolor="#999999" width="20%" height="135">
<tr>
    <td align="center" class="id4">Welcome  <%=session.getValue("name")%></td>
</tr>
</table>

<form action="insertpro.jsp" name="f1" onSubmit="return fun()" method="post">
<table align="center"  bgcolor="#CC0000" width="50%" height="360" border="0">
<tr>
<td height="64" class="id2">Name of product :</td>
<td><input type="text" name="pro" ></td></tr>

<tr><td height="76" class="id2">Rate of product :</td><td><input type="text" name="rate"></td></tr>
<tr><td height="184" class="id2">Description of product :</td><td><textarea name="des" rows="10" cols="20"></textarea></td></tr>
<tr><td></td><td><input type="submit" name="sub" value="Add Product" >&nbsp;&nbsp;<input type="reset" name="reset" value="Clear"></td></tr>

</table></form>
 
<!--<table align="center" bgcolor="#CCCCCC" width="40%" height="300" border="0">
<tr>
<td align="center"><a href="regcus.jsp">Registered Customers</a></td>
</tr>
<tr>
<td align="center"><a href="itemlist.jsp">Available Items</a></td>
</tr>
<tr>
<td align="center"><a href="additem.jsp">Add Item(s)</a></td>
</tr>
<tr>
<td align="center"><a href="delitem.jsp">Delete Item(s)</a></td>
</tr>
<tr>
<td align="center"><a href="upitem.jsp">Update Item(s)</a></td>
</tr>

</table>-->

<%
 
 
 String temp = request.getParameter("message");
 
 if(temp!=null&&temp.equalsIgnoreCase("success"))
 {
 out.print("Successfully added");
 }
 
 %>

</body>
</html>

