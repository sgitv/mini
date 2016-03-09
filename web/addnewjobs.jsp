<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script>
   function Validation()
   {
       if(!document.getElementById("jobtit").value)
           {
               alert("Please Mention Job Title");
               document.getElementById("jobtit").focus();
               return false;
           }
           if(!document.getElementById("exp").value)
               {
                   alert("Please Mention Experience");
                   return false;
               }
               if(!document.getElementById("jobcode").value)
                   {
                       alert("Please Mention Jobcode");
                       document.getElementById("jobcode").focus();
                       return false;
                   }
                     if(!document.getElementById("odate").value)
                   {
                       alert("Please Mention Opening Date");
                       document.getElementById("odate").focus();
                       return false;
                   }
                  
                   if(!document.getElementById("skill1").value)
                   {
                       alert("Please Mention Skills");
                       document.getElementById("skill1").focus();
                       return false;
                   }
                      if(!document.getElementById("closdate").value)
                   {
                       alert("Please Mention Closing Date");
                       document.getElementById("closdate").focus();
                       return false;
                   }
                    if(!document.getElementById("skill2").value)
                   {
                       alert("Please Mention Skills");
                       document.getElementById("skill2").focus();
                       return false;
                   }
                   if(!document.getElementById("skill3").value)
                   {
                       alert("Please Mention Skills");
                       document.getElementById("skill3").focus();
                       return false;
                   }
                   if(!document.getElementById("skill4").value)
                   {
                       alert("Please Mention Skills");
                       document.getElementById("skill4").focus();
                       return false;
                   }
                   if(!document.getElementById("skill5").value)
                   {
                       alert("Please Mention Skills");
                       document.getElementById("skill5").focus();
                       return false;
                   }
                   if(!document.getElementById("skill6").value)
                   {
                       alert("Please Mention Skills");
                       document.getElementById("skill6").focus();
                       return false;
                   }
   }
</script>
</head>

<body>
  <% 
ResultSet rs=Classess.CommonCode.runQuery("select noyexp from joborder");
%>
<form name="form1" method="post" action="./NewJobReg">
<table align=center border=0 cellpadding="5">
    <tr>
      <td width="132">Job Title</td>
      <td width="197">
          <input type="text" name="jobtit" id="jobtit">
        </td>
      <td width="145">No.Years Exp</td>
      <td width="158">
          <select name="exp" id="exp">
          <option value="">Select</option>	
          <option  value=0>0</option>
	  <option value=1>1</option>
	  <option value=2>2</option>
	  <option value=3>3</option>
	  <option value=4>4</option>
		<option value=5>5</option>
          </select>
		 
        </td>
    </tr>
    <tr>
      <td>Job Code</td>
      <td><input type="text" name="jobcode" id="jobcode"></td>
      <td>Opening Date</td>
      <td><input type="text" name="odate" id="odate"></td>
    </tr>
    <tr>
      <td>Skill1</td>
      <td><input type="text" name="skill1" id="skill1"></td>
      <td>Closing Date</td>
      <td><input type="text" name="closdate" id="closdate"></td>
    </tr>
    <tr>
      <td>Skill2</td>
      <td><input type="text" name="skill2" id="skill2"></td>
      <td>Client id</td>
      <td><input type="text" name="cid" id="cid" readOnly value=<%=session.getAttribute("userid")%>></td>
    </tr>
    <tr>
      <td>Skill3</td>
      <td><input type="text" name="skill3" id="skill3"></td>
      <td>Skill4</td>
      <td><input type="text" name="skill4" id="skill4"></td>
      </tr>
    <tr>
      <td>Skill5</td>
      <td><input type="text" name="skill5" id="skill5"></td>
      <td>Skill6</td>
      <td><input type="text" name="skill6" id="skill6"></td>
    </tr>
   </table>
      <center><br><br><input type="submit" name="Submit" value="Submit" onClick="return Validation(this)">
      &nbsp;<input type="Reset" name="Submit2" value="Cancel">
    </div>
</form>
    <%
    String msg=request.getParameter("msg");
    if(msg!=null)
               {
        %>
<center><b><%=msg%></b><center>
        <%
    }
    %>
</body>
</html>
