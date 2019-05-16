<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%!
String na;
String mail;
String pass;
String contact;
String city;
String state;
String add;
String pin;
%>

<%
try
{
String na= (String) session.getValue("name");

Connection con = databasec.getconnection();
Statement st = con.createStatement();
ResultSet rs;

String s = "select * from userdetails where nname='"+na+"'";

rs=st.executeQuery(s);

while(rs.next())
{
mail = rs.getString(2);
pass = rs.getString(3);
contact = rs.getString(4);

add = rs.getString(6);
city = rs.getString(7);
state= rs.getString(8);
pin = rs.getString(9);
}
}
catch(Exception e)
{
out.print(e);
}

%>



<html>
<head>
<style type="text/css">
.id1{font-size:40px; color:white}
.id2{font-size:20px; color:white}
.id3{font-size:15px; color:white}
.id4{font-size:20px; color:black}
</style>

<script type="text/javascript">
function fun3()
{
var a = document.f3.nname.value;
var b = document.f3.nmail.value;
var c = document.f3.npass.value;
var d = document.f3.ncpass.value;
var e = document.f3.nphone.value;
var f = document.f3.nadd.value;
var g = document.f3.ncity.value;
var h = document.f3.nstate.value;
var i = document.f3.npin.value;

if(a=="")
{
alert("Enter your name");
document.f3.nname.focus();
return false;
}
if(b=="")
{
alert("Enter your mail id");
document.f3.nmail.focus();
return false;
}
if(c=="")
{
alert("Enter your password");
document.f3.npass.focus();
return false;
}
if(d=="")
{
alert("Re Enter your password");
document.f3.ncpass.focus();
return false;
}
if(c!=d)
{
alert("Your passwords doesnt match");
document.f3.ncpass.focus();
return false;
}
if(e=="")
{
alert("Enter your Phone no");
document.f3.nphone.focus();
return false;
}

if(document.f3.nsex[0].checked==false&&document.f3.nsex[1].checked==false)
{
alert("Select your gender");

return false;
}

if(f=="")
{
alert("Enter your Address");
document.f3.nadd.focus();
return false;
}
if(g=="")
{
alert("Enter your city");
document.f3.ncity.focus();
return false;
}
if(h=="")
{
alert("Enter your State");
document.f3.nstate.focus();
return false;
}
if(i=="")
{
alert("Enter your pincode");
document.f3.npin.focus();
return false;
}

}
</script>
<title>Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head><h1 align="center">Registration of New user</h1>

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


<form action="updatedetails.jsp" name="f3" method="post" onSubmit="return fun3()">
<table align="center" bgcolor="#996633" height="80%" width="50%">
<tr>
<td width="43%" align="center">Name :</td>
<td width="57%"><input type="text" name="nname" value="<%= session.getValue("name")%>"></td>
</tr>
<tr>
<td width="43%" align="center">E Mail id :</td>
<td width="57%"><input type="text" name="nmail" value="<%= mail%>"></td>
</tr>
<tr>
<td width="43%" align="center">Password :</td>
<td width="57%"><input type="password" name="npass" value="<%= pass%>"></td>
</tr>
<tr>
<td width="43%" align="center">Re enter password :</td>
<td width="57%"><input type="password" name="ncpass"></td>
</tr>

<tr>
<td width="43%" align="center">Contact no :</td>
<td width="57%"><input type="text" name="nphone" value="<%= contact%>"></td>
</tr>
<tr>
<td width="43%" align="center">Gender :</td>
<td width="57%"><input type="radio" name="nsex" value="male">male&nbsp;<input type="radio" name="nsex" value="female">Female</td>
</tr>

<tr>
<td width="43%" align="center">Address :</td>
<td width="57%"><input type="text" name="nadd" value="<%= add%>"></td>
</tr>
<tr>
<td width="43%" align="center">City :</td>
<td width="57%"><input type="text" name="ncity" value="<%= city%>"></td>
</tr>
<tr>
<td width="43%" align="center">State :</td>
<td width="57%"><input type="text" name="nstate" value="<%= state%>"></td>
</tr>
<tr>
<td width="43%" align="center">Pin code :</td>
<td width="57%"><input type="text" name="npin" value="<%= pin%>"></td>
</tr>
<tr>
<td width="43%" align="center"></td>
<td width="57%"><input type="submit" name="sub" value="Update account">&nbsp;<input type="reset" name="reset" value="Clear"></td>
</tr>

</table>
</form>
</body>
</html>
