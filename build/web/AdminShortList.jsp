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
        <form>
        <table align="center" border="2" bordercolor="green">
             <tr>
                
                
                  <%
        try
        {
        ResultSet rs=Classess.CommonCode.runQuery("select * from APPLYJOBS");
        ResultSetMetaData rsm=rs.getMetaData();
        for(int i=0;i<rsm.getColumnCount();i++)
        {  
        %>
        <td><%=rsm.getColumnName(i+1)%>
        </td>
        <%
        }
        %>
        <td align="center">Apply</td>
       
             </tr>
             
        <%
        while(rs.next())
       {
       %>
       <tr>
       <td><%=rs.getString(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td>
       <td><%=rs.getString(6)%></td>
       <td><%=rs.getString(7)%></td>
       <td><%=rs.getString(8)%></td>
       <td><%=rs.getString(9)%></td>
       <td><%=rs.getString(10)%></td>
       <td><%=rs.getString(11)%></td>
       
        <td align="center"><a href="./AdminShortList?type=admin&aid=<%=rs.getString(1)%>&jcode=<%=rs.getString(3)%>">Click</a></td>
        </tr>
       
        <%
       }
        %>
           
        </table>
        
        <%
        
        
        
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        %>
        </form>
        <%
        String msg=request.getParameter("msg");
        if(msg!=null)
                       {
        %>
    <center><%=msg%></center>
        <%}%>
    </body>
</html>
