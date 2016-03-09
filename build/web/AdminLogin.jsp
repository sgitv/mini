<html>
<head>
<script>
function validate()
{
    if(!document.getElementById("uid").value)
	{
		alert("Enter Username");
                document.getElementById("uid").focus();
		return false;
	}
	if(!document.getElementById("pass").value)
	{
		alert("Enter Password");
		document.getElementById("pass").focus();
		return false;
	}

}
</script>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body background="images/admin_1.jpg">
<form action="./AdminLogin" name="admin">
<div align="left"> 
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
 
<p><font color="lime" size="+4">Administrator Login Form</font></p>
<p>&nbsp;</p>
<table width="28%">
  <tr>
      <td><font color="lime"><b>UserName</b></font></td>
    <td>
        <input type="text" name="uid" id="uid">
      </td>
  </tr>
  <tr>
      <td><font color="lime"><b>Password</b></font></td>
    <td> <input type="password" name="pass" id="pass">
      </td>
  </tr>
  <tr>
      <td align="center" colspan="2"> <input type="submit" name="Submit" value="Submit" onclick="return validate(this)">


        <input name="Reset" type="reset" value="Reset">
      </td>
  </tr>
</table>
</div>

</form>
<center>
 <%
 String status=request.getParameter("status");
 if(status!=null)
         {
 %> 
 <%=status%>
 <%}%>
</center>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
