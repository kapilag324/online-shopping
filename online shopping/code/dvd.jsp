<%@ page language="java" import="java.sql.*,databaseconnection.*,java.util.*" errorPage="" %>

<%
    	java.util.Calendar datetime=java.util.Calendar.getInstance();

    String time=Integer.toString(datetime.get(java.util.Calendar.HOUR_OF_DAY))+":"+Integer.toString(datetime.get(java.util.Calendar.MINUTE))+":"+Integer.toString(datetime.get(java.util.Calendar.SECOND));
	String date=Integer.toString(datetime.get(java.util.Calendar.YEAR))+"/"+Integer.toString(((datetime.get(java.util.Calendar.MONTH))+1))+"/"+Integer.toString(datetime.get(java.util.Calendar.DATE));
 
   String x = Integer.toString(datetime.get(java.util.Calendar.HOUR_OF_DAY));
   String y = Integer.toString(datetime.get(java.util.Calendar.MINUTE));
   String z = Integer.toString(datetime.get(java.util.Calendar.SECOND));
   
    int x1 = (17);
	int y1= (00);
	int z1=(00);
	

   int x2 = (18);
	int y2= (00);
	int z2=(00);
	
if((Integer.parseInt(x) >= x1 ) && (Integer.parseInt(x) <=  x2 ) && (Integer.parseInt(y) >= y1 ) )
{



    String name ="dvd";
	String a = null; String b = null;String c = null; String pro = null;
    Connection con = databasec.getconnection();
	Statement st = con.createStatement();
	ResultSet rs;
	String s = " select * from auction where proname = '"+name+"'";
	rs = st.executeQuery(s);
	while (rs.next())
	{
	a = rs.getString(3);
	b = rs.getString(4);
	c=rs.getString(2);

	session.putValue("pro",c);

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
var a = document.f1.rate.value;

if(a=="")
{
alert("Please enter your auction rate");
document.f1.rate.focus();
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
<form action="insertrate.jsp" name="f1" method="post" onSubmit="return val()">
  <table width="50%" height="458" border="0" align="center" cellpadding="3" cellspacing="3" bgcolor="#CC0000">
<tr><td></td></tr>
 <tr valign="top">
      <td align="center" class="id1">DVD PLAYER</td>
    </tr> 
 <tr><td align="right"><img src="image/oppo-dv-983h-dvd-player-front-main-large.jpg" width="90%" height="30%"></td></td></tr>
 <tr>
      <td align="center" class="id2" width="100%">Auction time starts at <%=x1%> hrs
        and ends at <%=x2%> hrs</tr>
<tr><td align="center" class="id2">Initial auction rate :</td><td align="center" class="id2">Rs. <%=a%></td></tr>
<tr><td align="center" class="id2">Current auction rate :</td><td align="center" class="id2">Rs. <%=b%></td></tr>
<tr><td align="center" class="id2">Enter your Auctin rate :</td>
<td><input type="text" name="rate"></td></tr>
<tr><td align="center"><input type="submit" name="sub" value="Submit"></td><td align="center"><input type="reset" name="reset" value="Clear"></td></tr>
</table>
 
  
</form>
<% 
}


else

{
String user = null;
String r = null;
String laptop = "dvd"; 
Connection con2 = databasec.getconnection();
Statement st2 = con2.createStatement();
String sss = "select user,rate from auction where proname='"+laptop+"'";
ResultSet rs2 = st2.executeQuery(sss);

while(rs2.next())
{
user = rs2.getString(1);
r = rs2.getString(2);
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
var a = document.f1.rate.value;

if(a=="")
{
alert("Please enter your auction rate");
document.f1.rate.focus();
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
<td align="center">About us</td>
<td align="center">Contact</td>
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
<form action="insertrate.jsp" name="f1" method="post" onSubmit="return val()">
  <table width="90%" height="158" border="0" align="center" cellpadding="3" cellspacing="3" bgcolor="#CC0000">
<tr><td class="id1" align="center">Auction time out !!!!!</td></tr>
<tr><td class="id2" align="center">The product has been SOLD to <%=user%> for Sum of Rs.<%=r%> </td></tr>
</table>
 
  
</form>
<%
}

%>
</body>
</html>

