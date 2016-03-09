<%@ page import="java.sql.*" %>
<html>
<head>
<title>Untitled Document</title>
<script>
  function Validation()
{  
    if(!document.getElementById("cid").value)
        {   alert("Please Select Client Id");
            return false;
        }
}  
</script>
</head>


<body bgcolor="#9966FF">
<form name="form2" method="post" action="./exclientmodi.jsp">

<p>&nbsp;</p>

  <p align="center"><font size="+2">Client Profile <br>
    </font> </p>
  <div align="center">
    
<%
 
ResultSet rs=Classess.CommonCode.runQuery("select CLIENTID from client where CLIENTID='"+session.getAttribute("userid").toString()+"'");
%>
  </div>
  <div align="center">
    <table width="537"  cellpadding="5" bordercolor="#669966">
      <tr bgcolor="#CC9966"> 
        <td width="235">Enter the Client id: </td>
        <td width="270"> 
          <select name="cid" id="cid">
              <option value="">Select</option>  
            <% if(rs.next()){ %>
            <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <%}%>
          </select></td>
    </tr>
    <tr> 
           <td>&nbsp;</td>
        <td> 
            <input type="submit" name="Submit" value="Submit" onClick="return Validation(this)">
         </td>
   
    </tr>
  </table>
</div>
<p>&nbsp;</p>
</form>
</body>
</html>

