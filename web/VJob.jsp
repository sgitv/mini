<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

    <br/><br/>
<body bgcolor="#aaddee"><center><Strong>

  <%
String clientid=request.getParameter("clientid");
 
ResultSet rs=Classess.CommonCode.runQuery("select * from empreg where userid='"+clientid+"'");
%>
<center><font color="#110066"><h3>Job Seeker Detail of UserId:<%=clientid%>
<p>&nbsp;</p>
Personal Details
<table width=100%  cellpadding="5" border=1>
  <tr> 
    <td><Strong><font color=blue>Fname</td>
    <td><Strong><font color=blue>Mname</td>
    <td><Strong><font color=blue>Lname</td>
    <td><Strong><font color=blue>Present Address</td>
    <td ><Strong><font color=blue>City</td>
    <td><Strong><font color=blue>State</td>
	<td><Strong><font color=blue>Country</td>
	<td><Strong><font color=blue>Contact Phno</td>
	<td><Strong><font color=blue>Gender</td>
	<%
	if(rs.next())
{%>

  <tr > 
    <td><Strong><%=rs.getString(3)%></td>
    <td><Strong><%=rs.getString(4)%></td>
    <td><Strong><%=rs.getString(5)%></td>
	<td><Strong><%=rs.getString(6)%></td>
	<td><Strong><%=rs.getString(9)%></td>
	 <td><Strong><%=rs.getString(10)%></td>
	 <td><Strong><%=rs.getString(11)%></td>
	<td><Strong><%=rs.getString(17)%></td>
	<td><Strong><%=rs.getString(18)%></td>

    
  </tr>
  <%}%>
</table>



</body>
</html>
