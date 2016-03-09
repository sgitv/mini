<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>
<script>
   function Validation()
   {
       if(!document.getElementById("totexp").value)
           {
               alert("Please Mention Total Experiance");
               document.getElementById("totexp").focus();
               return false;
           }
           if(!document.getElementById("skill1").value)
           {
               alert("Please Mention Skills");
               document.getElementById("skill1").focus();
               return false;
           }
            if(!document.getElementById("skill2").value)
           {
               alert("Please Mention Skills");
               document.getElementById("skill2").focus();
               return false;
           }
            if(!document.getElementById("skill3").value)
           {
               alert("Please Mention Skills");
               document.getElementById("skill3").focus();
               return false;
           }
            if(!document.getElementById("skill4").value)
           {
               alert("Please Mention Skills");
               document.getElementById("skill4").focus();
               return false;
           }
            if(!document.getElementById("skill5").value)
           {
               alert("Please Mention Skills");
               document.getElementById("skill5").focus();
               return false;
           }
            if(!document.getElementById("skill6").value)
           {
               alert("Please Mention skills");
               document.getElementById("skill6").focus();
               return false;
           }
             if(!document.getElementById("othskill").value)
           {
               alert("Please Mention Ohter Skills");
               document.getElementById("othskill").focus();
               return false;
           }
           if(!document.getElementById("descskill").value)
           {
               alert("Please Mention Description Skills");
               document.getElementById("descskill").focus();
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
      Experience Details jsp.</font></strong> </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<form name="skillsd" method="post" action="./newuserpersonal?type=third&uid=<%=uid%>">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font color="#000000" size="2"><strong>User 
          Id</strong></font></strong></td>
        <td width="180"><input type="text" name="uid" readonly value="<%out.print(uid);%>"></td>
        <td width="151"><strong><font size="2">Total Experience</font></strong></td>
        <td width="147"><font color="#000000"> 
          <input type="text" name="totexp" id="totexp">
          </font></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Skill1</font></strong></td>
        <td><input type="text" name="skill1" id="skill1"></td>
        <td><font color="#000000" size="2"><strong>Skill2</strong></font></td>
        <td><input type="text" name="skill2" id="skill2"></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Skill3</font></strong></td>
        <td><input type="text" name="skill3" id="skill3"></td>
        <td><font color="#000000" size="2"><strong> Skill4</strong></font></td>
        <td><input type="text" name="skill4" id="skill4"></td>
      </tr>
      <tr> 
        <td><font size="2"><strong>Skill5</strong></font></td>
        <td><input type="text" name="skill5" id="skill5"></td>
        <td><font color="#000000" size="2">&nbsp;<strong>Skill6</strong></font></td>
        <td><input type="text" name="skill6" id="skill6"></td>
      </tr>
      <tr> 
        <td><font size="2"><strong>Other Skills</strong></font></td>
        <td><input type="text" name="othskill" id="othskill"></td>
        <td><strong></strong></td>
        <td>&nbsp;</td>
      </tr>
    </table>
    <table width="714" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong><font size="2">Description Of Skills</font></strong></td>
        <td width="501"><textarea name="descskill" id="descskill"></textarea></td>
      </tr>
    </table>
    <table width="710" border="0" cellpadding="5">
      <tr>
        <td><div align="right">
            <input type="submit" name="Submit" value="Save" onclick="return Validation(this)">
          </div></td>
        <td><input type="reset" name="Submit2" value="Cancel"></td>
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
