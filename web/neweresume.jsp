<%@ page import="java.sql.*" %>
<html>
<head>
<title>Untitled Document</title>
<script>
  function Validation()
{
    if(!document.getElementById("res").value)
        {
            alert("Please Upload The Resume");
            document.getElementById("res").focus();
            return false;
        }
}  
</script>

</head>



<body bgcolor="#9999CC">
<% String uid1;%>
<%
uid1=(String)session.getValue("uid1");
String uid=request.getParameter("uid");
%>

<table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
    <td width="399"><strong><font color="#993333" size="+1">Enter The New User 
      Resume Details.</font></strong> </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="form1" method="post" action="./newuserpersonal?type=submit&uid=<%=uid%>" enctype="multipart/form-data">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font color="#000000" size="-2"><strong>User 
          Id</strong></font></strong></td>
          <td width="180"><input type="text" name="uid" id="uid" value="<%out.print(uid);%>" readonly></td>
        <td width="151"><strong></strong></td>
        <td width="147"><font color="#000000">&nbsp; </font></td>
      </tr>
    </table>
    <p>Copy and paste your Resume or Browse the Resume(file Should be *.txt, *.doc 
      format)</p>
    <table width="884" border="0" cellpadding="5">
      <tr> 
        <td width="125">Copy and Paste your Resume </td>
        <td width="211"><textarea name="textarea"></textarea></td>
        <td width="83">Browse</td>
        <td width="415"><input type="file" name="res" id="res">&nbsp;</td>
      </tr>
    </table>
    <table width="710" border="0" cellpadding="5">
      <tr>
        <td><div align="right">
            <input type="submit" name="Submit" value="Save" onClick="return Validation(this)">
          </div></td>
        <td><input type="reset" name="Submit2" value="Cancle">
        </td>
      </tr>
    </table>
    
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>
</body>
</html>
