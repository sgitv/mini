<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title></head>
<jsp:include page="expuser1left.htm"></jsp:include>&nbsp;&nbsp;
<br/><br/>
<body>
<%! String cid;%>
  <%
  cid=request.getParameter("clientid");

ResultSet rs=Classess.CommonCode.runQuery("select CLIENTID,JOBTITLE,JOBCODE,SKILL,NOYEXP,CLODATE from JOBS WHERE CLIENTID='"+cid+"'");
%>
<Center><font size=5><Strong>Jobs Based On Client&nbsp;<%=cid%>

<hr>
<table border="0" cellpadding="5" bordercolor="#009988">
  <tr bordercolor="#990033" bgcolor="#999966"> 
    <td width="189">Client Id</td>
    <td width="154">Job Title</td>
    <td width="154">Job code</td>
    <td width="192">Required Skills</td>
    <td width="145">Experience</td>
    <td width="187">Closing Date</td>
  <td width="187">Apply Jobs</td>
  
  </tr>

<% while(rs.next())
{
	 String f1=rs.getString(1);
		f1=(f1==null)?"":f1;
		String f2=rs.getString(2);
		f2=(f2==null)?"":f2;
		String f3=rs.getString(3);
		f3=(f3==null)?"":f3;
		String f4=rs.getString(4);
		f4=(f4==null)?"":f4;
		String f5=rs.getString(5);
		f5=(f5==null)?"":f5;
		String f6=rs.getString(6);
		f6=(f6==null)?"":f6;
		
		%>

  <tr bgcolor="#9999CC"> 
    <td width="189"><%=f1%></td>
    <td width="154"><%=f2%></td>
    <td width="154"><%=f3%></td>
    <td width="192"><%=f4%>
<td><%=f5%>
<td><%=f6%> 
<td><a href="./ApplyJobs?jcode=<%=f3%>&cid=<%=cid%>&jsid=<%=session.getAttribute("uname")%>&ad=<%=f6%>&exp=<%=f5%>&cn=3">Apply</a></td>
  </tr>

<%}%>

</table>
<center>
 <%
 String msg=request.getParameter("msg");
 if(msg!=null)
         {
 %> 
 <h6><b> <%=msg%></b></h6>
 <%}%>
</center>
<p>&nbsp;</p>
</body>
</html>
