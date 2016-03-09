<%-- 
    Document   : ShortList
    Created on : Feb 13, 2013, 5:29:15 PM
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
        <script>
          function fun()
          {
              var a=document.getElementById("jsid").value;
              window.location.href="ShortList.jsp?jcode="+a;
          }
          function Validation()
          {
              if(!document.getElementById("jsid").value)
                  {
                      alert("Please Select Job Seeker Id");
                      return false;
                  }
          }
        </script>
    </head>
    <body>
        
        <form method="post" action="ViewSeeker.jsp">
        <table align="center"> 
            
            <tr><td>Job Seeker Id:</td>
                <td>
                    <select name="jsid" id="jsid" >
                         <option value="">Select</option>
                        <%
                        String clid=session.getAttribute("userid").toString(); 
                       System.out.println("cldkf"+clid);
                       String jcode="";
                      
                        String jcc=request.getParameter("jcode");
                        String val="";
                        if(jcc==null)
                         {
                         %>
                       
                         <%
                        }
                       // if(jcc!=null)
                       // {
                           
                        //ResultSet rss=Classess.CommonCode.runQuery("select APPLYID,JOBCODE from APPLYJOBS where CLIENTIDS='"+clid+"' and STATUS='Completed' and jobcode='"+jcc+"'");
                        //if(rss.next())
                                                      // {
                         %>
                         
                         <%
                       // }}
                       
                       ResultSet rsp=Classess.CommonCode.runQuery("select rowid,applyid from APPLYJOBS where CLIENTIDS='"+clid+"' and STATUS='Completed' ");
                       String cnt=Classess.CommonCode.getValue("select sum(count(jobcode)) from APPLYJOBS where CLIENTIDS='"+clid+"' and STATUS='Completed' group by applyid ");
                       System.out.println("the total values are"+cnt);
                  
                       if(cnt!=null)
                                                     {
                       String arrs[]=new String[Integer.parseInt(cnt)];
                       int p=0;
                       while(rsp.next())
                       { 
                         
                           arrs[p]=rsp.getString(1);
                       
                         //  jcode=rsp.getString(1);
                        //   System.out.println("jcode is.."+jcode);
                           p++;
                       }
                       String my="";                    
                       for(int i=0;i<arrs.length;i++)
                                                     {
                       System.out.println("dsfsdfds"+arrs[i]);
                       System.out.println("select APPLYID,JOBCODE from APPLYJOBS where CLIENTIDS='"+clid+"' and STATUS='Completed' and rowid='"+arrs[i]+"'");
                       ResultSet rs=Classess.CommonCode.runQuery("select APPLYID,JOBCODE from APPLYJOBS where CLIENTIDS='"+clid+"' and STATUS='Completed' and rowid='"+arrs[i]+"'");
                      if(rs.next())
                          {
                         my=rs.getString(2)+","+rs.getString(1);  
                                 //jcode=rs.getString(2);
                      // System.out.println("jcode is....."+jcode);
                        %> 
                        
                        <option value="<%=my%>"><%=rs.getString(1)%></option>
                        <%}}}%>
                    </select>    
                    <%
                    String jc=request.getParameter("jcode");
                    if(jc!=null)
                                               {
                    %>
                    <input type="hidden" name="jcode" value="<%=jc%>"></input>
                    <%}%>
                 
                </td>
            </tr> 
            <tr><td>&nbsp;</td><td><input type="submit" value="Submit" onClick="return Validation(this)"></input>&nbsp;<input type="reset" value="Clear"></input></td>
        </table>
        </form>
                    <center>
    <b>
    <%String msg=request.getParameter("msg");
    if(msg!=null)
     {
        %>
        <%=msg%>
        <%
     }
    %>
    </b>
</center>
    </body>
</html>
