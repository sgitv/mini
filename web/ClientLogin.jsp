<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<script>
 function Validation()
 {
     if(!document.getElementById("user").value)
         {
             alert("Please Mention User Id");
             document.getElementById("user").focus();
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
</head>

<body background="images/client.jpg">


<form name="form1" method="post" action="./NewClientLogin">
<marquee><p><strong><font color="#CC3300" size="+2" face="Monotype Corsiva"> 
  WELCOME TO</font><font color="#3300FF" size="+2" face="Monotype Corsiva"> : 
      www.avanthi_placement_portal.com</font></strong></p></marquee>
<p align="center"><strong><font color="white" size="+4">Clients Login</font></strong></p>
<div align="left"> 
  <p>&nbsp;</p><table width="342" border="0" cellpadding="5" background="white">
    <tr> 
      <td width="113"><strong><font color="#009966" size="2">User Id:</font></strong></td>
      <td width="203">
          <input type="text" name="user" id="user">
        </td>
    </tr>
    <tr> 
      <td height="33"><strong><font color="#009966" size="2">Password:</font></strong></td>
      <td>
          <input type="password" name="pass" id="pass">
        </td>
    </tr>
  </table>
  <table width="344" border="0" cellpadding="5">
    <tr bordercolor="#669966" bgcolor="#66CC66"> 
      <td width="158" height="54"><font color="#990033" size="1"><a href="./newclientregapplication12.jsp">New 
        Client Login ?</a></font></td>
      <td width="81">

          <input type="submit" name="Submit" value="Go..." onclick="return Validation(this)">
        </td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
<div align="left"> </div>
<p>&nbsp;</p>
</form>
    <center>
    <%
   String status=request.getParameter("status");
   if(status!=null)
             {
    %>
    <b>  <%=status%></b>
    <%}%>
</center>
</body>
</html>
