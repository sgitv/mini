<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<script>
  function validation()
{
    if(!document.getElementById("hqul").value)
        {
            alert("Please Select Heighest Qualification");
            return false;
        }
        if(!document.getElementById("pg").value)
        {
            alert("Please Select Post Graduation");
            return false;
        }
         if(!document.getElementById("pun").value)
        {
            alert("Please Mention University");
            document.getElementById("pun").focus();
            return false;
        }
        if(!document.getElementById("pgper").value)
        {
            alert("Please Mention Post Graduate Percentage");
            document.getElementById("pgper").focus();
            return false;
        }
        if(isNaN(document.getElementById("pgper").value))
        {
            alert("Please Mention Post Graduate Percentage In Numeric Form");
            document.getElementById("pgper").focus();
              document.getElementById("pgper").value="";
            return false;
        }
        if(!document.getElementById("grad").value)
        {
            alert("Please Select The Graduation");
            document.getElementById("grad").focus();
            return false;
        }
         if(!document.getElementById("gun").value)
        {
            alert("Please Mention  The Graduaion Univesity");
            document.getElementById("gun").focus();
            return false;
        }
        if(!document.getElementById("gper").value)
        {
            alert("Please Mention  The Graduaion Percentage");
            document.getElementById("gper").focus();
            return false;
        }
         if(isNaN(document.getElementById("gper").value))
        {
            alert("Please Mention  The Graduaion Percentage In Numeric Form");
            document.getElementById("gper").focus();
            document.getElementById("gper").value="";
            return false;
        }
         if(!document.getElementById("inter").value)
        {
            alert("Please Mention  The Intermediate College");
            document.getElementById("inter").focus();
            return false;
        }
         if(!document.getElementById("interctno").value)
        {
            alert("Please Mention  The Intermediate Percentage");
            document.getElementById("interctno").focus();
            return false;
        }
        if(isNaN(document.getElementById("interctno").value))
        {
            alert("Please Mention  The Intermediate Percentage In Numeric Form");
            document.getElementById("interctno").focus();
            return false;
        }
         if(!document.getElementById("ssc").value)
        {
            alert("Please Mention  The SSC School Name");
            document.getElementById("ssc").focus();
            return false;
        }
          if(!document.getElementById("sscctno").value)
        {
            alert("Please Mention  The SSC Percentage");
            document.getElementById("sscctno").focus();
            return false;
        }
            if(!document.getElementById("other1").value)
        {
            alert("Please Mention  The Other Qualification Details.");
            document.getElementById("other1").focus();
            return false;
        }
            if(!document.getElementById("othercert").value)
        {
            alert("Please Mention  The Other Certification Details");
            document.getElementById("othercert").focus();
            return false;
        }
 
}  
</script>
</head>


<body bgcolor="#9999CC">
<% String uid1;%>
<%
uid1=(String)session.getAttribute("uname");%>

<center><br><br><font color="#993333" size="+1">Enter the Education Details
   
 
<hr>
<p>&nbsp;</p>
<form name="form1" method="post" action="./newuserpersonal?type=second&uid=<%=uid1%>">
  <p>&nbsp;</p>
  <div align="center">
<table width="1055" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font size="2">Height Qualification<font color="#FF3333">*</font></font></strong></td>
        <td width="180"><select name="hqul" id="hqul">
                <option value="">Select</option>
		<option value="PG">PG</option>
		<option value="Degree">Degree</option>
		<option value="Diploma">Diploma</option>
		
		
          </select></td>
        <td width="151"><strong><font size="2">User Id</font></strong></td>
        <td width="147"><font color="#000000">
          <input type="text" name="uid" id="uid" value="<%out.print(uid1);%>"  readonly>
          </font></td>
        <td width="158">&nbsp;</td>
        <td width="158">&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Post Graduction<font color="#CC0000">*</font></font></strong></td>
        <td><select name="pg" id="pg">
                <option value="">Select</option>
            <option value="MTech">MTech</option>
           
            <option value="MCA">MCA</option>
            <option value="MSc">MSc</option>
            
          </select></td>
        <td><font color="#000000" size="2"><strong>University <font color="#CC0033">*</font></strong></font></td>
        <td><font color="#000000"> 
          <input type="text" name="pun" id="pun">
          </font></td>
        <td><font color="#000000" size="2"><strong>Percentage agg(%) <font color="#CC0000">*</font></strong></font></td>
        <td><input type="text" name="pgper" id="pgper"></td>
      </tr>
      <tr> 
        <td><strong></strong></td>
        <td>&nbsp;</td>
        <td><font color="#000000" size="2">&nbsp;</font></td>
        <td>&nbsp;</td>
        <td><font color="#000000"><strong></strong></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Graduction<font color="#CC3333">*</font></font> 
          </strong></td>
        <td><select name="grad" id="grad">
            <option value="">Select</option>
            <option>BTech</option>
            <option>BE</option>
            <option>BSc</option>
            <option>BA</option>
          </select></td>
        <td><font color="#000000" size="2"><strong>University <font color="#CC0033">*</font></strong></font></td>
        <td><input type="text" name="gun" id="gun"></td>
        <td><font color="#000000" size="2"><strong>Percentage agg(%) <font color="#CC0000">*</font></strong></font></td>
        <td><input type="text" name="gper" id="gper"></td>
      </tr>
      <tr> 
        <td><strong></strong></td>
        <td>&nbsp;</td>
        <td><font color="#000000" size="2">&nbsp;</font></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="40"><strong><font size="2">InterMediate <font color="#CC3333">*</font></font></strong></td>
        <td><input type="text" name="inter" id="inter"></td>
        <td><strong><font size="2">Percentage<font color="#CC3300">*</font></font></strong></td>
        <td><input type="text" name="interctno" id="interctno"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="38"><strong><font size="2">SSC <font color="#CC0033">*</font></font></strong></td>
        <td><input type="text" name="ssc" id="ssc"></td>
        <td><strong><font size="2">Percentage<font color="#CC3300">*</font></font></strong></td>
        <td><input type="text" name="sscctno" id="sscctno"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Other Qualification <font color="#CC0033"></font></font></strong></td>
        <td><input type="text" name="other1" id="other1"></td>
       
     
        <td><strong><font size="2">Other Certification</font></strong></td>
        <td><input type="text" name="othercert" id="othercert"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> </table><br><br>
       
<input type="submit" name="Submit" value="Save" onClick="return validation(this)">
 <input type="Reset" name="Submit3" value="Cancel">
       
    
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>



</body>
</html>
