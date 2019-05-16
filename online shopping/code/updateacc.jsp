<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%!
String name=null;
 String mail=null;
String pass=null;
String contact=null;
String add=null;
String city=null;
String state=null;
String pin=null;
String q=null;
String ans=null;


%>

<%
try
{

 String name = (String) session.getValue("name");
  Connection con = databasec.getconnection();
  Statement st = con.createStatement();
  ResultSet rs;
 
 

String ss = "select * from userdetails where nname='"+name+"'";
rs=st.executeQuery(ss);

while(rs.next())
{
mail=rs.getString(2);
pass=rs.getString(3);
q=rs.getString(4);
ans=rs.getString(5);
contact=rs.getString(6);
add=rs.getString(8);
city=rs.getString(9);
state=rs.getString(10);
pin=rs.getString(11);
}
}

catch(Exception e)
{
out.print(e);
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
var j = document.f3.q.value;
var k = document.f3.ans.value;
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
if(j=="")
{
alert("Enter your Security question");
document.f3.q.focus();
return false;
}

if(k=="")
{
alert("Enter your Answer");
document.f3.ans.focus();
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
<td align="center"> <a href="home.html">Sign out</a></td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>


<form action="updetails.jsp" name="f3" method="post" onSubmit="return fun3()">
<table align="center" bgcolor="#CC0000" height="90%" width="60%">
<tr>
<td width="43%" align="center"  class="id2">Name :</td>
<td width="57%"><input type="text" name="nname" value="<%= session.getValue("name")%>"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">E Mail id :</td>
<td width="57%"><input type="text" name="nmail" value="<%=mail%>"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">Password :</td>
<td width="57%"><input type="password" name="npass" value="<%=pass%>"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">Re enter password :</td>
<td width="57%"><input type="password" name="ncpass"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">Enter your security question :</td>
<td width="57%"><input type="text" name="q" value="<%=q%>"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">Security Answer :</td>
<td width="57%"><input type="password" name="ans" value="<%=ans%>"></td>
</tr>

<tr>
<td width="43%" align="center" class="id2">Contact no :</td>
<td width="57%"><input type="text" name="nphone" value="<%=contact%>"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">Gender :</td>
<td width="57%"><input type="radio" name="nsex" value="male">male&nbsp;<input type="radio" name="nsex" value="female">Female</td>
</tr>

<tr>
<td width="43%" align="center" class="id2">Address :</td>
<td width="57%"><input type="text" name="nadd" value="<%=add%>"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">City :</td>
<td width="57%"><input type="text" name="ncity" value="<%=city%>"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">State :</td>
<td width="57%"><input type="text" name="nstate" value="<%=state%>"></td>
</tr>
<tr>
<td width="43%" align="center" class="id2">Pin code :</td>
<td width="57%"><input type="text" name="npin" value="<%=pin%>"></td>
</tr>
<tr>
<td width="43%" align="center"></td>
<td width="57%"><input type="submit" name="sub" value="Update account">&nbsp;<input type="reset" name="reset" value="Clear"></td>
</tr>

</table>
</form>

<%
  String temp=null;
  
  temp=request.getParameter("message");
  
  if(temp!=null&&temp.equalsIgnoreCase("success"))
  {
  out.print("Successfully updated");
  }
  %>
</body>
</html>

