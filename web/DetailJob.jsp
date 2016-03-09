<%-- 
    Document   : DetailJob
    Created on : Feb 8, 2013, 9:42:21 AM
    Author     : G5
--%>

<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <%
    try
                       {
   int i=0;
  String target="";
    String cid=request.getParameter("clientid");   
System.out.println("cid is"+cid);
    Connection con=Classess.DbConnect.oracleConnect();
    CallableStatement cs=con.prepareCall("{call jobseekerdel(?)}");
    cs.setString(1,cid);
    
    i=cs.executeUpdate();
    if(i==1){
        target="DJob.jsp?status=Deleted Successfully";
     %>
     
     
     <%}else{
        target="DJob.jsp?status=!Sorry Try Again........";
        %>

     <%  con.rollback();
     }
    RequestDispatcher rd=request.getRequestDispatcher(target);
    rd.forward(request, response);
    }
    catch(Exception e)
    {
        System.out.println(e.toString());
    }
   
    %>
    </body>
</html>
