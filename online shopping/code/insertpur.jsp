<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
 
 <%
 String r1=null;
 String r2=null;
 String r3=null;
 String r4=null;
 String r5=null;
 String r6=null;
 String r7=null;
 String r8=null;
 String r9=null;
 String r10=null;

 int total = 0;
  
    String p1 = request.getParameter("p1");
	String p2 = request.getParameter("p2");
	String p3 = request.getParameter("p3");
	String p4 = request.getParameter("p4");
	String p5 = request.getParameter("p5");
    	String p6 = request.getParameter("p6");
	String p7 = request.getParameter("p7");
	String p8 = request.getParameter("p8");
	String p9 = request.getParameter("p9");
	String p10 = request.getParameter("p10");


	String q1 = request.getParameter("q1");
	String q2 = request.getParameter("q2");
	String q3 = request.getParameter("q3");
		String q4 = request.getParameter("q4");
	String q5 = request.getParameter("q5");
		String q6 = request.getParameter("q6");
	String q7 = request.getParameter("q7");
	String q8 = request.getParameter("q8");
	String q9 = request.getParameter("q9");
	String q10 = request.getParameter("q10");


	Connection con = databasec.getconnection();
	Statement st = con.createStatement();
	ResultSet rs;
	String s = "select rate,pid from prodetails where pid in ('"+p1+"','"+p2+"','"+p3+"','"+p4+"','"+p5+"')";
	rs = st.executeQuery(s);
	
	while(rs.next())
	{
	 r1 = rs.getString(1);
	 r2 = rs.getString(2);
if(r2.equals(p1))
{
	total += Integer.parseInt(q1)*Integer.parseInt(r1);
	}
 
 
 else if(r2.equals(p2))
 {
	total += Integer.parseInt(q2)*Integer.parseInt(r1);
 } 
 
 else if(r2.equals(p3))
 {
	total += Integer.parseInt(q3)*Integer.parseInt(r1);
 } 
 
 else if(r2.equals(p4))
 {
	total += Integer.parseInt(q4)*Integer.parseInt(r1);
 } 

 else if(r2.equals(p5))
 {
	total += Integer.parseInt(q5)*Integer.parseInt(r1);
 } 
 else if(r2.equals(p6))
 {
	total += Integer.parseInt(q6)*Integer.parseInt(r1);
 } 
 else if(r2.equals(p7))
 {
	total += Integer.parseInt(q7)*Integer.parseInt(r1);
 } 
 else if(r2.equals(p8))
 {
	total += Integer.parseInt(q8)*Integer.parseInt(r1);
 } 
 else if(r2.equals(p9))
 {
	total += Integer.parseInt(q9)*Integer.parseInt(r1);
 } 
 
 else
 { 
 	total += Integer.parseInt(q5)*Integer.parseInt(r1);
}
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
function val()
{
var b = document.f1.name.value;
var c = document.f1.pass.value;

if(document.f1.mode[0].checked==false&&document.f1.mode[1].checked==false)
{
alert("Select your mode");
return false;
}

if(b=="")
{
alert("Please enter your name");
document.f1.name.focus();
return false;
}

if(document.f1.month.selectedIndex==false)
{
alert("Select month");
return false;
}
if(document.f1.year.selectedIndex==false)
{
alert("Select year");
return false;
}

if(c=="")
{
alert("Enter password");
document.f1.pass.focus();
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
<td align="center"> <a href="home.html">Sign out</a></td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>


<table align="left" bgcolor="#999999" width="25%" height="235">
  <tr>
    <td align="center" class="id4">Welcome  <%=session.getValue("name")%>&nbsp;</td>

</tr>
<tr>
<td align="center" class="id4"><a href="updateacc.jsp">My Account Details</a></td>
<td></td>
</tr>
<tr>
<td align="center" class="id4"><a href="sendmsg.jsp">Message to Admin</a></td></tr>
<tr>
<td align="center" class="id4"><a href="home.html">Sign out</a></td></tr>
<tr><td align="center" class="id4"><a href="msgbox1.jsp">Message Box</a></td></tr>
</table>
<form action="pay.jsp" name="f1" method="post" onSubmit="return val()">
<table align="center"  bgcolor="#CC0000" width="60%" height="450" border="0">
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr><td  align="center"  class="id2">Total Amount of your purchase :
 </td><td class="id4"> <%=total%></td></tr>
 <tr><td></td></tr>

<tr><td align="center" class="id2">Mode of Payment :</td><td class="id4"><input type="radio" name="mode" value="debit">Debit&nbsp;&nbsp;&nbsp;<input type="radio" name="mode" value="credit">Credit&nbsp;&nbsp;&nbsp;<input type="radio" name="mode" value="net">Net Banking</td></tr>
<tr><td></td></tr>
<tr><td class="id2" align="center">Name on the card : </td><td><input type="text" name="name" ></td></tr>
<tr><td></td></tr>
<tr><td class="id2" align="center">Expiry date / Valid from :</td><td><select name="month">
<option selected value>--month--</option>
<option>01</option>
<option>02</option>
<option>03</option>
<option>04</option>
<option>05</option>
<option>06</option>
<option>07</option>
<option>08</option>
<option>09</option>
<option>10</option>
<option>11</option>
<option>12</option>

</select>
<select name="year">
<option selected value>--year--</option>
<option>2000</option>
<option>2001</option>
<option>2002</option>
<option>2003</option>
<option>2004</option>
<option>2005</option>
<option>2006</option>
<option>2007</option>
<option>2008</option>
<option>2009</option>
<option>2010</option>
<option>2011</option>
<option>2012</option>
<option>2013</option>
<option>2014</option>

</select>
</td></tr>
<tr><td></td></tr>
	<tr><td class="id2" align="center">Password : </td><td><input type="password" name="pass"></td></tr>
	<tr><td></td></tr>
		<tr><td></td></tr>

<tr><td></td><td>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="Pay">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="clear" value="Clear"></td></tr>
</table></form>

</body>
</html>


 
 
