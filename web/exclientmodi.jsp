<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Client Modification</title>
<script>
    function Validation()
    {
        if(!document.getElementById("cph").value)
            {
                alert("Please Mention Contact Phone Number");
                document.getElementById("cph").focus();
                return false;
            }
            if(!document.getElementById("cid2").value)
            {
                alert("Please Mention  Client Name");
                document.getElementById("cid2").focus();
                return false;
            }
             if(!document.getElementById("ext").value)
            {
                alert("Please Mention  Extention");
                document.getElementById("ext").focus();
                return false;
            }
            if(!document.getElementById("cadd").value)
            {
                alert("Please Mention  Address");
                document.getElementById("cadd").focus();
                return false;
            }
             if(!document.getElementById("cdesc").value)
            {
                alert("Please Mention  Description");
                document.getElementById("cdesc").focus();
                return false;
            }
             if(!document.getElementById("city").value)
            {
                alert("Please Mention  City");
                document.getElementById("city").focus();
                return false;
            }
             if(!document.getElementById("contper").value)
            {
                alert("Please Mention  Contact Person");
                document.getElementById("contper").focus();
                return false;
            }
             if(!document.getElementById("state").value)
            {
                alert("Please Mention  State");
                document.getElementById("state").focus();
                return false;
            }
             if(!document.getElementById("wwwt").value)
            {
                alert("Please Mention  Website Url");
                document.getElementById("wwwt").focus();
                return false;
            }
             if(!document.getElementById("nation").value)
            {
                alert("Please Mention  Nationality");
                document.getElementById("nation").focus();
                return false;
            }
             if(!document.getElementById("pass").value)
            {
                alert("Please Mention  Password");
                document.getElementById("pass").focus();
                return false;
            }
            if(!document.getElementById("nofb").value)
            {
                alert("Please Mention  No.Of Branches");
                document.getElementById("nofb").focus();
                return false;
            }
             if(!document.getElementById("ctype").value)
            {
                alert("Please Mention  Client Type");
                document.getElementById("ctype").focus();
                return false;
            }
        
    }
</script>
</head>

<body>
    <%
    String msg=request.getParameter("msg");
    if(msg!=null)
               {
    %>
<center><%=msg%></center>
    <%}%>
<form name="form1" method="post" action="./updateexclient">
<%! String cid;%>
   <%
   cid=request.getParameter("cid");
 
ResultSet rs=Classess.CommonCode.runQuery("select * from client where CLIENTID='"+cid+"'");
while(rs.next())
{
%>
<body bgcolor="#9966FF">
<table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
    <td width="399"><strong><font color="#993333" size="+1">Clients details Modification.</font></strong> 
    </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>

  <p>&nbsp;</p>
  <div align="center">
<table width="1055" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font size="2">Client Id <font color="#CC0000">*</font></font></strong></td>
        <td width="180"><input type="text" name="cid" id="cid" readonly value="<%=rs.getString(1)%>"></td>
        <td width="151"><strong><font size="2">Contact Ph No</font></strong></td>
        <td width="147"><font color="#000000"> 
          <input type="text" name="cph" id="cph" value="<%=rs.getString(9)%>">
          </font></td>
        <td width="158"><strong></strong></td>
        <td width="158">&nbsp;</td>
      </tr>
      <tr> 
        <td height="40"><strong><font size="2">Client Name</font></strong></td>
        <td><input type="text" name="cid2" id="cid2" value="<%=rs.getString(2)%>"></td>
        <td><p><font color="#000000" size="2"><strong><font size="2">Extention</font></strong></font></p>
          </td>
        <td><font color="#000000"> 
          <input type="text" name="ext" id="ext" value="<%=rs.getString(10)%>">
          </font></td>
        <td><font color="#000000" size="2"><strong></strong></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Address</font></strong></td>
        <td><textarea name="cadd" id="cadd"><%=rs.getString(3)%></textarea></td>
        <td><font color="#000000" size="2"><strong>Company Desc</strong></font></td>
        <td><textarea name="cdesc" id="cdesc"><%=rs.getString(11)%></textarea></td>
        <td><font color="#CC0033" size="2"><strong>Not more than 200 Characters</strong></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">City</font></strong></td>
        <td><input type="text" name="city" id="city" value="<%=rs.getString(4)%>"></td>
        <td><font color="#000000" size="2"><strong>Contact Persion</strong></font></td>
        <td><font color="#000000">
          <input type="text" name="contper" id="contper" value="<%=rs.getString(12)%>">
          </font></td>
        <td><font color="#000000" size="4"><strong></strong></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">State</font></strong></td>
        <td><input type="text" name="state" id="state" value="<%=rs.getString(5)%>"></td>
        <td><font color="#000000" size="2"><strong>Website</strong></font></td>
        <td><font color="#000000">
          <input type="text" name="wwwt" id="wwwt" value="<%=rs.getString(13)%>">
          </font></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="40"><strong><font size="2">Nation</font></strong></td>
        <td><input type="text" name="nation" id="nation" value="<%=rs.getString(6)%>"></td>
        <td><strong><font size="2">Password</font></strong></td>
        <td><font color="#000000">
          <input type="text" name="pass" id="pass" value="<%=rs.getString(14)%>">
          </font></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td height="38"><strong><font size="2">No.Of Branches</font></strong></td>
        <td><input type="text" name="nofb" id="nofb" value="<%=rs.getString(7)%>"></td>
        <td><strong><font size="2"></font></strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Client Type</font></strong></td>
        <td><input type="text" name="ctype" id="ctype" value="<%=rs.getString(8)%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong></strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Save" onClick="return Validation(this)"></td>
        <td><input type="reset" name="Submit2" value="Clear"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
	  <%}%>
    </table>
  </div>
</form>
<p>&nbsp;</p>

</body>
</html>
