<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>SucessEdudetails into dB</title>

</head>
<%! String uid1;%>
<% 
//HttpSession ses=request.getSession(true);

uid1=(String)session.getValue("uid1");
String uid=request.getParameter("uid");
System.out.println("thldsf"+uid);
%>
<body bgcolor="#CCCC66">
<form name="sucessskill"  action="./newemoexp.jsp?uid=<%=uid%>" method="post">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
  <p align="center"><font size="-2"> 
    <%out.print(uid);%>
    <font color="#336666"> Skills Details</font> Sucessfully inserted in to the 
    <font color="#6633CC">data base</font></font></p>
  <p align="center"><font size="-2">Continuee for<font color="#660033"> Experience 
    </font> details <a href="./newemoexp.jsp">Touch me</a></font></p>
  <p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</form>
</body>
</html>
