<%@ page import="java.sql.*" %>
<html>
<head>
<title>Untitled Document</title>

<jsp:include page="expuser1left.htm"></jsp:include>&nbsp;&nbsp;
<br/>
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
uid1=(String)session.getAttribute("uname");
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
<%
String msg=request.getParameter("msg");
if(msg!=null)
       {
%>
<center><%=msg%></center>
<%}%>
<form name="form1" method="post" action="./UpdateResume?uid=<%=uid1%>" enctype="multipart/form-data">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font color="#000000" size="2">User 
          Id</font></strong></td>
        <td width="180"><input type="text" name="uid" id="uid" value="<%out.print(uid1);%>" readOnly></td>
        <td width="151"><strong></strong></td>
        <td width="147"><font color="#000000">&nbsp; </font></td>
      </tr>
        <tr> 
      
        <td><strong> <font color="#000000" size="2">Browse
          </font></strong></td>
        <td ><input type="file" name="file" id="res">&nbsp;</td>
        <td>Copy and paste your Resume or Browse the Resume(file Should be *.txt, *.doc 
      format)</td>
      </tr>
       <tr>
           <td>&nbsp;</td>
        <td>
            <input type="submit" name="Submit" value="Save" onClick="return Validation(this)">
       
             <input type="reset" name="Submit2" value="Clear">
        </td>
      </tr>
    </table>
    
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>
</body>
</html>
