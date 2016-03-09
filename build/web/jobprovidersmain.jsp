<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="javascript">
function fun()
{
if(!document.getElementById("uid").value)
{
alert("Please Mention Provider Id");
document.getElementById("uid").focus();
return false;
}
if(!document.getElementById("pass").value)
{
alert("Please Mention Password");
document.getElementById("pass").focus();
return false;
}
}

</script>
<body background="images/jobprovider.jpg">
<form name="jobprovider" method="post" action="./JobProviderLogin">
<marquee><p><strong><font color="#CC3300" size="+2" face="Monotype Corsiva"> 
  WELCOME TO</font><font color="#3300FF" size="+2" face="Monotype Corsiva"> : 
      www.avanthi_placement_portal.com</font></strong></p></marquee>

<p>&nbsp;</p>

<div align="left"> 
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><font color="black" size="5">Job Provider Login Form</font></p>
  <table width="264" border="0" cellpadding="5">
    <tr> 
        <td width="65"><strong><font color="black" size="2"><b>Provider Id:</b></font></strong></td>
      <td width="173">
          <input type="text" name="uid" id="uid">
        </td>
    </tr>
    <tr> 
        <td><strong><font color="black" size="2"><b>Password:</b></font></strong></td>
      <td>
          <input type="password" name="pass" id="pass">
        </td>
    </tr>
  </table>
  
</div>
<table width="265" border="0" cellpadding="5">
  <tr bordercolor="#669966" bgcolor="#66CC66"> 
     <!-- <td width="158" height="43"><font color="#990033" size="-1"><a href="./newempreg.htm">New 
        User Login ?</a></font></td>
      <td width="81"><strong><font size="-1">-->
<input type="submit" name="Submit" value="Submit" onclick="return fun(this)">
<input type="reset" name="Clear">
        </font></strong></td>
  </tr>
</table>
<%
String status=request.getParameter("status");
if(status!=null)
       {
%>
<%=status%>
<%}%>
<p>&nbsp;</p>
</form>
</body>
</html>
