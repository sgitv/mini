<html>
<script LANGUAGE="JavaScript">

function s()
{
  document.newclientpersonal.cid.focus();
  return true;
}
function Validation()
{
    if(!document.getElementById("cid").value)
        {
            alert("Please Mention The Client Id");
            document.getElementById("cid").focus();
            return false;
        }
        if(!document.getElementById("cname").value)
        {
            alert("Please Mention The Client Name");
            document.getElementById("cname").focus();
            return false;
        }
        if(!document.getElementById("cadd").value)
        {
            alert("Please Mention The Client Address");
            document.getElementById("cadd").focus();
            return false;
        }
        if(!document.getElementById("ccity").value)
        {
            alert("Please Mention The Client City");
            document.getElementById("ccity").focus();
            return false;
        }
        if(!document.getElementById("cstate").value)
        {
            alert("Please Mention The Client State");
            document.getElementById("cstate").focus();
            return false;
        }
        if(!document.getElementById("cnation").value)
        {
            alert("Please Mention The Client Nation");
            document.getElementById("cnation").focus();
            return false;
        }
        if(!document.getElementById("cnb").value)
        {
            alert("Please Mention The Client Number");
            document.getElementById("cnb").focus();
            return false;
        }
        if(!document.getElementById("ctype").value)
        {
            alert("Please Mention The Client Type");
            document.getElementById("ctype").focus();
            return false;
        }
        if(!document.getElementById("cphno").value)
        {
            alert("Please Mention The Phone number");
            document.getElementById("cphno").focus();
            return false;
        }
        if(!document.getElementById("ext").value)
        {
            alert("Please Mention The Extension");
            document.getElementById("ext").focus();
            return false;
        }
        if(!document.getElementById("cdesc").value)
        {
            alert("Please Mention The Description");
            document.getElementById("cdesc").focus();
            return false;
        }
        if(!document.getElementById("ctper").value)
        {
            alert("Please Mention The Client Personal Details");
            document.getElementById("ctper").focus();
            return false;
        }
         if(!document.getElementById("www1").value)
        {
            alert("Please Mention The Website Url");
            document.getElementById("www1").focus();
            return false;
        }
          if(!document.getElementById("pass").value)
        {
            alert("Please Mention The Password");
            document.getElementById("pass").focus();
            return false;
        }
}


</script>

<body bgcolor="#9999CC" LANGUAGE=javascript onLoad="s();">
    
 
<table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
    <td width="377"><strong><font color="#993333" size="+1">Enter the new client
      personal details.</font></strong> </td>
    <td width="235"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<center>
   <%
   String status=request.getParameter("status");
   if(status!=null)
             {
   %>
   <b><%=status%></b>
   <%}%>
   </center>
<form name="newclientpersonal" method="post" action="./NewClientReg" >
  <p>&nbsp;</p>
  <div align="center">
    <table width="856" border="0" cellpadding="5">
      <tr> 
        <td width="197"><strong> <font size="2">Cid<font color="#FF3333">*</font></font></strong></td>
        <td width="247"><input type="text" name="cid" id="cid"></td>
        <td width="218"><font color="#CC3300" size="3"></font></td>
        <td width="144">&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Cname <font color="#CC0000">*</font></font></strong></td>
        <td><input type="text" name="cname" id="cname"></td>
        <td><font color="#CC0000" size="3"></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Cadd<font color="#CC3333">*</font></font> 
          </strong></td>
        <td><input type="text" name="cadd" id="cadd"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong> <font size="3">Ccity</font></strong></td>
        <td><input type="text" name="ccity" id="ccity"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Cstate</font></strong></td>
        <td><input type="text" name="cstate" id="cstate"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
       <tr> 
        <td><strong><font size="2">Cnation</font></strong></td>
        <td><input type="text" name="cnation" id="cnation"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	   <tr> 
        <td><strong><font size="2">Cnb</font></strong></td>
        <td><input type="text" name="cnb" id="cnb"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	   <tr> 
        <td><strong><font size="2">Ctype</font></strong></td>
        <td><input type="text" name="ctype" id="ctype"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	   <tr> 
        <td><strong><font size="2">Cphno</font></strong></td>
        <td><input type="text" name="cphno" id="cphno"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	   <tr> 
        <td><strong><font size="2">ext</font></strong></td>
        <td><input type="text" name="ext" id="ext"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	   <tr> 
        <td><strong><font size="2">Cdesc</font></strong></td>
        <td><input type="text" name="cdesc" id="cdesc"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	   <tr> 
        <td><strong><font size="2">Ctper</font></strong></td>
        <td><input type="text" name="ctper" id="ctper"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	   <tr> 
        <td><strong><font size="2">www1</font></strong></td>
        <td><input type="text" name="www1" id="www1"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	   <tr> 
        <td><strong><font size="2">pass</font></strong></td>
        <td><input type="password" name="pass" id="pass"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
     <!-- <tr> 
        <td><strong><font size="-2">Gender <font color="#CC0000">*</font></font></strong></td>
        <td><select name="gend">
		<option>Male</option>
		<option>Female</option>
          </select></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Present Address<font color="#CC0000">*</font></font></strong></td>
        <td><textarea name="pmadd"></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Permanent Address<font color="#CC0033">*</font></font></strong></td>
        <td><textarea name="psadd"></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">City<font color="#CC0000">*</font></font></strong></td>
        <td><input type="text" name="city"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">State</font></strong></td>
        <td><input type="text" name="state"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Country<font color="#CC0000">*</font></font></strong></td>
        <td><input type="text" name="country"></td>
        <td><font size="-2">pin</font></td>
        <td><input type="text" name="pin"></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Contact No(0ffice)</font></strong></td>
        <td><input type="text" name="cphoff"></td>
        <td><strong><font size="-2">Ext</font><font size="-3">(</font></strong><font color="#CC0000" size="-3">Maximum 
          5 digits</font><font size="-3"><strong>)</strong></font></td>
        <td><input type="text" name="offex"></td>
      </tr>
      <tr> 
        <td><p><strong><font size="-2">Contact No(Res)<font color="#CC0000">*</font></font></strong></p>
          <p><font color="#CC0033" size="-3">(With area code)</font></p></td>
        <td><input type="text" name="cphres"></td>
        <td><strong><font size="-2">Mobile No</font></strong></td>
        <td><input type="text" name="mph"></td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Passport No</font></strong></td>
        <td><input type="text" name="passno"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="-2">Career Object<font color="#CC0000">*</font></font></strong></td>
        <td><textarea name="cobj"></textarea></td>
        <td><font color="#CC0000" size="-3">Maximum 200 characters</font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Save"></td>
        
        <td><input type="Reset" name="Submit3" value="Cancel"></td>
      </tr>-->
<tr> 
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Submit" onClick="return Validation(this)">
        
        <input type="Reset" name="Submit3" value="Cancel"></td>
      </tr>
    </table>
    <p><strong></p>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>
</body>
</html>
