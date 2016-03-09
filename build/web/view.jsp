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
    
<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>Job Seeker Details
<%! String exp;%>
<form action="VJob.jsp">
    <table cellpaddig="10" cellspacing="10">
 <tr><td>Client Id</td>

     <td><Select name="clientid" id="clientid">
             <option value="">Select</option>
  <%
ResultSet rs=Classess.CommonCode.singleSet("EMPREG");
while(rs.next())
{
String cid=rs.getString(1);
%>
<option value="<%=cid%>"><%=cid%></option>
<%}%>
         </select>
    </td> </tr>
     <tr><td>&nbsp;</td><td><input type="submit" value="Submit" onClick="return validation(this)">&nbsp;<input type="Reset" value="Reset"></td></tr>
    </table>
</form>
