<%@ page import="java.sql.*" %>
<html>
<head>
<title>Untitled Document</title>
<script>
  function Validation()
{
    if(!document.getElementById("expfield").value)
        {
         alert("Please Mention Expfield");
         document.getElementById("expfield").focus();
         return false;   
        }
        
    if(!document.getElementById("pwcomp").value)
        {
         alert("Please Mention Present Working Company");
         document.getElementById("pwcomp").focus();
         return false;   
        }
    if(!document.getElementById("onsit").value)
        {
         alert("Please Mention OnSite/OffSite");
         document.getElementById("onsit").focus();
         return false;   
        }
        if(!document.getElementById("urle").value)
        {
         alert("Please Mention Url");
         document.getElementById("urle").focus();
         return false;   
        }
        if(!document.getElementById("pfrom").value)
        {
         alert("Please Mention Joining Date Present From Company");
         document.getElementById("pfrom").focus();
         return false;   
        }
    if(!document.getElementById("pto").value)
        {
         alert("Please Mention Till DATE Present From Company");
         document.getElementById("pto").focus();
         return false;   
        }
        if(!document.getElementById("prsal").value)
        {
         alert("Please Mention Present Salary");
         document.getElementById("prsal").focus();
         return false;   
        }
        if(isNaN(document.getElementById("prsal").value))
        {
         alert("Please Mention Salary In Numeric Form");
         document.getElementById("prsal").focus();
          document.getElementById("prsal").value="";
         return false;   
        }
    
        if(!document.getElementById("expsal").value)
        {
         alert("Please Mention Expected Salary");
         document.getElementById("expsal").focus();
         return false;   
        }
        if(isNaN(document.getElementById("expsal").value))
        {
         alert("Please Mention Salary In Numeric Form");
         document.getElementById("expsal").focus();
          document.getElementById("expsal").value=" ";
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
      Experience Details.</font></strong> </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="form1" method="post" action="./newuserpersonal?type=fourth&uid=<%=session.getAttribute("uid")%>">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font color="#000000" size="2"><strong>User 
          Id</strong></font></strong></td>
          <td width="180"><input type="text" name="uid" readonly value="<%=session.getAttribute("uid")%>"></td>
        <td width="151"><strong><font size="2">Total Experience</font></strong></td>
        <td width="147"><font color="#000000"> 
          <input type="text" name="totexp" readonly value=<%=session.getAttribute("tot")%>yrs>
          </font></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Experience in the Field</font></strong></td>
        <td><input type="text" name="expfield" id="expfield" ></td>
        <td><font color="#000000" size="2"><strong>Present Working Company</strong></font></td>
        <td><input type="text" name="pwcomp" id="pwcomp"></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Off-site / On-site</font></strong></td>
        <td><input type="text" name="onsit" id="onsit"></td>
        <td><font color="#000000" size="2"><strong> If On-site Submit URL(<font color="#CC0000">EX. 
          www.act.com</font>)</strong></font></td>
        <td><input type="text" name="urle" id="urle"></td>
      </tr>
      <tr> 
        <td><font size="2"><strong>From <font color="#CC0033">Ex(dd-mm-yyyy)</font></strong></font></td>
        <td><input type="text" name="pfrom" id="pfrom"></td>
        <td><font color="#000000" size="2">&nbsp;<strong>To </strong></font><font size="2"><strong><font color="#CC0033">Ex(dd-mm-yyyy)</font></strong></font></td>
        <td><input type="text" name="pto" id="pto"></td>
      </tr>
      <tr> 
        <td><font size="2"><strong>Present Salary</strong></font></td>
        <td><input type="text" name="prsal" id="prsal"></td>
        <td><strong><font size="2">Expected Salary</font></strong></td>
        <td><input type="text" name="expsal" id="expsal"></td>
      </tr>
    </table>
    <table width="714" border="0" cellpadding="5">
      <tr> 
        <td width="187">&nbsp;</td>
        <td width="501">&nbsp;</td>
      </tr>
    </table>
    <table width="710" border="0" cellpadding="5">
      <tr>
        <td><div align="right">
            <input type="submit" name="Submit" value="Save" onclick="return Validation(this)">
          </div></td>
        <td><input type="reset" name="Submit2" value="Cancel">
        </td>
      </tr>
    </table>
    
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>
</body>
</html>
