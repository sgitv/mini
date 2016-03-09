<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<script>
    function validate()
    {
        if(!document.getElementById("clientid").value)
            {
                alert("Please Select Client Id");
                
               return false;   
            }
    }
</script>
</head>

<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>Client Details

<form action="Cdel.jsp" method="post">
    <table cellpadding="5" cellspacing="5">
        <tr>    
            <td>Client Id:</td><td><Select name="clientid" id="clientid">
                    <option value="">Select</option>
  <%

ResultSet rs=Classess.CommonCode.singleSet("CLIENT");
while(rs.next())
{
String cid=rs.getString(1);
%>
<option value=<%=cid%>><%=cid%></option>
<%}%>
                </select></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="Submit" onClick="return validate(this)">&nbsp;<input type="Reset" value="Reset"></td>
</table>
</form>
