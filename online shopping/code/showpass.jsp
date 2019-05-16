<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
 
 <%
 String r1=null;
 String r2=null;

  
    String ans = request.getParameter("ans");
	
	Connection con = databasec.getconnection();
	Statement st = con.createStatement();
	ResultSet rs;
	String s = "select nmail,npass from userdetails where nans ='"+ans+"'";
	rs = st.executeQuery(s);
	
	if(rs.next())
	{
	 r1 = rs.getString(1);
	 r2 = rs.getString(2);
}
 else
 {
 %>
 
 <p align="center" class="id4">Answer provided by you is Wrong !!!!</p>
 <%
 

  }	
	%>
	
	

  
  
   







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
function fun1()
{
var b = document.f1.ans.value;


if(b=="")
{
alert("Please enter your Answer");
document.f1.ans.focus();
return false;
}

}
</script>
<title>ONLINE SHOPPING</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#66CCFF">
<table align="center" border="0" bordercolor="#CC0000" width="100%" height="100">
<tr>
<td>
<table align="center"  bgcolor="#CC0000"  width="100%" height="80%">
<tr>
<td align="center" class="id1">ABC ELECTRONICS PRIVATE LIMITED</td>
</tr>
</table>
<table align="center"  bgcolor="#999999" width="100%" height="30">
<tr>
<td align="center"> <a href="home.html">Home</a></td>
<td align="center">About us</td>
<td align="center">Contact</td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>
<%
if(r1==null&&r2==null)
{
r1="";
r2="";
}
%>
<form action="showpass.jsp" name="f1" method="post" onSubmit="return fun1()">
<table align="center" bgcolor="#999999" bordercolor="#CC0000" border="1" width="50%" height="200">
  <tr> 
    <td align="center" class="id2">Your user name is :</td>
	<td align="center" class="id2"><%=r1%></td>
  </tr>
  <tr>
  <td align="center" class="id2">Your password is :</td>
  <td align="center" class="id2"><%=r2%></td></tr>
  
</table></form>
</body>
</html>


 
 
