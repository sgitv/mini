<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<script>
    function validation()
    {
       
        if(!document.getElementById("clientid").value)
            {
                alert("Please Select Client Id");
                
               return false;   
            }
    }
</script>

</head>

<body ><center><Strong><font color=blue><h2>Delete Jobseeker Details

<form action="DetailJob.jsp">
    <table>
        <tr><td>Client ID</td>
            <td><Select name=clientid id="clientid">
                    <option value="">Select</option>    
                
  <%

ResultSet rs=Classess.CommonCode.getValues("EDUCATION","USERID");
while(rs.next())
{
String cid=rs.getString(1);
%>
<option value=<%=cid%>><%=cid%></option>
<%}%></td></tr>

  <td>&nbsp;</td><td><input type="submit" value="Submit" onclick="return validation(this)">&nbsp;<input type="Reset" value="Reset"></td>
    </table>
<center>
    <%
    String status=request.getParameter("status");
    if(status!=null)
               {
    %>
    <%=status%>
    <%}%>
</center>
</form>
