<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
 String to = request.getParameter("to");
 session.putValue("to",to);
 %>
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
var a = document.f1.subj.value;
var b = document.f1.msg.value;
if(a=="")
{
alert("Enter the subject");
document.f1.subj.focus();
return false;
}
if(b=="")
{
alert("Enter the message");
document.f1.msg.focus();
return false;
}


}


</script>
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
<td align="center"> <a href="home.html">Log out</a></td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>



<table align="left" bgcolor="#999999" width="20%" height="135">
<tr>
    <td align="center" class="id2">Welcome  <%=session.getValue("name")%></td>
</tr>
<tr>
    <td align="center" class="id2"><a href="msgbox.jsp">View Message box</a></td>
</tr>

</table>

<form action="insertmsgu.jsp" name="f1" method="post" onSubmit="return fun()">
<table align="center" bgcolor="#CC0000" border="0" width="60%" height="234" >
  <tr>
    <td height="64" class="id2">Subject : </td>
    <td><input type="text" name="subj" size="60"></td>
  </tr>
  <tr>
    <td class="id2">Message :</td>
    <td><textarea name="msg" rows="5" cols="45"></textarea></td>
  </tr>
  <tr>
    <td height="58"></td>
    <td><input type="submit" name="sub" value="Send">
      &nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="reset" value="Clear"></td>
  </tr>
</table></form></body>