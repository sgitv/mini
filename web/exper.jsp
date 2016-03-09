<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>
<script>
  function Validation()
{
    if(!document.getElementById("expfield").value)
        {
         alert("Please Mention Expfield");
         document.getElementById("expfield").focus();
         return false;   
        }
        
    if(!document.getElementById("pwcomp").value)
        {
         alert("Please Mention Present Working Company");
         document.getElementById("pwcomp").focus();
         return false;   
        }
    if(!document.getElementById("onsit").value)
        {
         alert("Please Mention OnSite/OffSite");
         document.getElementById("onsit").focus();
         return false;   
        }
        if(!document.getElementById("urle").value)
        {
         alert("Please Mention Url");
         document.getElementById("urle").focus();
         return false;   
        }
        if(!document.getElementById("pfrom").value)
        {
         alert("Please Mention Joining Date Present From Company");
         document.getElementById("pfrom").focus();
         return false;   
        }
    if(!document.getElementById("pto").value)
        {
         alert("Please Mention Till DATE Present From Company");
         document.getElementById("pto").focus();
         return false;   
        }
        if(!document.getElementById("prsal").value)
        {
         alert("Please Mention Present Salary");
         document.getElementById("prsal").focus();
         return false;   
        }
        if(isNaN(document.getElementById("prsal").value))
        {
         alert("Please Mention Salary In Numeric Form");
         document.getElementById("prsal").focus();
          document.getElementById("prsal").value="";
         return false;   
        }
    
        if(!document.getElementById("expsal").value)
        {
         alert("Please Mention Expected Salary");
         document.getElementById("expsal").focus();
         return false;   
        }
        if(isNaN(document.getElementById("expsal").value))
        {
         alert("Please Mention Salary In Numeric Form");
         document.getElementById("expsal").focus();
          document.getElementById("expsal").value=" ";
         return false;   
        }
        
}  
</script>
</head>
<jsp:include page="expuser1left.htm"></jsp:include>&nbsp;&nbsp;
<br>


<body bgcolor="#9999CC">

<%! String id;%>
<%id=(String)session.getAttribute("uname");%>
<%  
System.out.println("select * from experience where USERID="+id);
ResultSet rs=Classess.CommonCode.runQuery("select * from experience where USERID='"+id+"'");
%>
	<table width="928" height="55" border="0" cellpadding="5">
			  <tr> 
				<td width="278"><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td>
				<td width="399"><strong><font color="#993333" size="+1">Experience Details</font></strong> 
				<td width="213"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
			  </tr>
			</table>
<hr>
<p>&nbsp;</p>

  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> <%if(rs.next())
	  { System.out.println("ratna:");
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
		String f7=rs.getString(7);
		f7=(f7==null)?"":f7;
		String f8=rs.getString(8);
		f8=(f8==null)?"":f8;
		String f9=rs.getString(9);
		f9=(f9==null)?"":f9;
		String f10=rs.getString(10);
		f10=(f10==null)?"":f10;
		  %>
      <center>
<%
String msg=request.getParameter("msg");
if(msg!=null)
       {
%>
<%=msg%>
</center>
<%}%>

<form name="form1" method="post" action="./UpdateUserExp">
  <p>&nbsp;</p>
  <div align="center">
    <table width="715" border="0" cellpadding="5">
      <tr> 
        <td width="187"><strong> <font color="#000000" size="2"><strong>User 
          Id</strong></font></strong></td>
        <td width="180"><input type="text" name="uid" id="uid" readOnly value="<%=f1%>"></td>
        <td width="151"><strong><font size="2">Total Experience</font></strong></td>
        <td width="147"><font color="#000000"> 
          <input type="text" name="totexp" id="totexp" value=<%=f2%>>
          </font></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Experience in the Field</font></strong></td>
        <td><input type="text" name="expfield" id="expfield" value="<%=f3%>"></td>
        <td><font color="#000000" size="2"><strong>Present Working Company</strong></font></td>
        <td><input type="text" name="pwcomp" id="pwcomp" value="<%=f4%>"></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Off-site / On-site</font></strong></td>
        <td><input type="text" name="onsit" id="onsit" value="<%=f5%>"></td>
        <td><font color="#000000" size="2"><strong> If On-site Submit URL(<font color="#CC0000">EX. 
          www.act.com</font>)</strong></font></td>
        <td><input type="text" name="urle" id="urle" value="<%=f10%>"></td>
      </tr>
      <tr> 
        <td><font size="2"><strong>From <font color="#CC0033">Ex(dd-mm-yyyy)</font></strong></font></td>
        <td><input type="text" name="pfrom" id="pfrom" value="<%=f6%>"></td>
        <td><font color="#000000" size="2">&nbsp;<strong>To </strong></font><font size="-2"><strong><font color="#CC0033">Ex(dd-mm-yyyy)</font></strong></font></td>
        <td><input type="text" name="pto" id="pto" value="<%=f7%>"></td>
      </tr>
      <tr> 
        <td><font size="2"><strong>Present Salary</strong></font></td>
        <td><input type="text" name="prsal" id="prsal" value="<%=f8%>"></td>
        <td><strong><font size="2">Expected Salary</font></strong></td>
        <td><input type="text" name="expsal" id="expsal" value="<%=f9%>"></td>
      </tr>
    </table>
    <table width="714" border="0" cellpadding="5">
      <tr> 
        <td width="187">&nbsp;</td>
        <td width="501">&nbsp;</td>
      </tr>
	  <%}%>
    </table>
    <table width="710" border="0" cellpadding="5">
      <tr>
        <td>        
      <center><input type="submit" name="Submit" value="UPDATE" onclick="return Validation(this)"></center>
          </td>
       
      </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>


</body>
</html>
