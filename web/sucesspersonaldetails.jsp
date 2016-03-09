<%@ page import="java.sql.*,javax.servlet.http.*" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#CCCC66">
<form name="sucess" method="post" action="./newempeducation.jsp">
<%! String uid1;%>
<% 
//HttpSession ses=request.getSession(true);

uid1=(String)session.getAttribute("uname");
%>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
  <p align="center"><font color="#CC0000" size="2">New User</font> <font color="#336666" size="">Personal 
    Details</font><font size="2"> Sucessfully inserted in to the <font color="#6633CC">data 
    base</font></font></p>
  <p align="center"><font color="#6633CC" size="2">your user id is:
    <%out.print(uid1);%>
    </font></p>
  <p align="center"><font size="2">Continuee for<font color="#660033"> Educational</font> 
    details <a href="./newempeducation.jsp">Touch me</a></font></p>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
