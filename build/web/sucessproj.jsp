<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>SucessEdudetails into dB</title>

</head>

<body bgcolor="#CCCC66">
<form name="sucessexp" method="post" action="./neweresume.jsp">
<%! String uid1;%>
<% 
//HttpSession ses=request.getSession(true);

uid1=(String)session.getValue("uid1");
String uid=request.getParameter("uid");
%><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
  <p align="center"><font size="-2"> 
    <%out.print(uid);%>
    <font size="-2"><font color="#660033">Project </font></font><font color="#336666"> 
    Details</font> Sucessfully inserted in to the <font color="#6633CC">data base</font></font></p>
  <p align="center"><font size="-2">Continuee for <font color="#CC3366">Submit 
    Resume</font> details <a href="./neweresume.jsp?uid=<%=uid%>">Touch me</a></font></p>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
