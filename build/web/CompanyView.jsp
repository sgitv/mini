<%-- 
    Document   : CompanyView
    Created on : Feb 15, 2013, 4:49:38 PM
    Author     : G5
--%>

<%@page import="java.util.StringTokenizer"%>
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
     <%
     String cid="",vd="";
     String p[]=new String[3];
     String jobcode="";
     try
                         {
     ResultSet rs=Classess.CommonCode.runQuery("select CLIENTIDS,VENUEDETAILS,JOBCODE from APPLYJOBS where CVIEW='LIKE' and APPLYID='"+session.getAttribute("uname")+"' and JOBCODE='"+request.getParameter("cname") +"'");
 if(rs.next()) 
      {
       cid=rs.getString(1);
       vd=rs.getString(2);
       jobcode=rs.getString(3);
      }
     
     int i=0;
     StringTokenizer st=new StringTokenizer(vd,";");
     while(st.hasMoreElements())
                 {
         
            
         p[i]=st.nextElement().toString();
         i++;
          }
     
         }
     catch(Exception e)
                      
               {
         System.out.println(e.toString());
     }
         
     %>   
    &nbsp;&nbsp;&nbsp;
    Dear <b><%=session.getAttribute("uname")%></b> <br/><br/><br/>
    <p>
        &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        Your Profile Was Shortlisted To The Company And Job Code Is &nbsp;<b><%=jobcode%></b>.....<br/></br></br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   If You Interest Please Carry<br></br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.Your Mark Lists Xerox Copies <br/></br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  2. This Print Out...<br/></br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.Your Pan Card Xerox
      <br/></br></br>
    <h4 align="right">
      <p>
        <b><u>Venue Details:</u><b>
                
    </p       
        <%
        String add[]={"Company Name:","Date:","Venu Details:"};
        
        int j=0;
        

        for(int i=0;i<p.length;i++)
                       {
        %>
       <%=add[i]%><i> <%=p[i]%></i>,<br/>
        <%
        System.out.println("the details is"+add[i]);
        //j++;
        }%>
        </h4>
    
    <p>
    <u>Regards</u>,<br/><br/>
     Placement Activity System.
    </p>
    </body>
</html>
