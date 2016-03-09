<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
</head>

<body background="images/jobseeker.gif">
<form name="jobseek" method="post" action="./jobseeklogin">
   <marquee><p><strong><font color="#CC3300" size="+2" face="Monotype Corsiva"> 
  WELCOME TO</font><font color="#3300FF" size="+2" face="Monotype Corsiva"> : 
      www.avanthi_placement_portal.com</font></strong></p></marquee>

<p>&nbsp;</p>

<div align="left"> 
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
<%
String status=request.getParameter("status");
if(status!=null)
       {
%>
<%=status%>
<%}%>

  <table width="264" border="0" cellpadding="5">
    <tr> 
      <td width="65"><strong><font color="#009966" size="2">User Id:</font></strong></td>
      <td width="173">
          <input type="text" name="uid" id="uid">
        </td>
    </tr>
    <tr> 
      <td><strong><font color="#009966" size="2">Password:</font></strong></td>
      <td>
          <input type="password" name="pass" id="pass">
        </td>
    </tr>
  </table>
  
</div>
<table width="265" border="0" cellpadding="5">
  <tr bordercolor="#669966" bgcolor="#66CC66"> 
      <td width="158" height="43"><font color="#990033" size="-1"><a href="./newempreg.jsp">New 
        User Login ?</a></font></td>
      <td width="81"><strong><font size="-1">
<input type="submit"  onclick="return validate(this)" value="Go...">
        </font></strong></td>
  </tr>
</table>
<p>&nbsp;</p>
</form>
</body>
</html>
