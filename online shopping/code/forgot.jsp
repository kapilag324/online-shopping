<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
.id1{font-size:40px; color:white}
.id2{font-size:20px; color:white}
.id3{font-size:15px; color:white}
.id4{font-size:20px; color:black}
.id5{font-size:25px; color:blue}

</style>
<script type="text/javascript">

function fun2()
{
var a = document.f2.cuser.value;

if(a=="")
{
alert("Enter your username");
document.f2.cuser.focus();
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
<td align="center" class="id1">ABC  ELECTRONICS  PRIVATE  LIMITED</td>
</tr>
</table>
<table align="center"  bgcolor="#999999" width="100%" height="30">
<tr>
<td align="center" class="id4"> <a href="home.html">Home</a></td>
<td align="center" class="id4">About us</td>
<td align="center" class="id4">Contact</td>
</tr>

</table>
</td>
</tr>
</table>
<p>&nbsp;</p>

<form action="forgotpass.jsp" name="f2" onSubmit="return fun2()" method="post">


<table align="center" bgcolor="#999999" border="1" bordercolor="#FF0000" width="50%" height="130">
<tr>
    <td  align="center" class="id4"> 
      Enter your user name:
</td>
	<td><input type="text" name="cuser" ></td>
</tr>
<tr>

<td align="center"><input type="submit" name="sub" value="Submit"></td>
<td align="center"><input type="reset" name="reset" value="Clear"></td>
</tr>

</table>      </form>

</body>
</html>
