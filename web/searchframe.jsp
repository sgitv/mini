<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<jsp:include page="expuser1left.htm"></jsp:include>&nbsp;&nbsp;
<br/>
</head>

<body background="images/jobsearch.jpg">
    <table width="928" height="55" border="0" cellpadding="5">
  <tr> 
    <td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="30" height="30" border="0"></a></div></td>
    <td width="399"><strong><font color="#993333" size="+1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CURRENT JOB SEARCH DETAILS
     .</font></strong> </td>
    <td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<form name="form1" method="post" action="">
  
    <center><Strong><font size="4" align="center">Hai <%=session.getAttribute("uname")%>  you can search the jobs in three ways.</font>
<p>&nbsp;</p>
            <br><br>
  <table border="0" align="left" align=center>
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.To Search the Job in Experince Based
      <td><a href="./jobsearchexperience.jsp">Click here</a></td>
    </tr><tr><tr>
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.To Search the job in Skill Based
      <td><a href="./jobsearchenterskills.jsp">Click Here</font></a></div></td>
    </tr>
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.To Search the job in Client Based
      <td><a href="./jobsearchclient.jsp">Click Here</font></a></div></td>
    </tr>

	
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
