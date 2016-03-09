<%@ page import="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>
<script>
  function Validation()
{
    if(!document.getElementById("projtit").value)
        {   alert("Please Mention Project Title");
            document.getElementById("projtit").focus();
            return false;
        }
        if(!document.getElementById("usedsill").value)
        {   alert("Please Mention Used Skills");
            document.getElementById("usedsill").focus();
            return false;
        }
        if(!document.getElementById("teamsize").value)
        {   alert("Please Mention Team Size");
            document.getElementById("teamsize").focus();
            return false;
        }
        if(!document.getElementById("projenv").value)
        {  alert("Please Mention Project Enviornment");
            document.getElementById("projenv").focus();
            return false;
        }
        if(!document.getElementById("projroll").value)
        {   alert("Please Mention Project Roll");
            document.getElementById("projroll").focus();
            return false;
        }
        if(!document.getElementById("projdesc").value)
        {   alert("Please Mention Project Description");
            document.getElementById("projdesc").focus();
            return false;
        }
}  
</script>
</head>

<body bgcolor="#9999CC">
<% String uid1;%>
<%
uid1=(String)session.getValue("uid1");%>
<table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
    <td width="399"><strong><font color="#993333" size="+1">Enter The New User 
      Project Details.</font></strong> </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="proj" method="post" action="./newuserpersonal?type=fifth&uid=<%=request.getParameter("uid")%>">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font color="#000000" size="2"><strong>User 
          Id</strong></font></strong></td>
        <td width="180"><input type="text" name="uid"  value="<%=request.getParameter("uid")%>" readonly></td>
        <td width="151"><strong></strong></td>
        <td width="147"><font color="#000000">&nbsp; </font></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Project Title</font></strong></td>
        <td><input type="text" name="projtit" id="projtit"></td>
        <td><font color="#000000" size="2"><strong>Used Skills</strong></font></td>
        <td><input type="text" name="usedsill" id="usedsill"></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Team Size</font></strong></td>
        <td><input type="text" name="teamsize" id="teamsize"></td>
        <td><font color="#000000" size="2"><strong> </strong></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><font size="2"><strong>Environment</strong></font></td>
        <td><textarea name="projenv" id="projenv"></textarea></td>
        <td><font color="#000000" size="2"><strong>Rolls</strong></font></td>
        <td><textarea name="projroll" id="projroll"></textarea></td>
      </tr>
    </table>
    <table width="714" border="0" cellpadding="5">
      <tr> 
        <td width="171"><strong><font size="2">Project Descriptions</font></strong></td>
        <td width="517"><textarea name="projdesc" id="projdesc"></textarea></td>
      </tr>
    </table>
    <table width="710" border="0" cellpadding="5">
      <tr>
        <td><div align="right">
            <input type="submit" name="Submit" value="Save" onClick="return Validation(this)">
          </div></td>
        <td><input type="reset" name="Submit2" value="Cancel">
        </td>
      </tr>
    </table>
    
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>


</body>
</html>
