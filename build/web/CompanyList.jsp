<%-- 
    Document   : CompanyList
    Created on : Feb 15, 2013, 5:46:56 PM
    Author     : G5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <jsp:include page="expuser1left.htm"></jsp:include>&nbsp;&nbsp;
<br/><br/><br/><br/>
    <body>
        <form method="post" action="CompanyView.jsp">
    <center> 
        
            Company Name:<select name="cname" id="cname">
             <option value="">Select</option>
       <%
       try
        {
           ResultSet rs=Classess.CommonCode.runQuery("select JOBCODE,CLIENTIDS from APPLYJOBS where CVIEW='LIKE' and APPLYID='"+session.getAttribute("uname")+"'");
           while(rs.next())
       {
       %>
   <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
       <%
       }
        }
       catch(Exception e)
       {
           System.out.println(e.toString());
       }
       %>
    
       <input type="submit" value="Submit"/>
      
    </center>
         </form>
    </body>
</html>
