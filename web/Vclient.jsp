<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>
    
    <br/><br/>
<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>Client Details

<p>&nbsp;</p>

<hr>
<table width=100%  cellpadding="5" border=1>
  <tr> 
    <td><Strong><font color=blue>Client Id </td>
    <td><Strong><font color=blue>Client Name</td>
    <td><Strong><font color=blue>Address</td>
    <td><Strong><font color=blue>City</td>
    <td ><Strong><font color=blue>State</td>
    <td><Strong><font color=blue>Nation</td>
	<td><Strong><font color=blue>No.of Branch</td>
	<td><Strong><font color=blue>Contact Phno</td>
	<td><Strong><font color=blue>Website</td>
	<%ResultSet rs=Classess.CommonCode.singleSet("CLIENT");
	while(rs.next())
{%>

  <tr > 
    <td><Strong><%=rs.getString(1)%></td>
    <td><Strong><%=rs.getString(2)%></td>
    <td><Strong><%=rs.getString(3)%></td>
	<td><Strong><%=rs.getString(4)%></td>
	<td><Strong><%=rs.getString(5)%></td>
	 <td><Strong><%=rs.getString(6)%></td>
	 <td><Strong><%=rs.getString(7)%></td>
	<td><Strong><%=rs.getString(9)%></td>
	<td><Strong><%=rs.getString(13)%></td>

    
  </tr>
  <%}%>
</table>


</body>
</html>
