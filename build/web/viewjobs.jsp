<%-- 
    Document   : viewjobs
    Created on : Feb 14, 2013, 4:07:59 PM
    Author     : G5
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <jsp:include page="jobproviderleft.jsp"></jsp:include>
    <br/><br/>
    <body bgcolor="#aaddee">
        <table align="center" border="2" bordercolor="green">
             <tr>
                
                
                  <%
        try
        {
        ResultSet rs=Classess.CommonCode.runQuery("select * from JOBS");
        ResultSetMetaData rsm=rs.getMetaData();
        for(int i=0;i<rsm.getColumnCount();i++)
        {  
        %>
        <td><%=rsm.getColumnName(i+1)%></td>
        <%
        }
        %>
             </tr>
             <tr>
        <%
        while(rs.next())
       {
       %>
       <td><%=rs.getString(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td>
       <td><%=rs.getString(6)%></td>
       <td><%=rs.getString(7)%></td>
      
       <%
        %>
             </tr>
        <%
       }
        
        
        
        
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        %>
    </body>
</html>
