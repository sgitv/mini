<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>



  <%
  int i=0;
String cid=request.getParameter("clientid");
i=Classess.CommonCode.runQuery1("delete from client where clientid='"+cid+"'");
if(i==1)
{
	%>
	<center><h2>Client has deleted </center>
<%
}
	else
	{
		%>
		<center><h2>!Sorry Please Try Again..........</center>
<%
	}%>