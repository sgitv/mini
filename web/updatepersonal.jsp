<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<script>
 function ss()
{
    
 if(!document.getElementById("userid").value)
     {
         alert("Please Mention UserId");
         document.getElementById("userid").focus();
         return false;
     }
     if(!document.getElementById("pass").value)
         {
             alert("Please Mention Password");
             document.getElementById("pass").focus();
             return false;
         }
         if(!document.getElementById("fname").value)
         {
             alert("Please Mention First Name");
             document.getElementById("fname").focus();
             return false;
         }
         if(!document.getElementById("mname").value)
         {
             alert("Please Mention Middle Name");
             document.getElementById("mname").focus();
             return false;
         }
          if(!document.getElementById("lname").value)
         {
             alert("Please Mention Last Name");
             document.getElementById("lname").focus();
             return false;
         }
         if(!document.getElementById("gend").value)
         {
             alert("Please Mention Gender");
             document.getElementById("gend").focus();
             return false;
         }
         
        if(!document.getElementById("pmadd").value)
         {
             alert("Please Mention Present Address");
             document.getElementById("pmadd").focus();
             return false;
         }
         if(!document.getElementById("psadd").value)
         {
             alert("Please Mention Permanent Address");
             document.getElementById("psadd").focus();
             return false;
         }
          if(!document.getElementById("city").value)
         {
             alert("Please Mention City");
             document.getElementById("city").focus();
             return false;
         }
          if(!document.getElementById("state").value)
         {
             alert("Please Mention State");
             document.getElementById("state").focus();
             return false;
         }
          if(!document.getElementById("country").value)
         {
             alert("Please Mention Country");
             document.getElementById("country").focus();
             return false;
         }
          if(!document.getElementById("pin").value)
         {
             alert("Please Mention Pincode");
             document.getElementById("pin").focus();
             return false;
         }
          if(isNaN(document.getElementById("pin").value))
         {
             alert("Please Mention Pincode In Numeric Form");
             document.getElementById("pin").focus();
              document.getElementById("pin").value=" ";
             return false;
         }
          if(!document.getElementById("cphoff").value)
         {
             alert("Please Mention Office Contact Number");
             document.getElementById("cphoff").focus();
             return false;
         }
           if(isNaN(document.getElementById("cphoff").value))
         {
             alert("Please Mention Office Contact Number In Numeric Form");
             document.getElementById("cphoff").focus();
             document.getElementById("cphoff").value=" ";
             
             return false;
         }
          if(!document.getElementById("offex").value)
         {
             alert("Please Mention  Code Of Contact Number ");
             document.getElementById("offex").focus();
             return false;
         }
           if(isNaN(document.getElementById("offex").value))
         {
             alert("Please Mention  Code Of Contact Number In Numeric Form ");
             document.getElementById("offex").focus();
             document.getElementById("offex").value=" ";
             return false;
         }
          if(!document.getElementById("cphres").value)
         {
             alert("Please Mention House Contact Number");
             document.getElementById("cphres").focus();
             return false;
         }
         if(isNaN(document.getElementById("cphres").value))
         {
             alert("Please Mention House Contact Number In Numeric Form");
             document.getElementById("cphres").focus();
               document.getElementById("cphres").value="";
             return false;
         }
          if(!document.getElementById("mph").value)
         {
             alert("Please Mention Mobile Phone Number");
             document.getElementById("mph").focus();
             return false;
         }
          if(isNaN(document.getElementById("mph").value))
         {
             alert("Please Mention Mobile Phone Number In Numeric Form");
             document.getElementById("mph").focus();
             document.getElementById("mph").value=" ";
             
             return false;
         }
          if(!document.getElementById("passno").value)
         {
             alert("Please Mention Passport Number");
             document.getElementById("passno").focus();
             return false;
         }
          if(!document.getElementById("cobj").value)
         {
             alert("Please Mention Career Object");
             document.getElementById("cobj").focus();
             return false;
         }
  //if(document.newuserpersonal.userid.value==""||document.newuserpersonal.pass.value==""||document.newuserpersonal.fname.value==""||document.newuserpersonal.mname.value=="")
    //{
	// alert("U must fill fields with * marks");
	//  return false;
	//}
 
    // else return true;   	
}   
</script>
</head>
<jsp:include page="expuser1left.htm"></jsp:include>&nbsp;&nbsp;
<br/>
<body bgcolor="#9999FF">
<%! String id,preadd,peradd1,gender,pin,state1,city,country,offno,resno,extno,pasport,mobile,objective;%>


<%id=(String)session.getAttribute("uname");%>
<%  
ResultSet rs=Classess.CommonCode.runQuery("select * from empreg where USERID='"+id+"'");
%>
<table width="100%" height="10%"  align=center>
  <tr> <td colspan=3 align=center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td  ><div align="right"><a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></div></td><td colspan=2 align=left>
    <strong><font color="#993333" size="+1">Update personal details.</font></strong> 
   <a href="./frameall.htm" target="_parent"><img src="images/home.jpg" width="38" height="39" border="0"></a></td>
  </tr>
</table>
<hr>
<p>&nbsp;</p>
<center>
    <%
    String msg=request.getParameter("msg");
    if(msg!=null)
               {
    %>
    <b>
      <%=msg%>  
    </b>  
    <%}%>
</center>
<form name="updatepersonal" method="post" action="./updateusereduudet">
  <p>&nbsp;</p>
  <div align="center">
    <table width="856" border="0" cellpadding="5">
      <tr> <%
	  while(rs.next())
	  {
		 

		  %>

        <td width="197"><strong> <font size="2">User Name<font color="#FF3333">*</font></font></strong></td>
        <td width="247"><input type="text" name="userid" id="userid" readonly value="<%=rs.getString(1)%>"></td>

        <td width="218"><font color="#CC3300" size="3">(Minimum 7 character)</font></td>
        <td width="144">&nbsp;</td>
      </tr>
      <tr> 
	   <td width="197"><strong> <font size="2">Password<font color="#FF3333">*</font></font></strong></td>
      
        <td width="247"><input type="password" name="pass" id="pass" value="<%=rs.getString(2)%>"></td>
        <td><font color="#CC0000" size="3">(Minimum 7 character)</font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">First Name<font color="#CC3333">*</font></font> 
          </strong></td>
        <td><input type="text" name="fname" id="fname" value="<%=rs.getString(3)%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong> <font size="3">Middle Name</font></strong></td>
        <td><input type="text" name="mname" id="mname" value="<%=rs.getString(4)%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Last Name</font></strong></td>
        <td><input type="text" name="lname" id="lname" value="<%=rs.getString(5)%>"></td>
		 <% preadd=rs.getString(6);
		preadd=(preadd==null)?"":preadd;

		 peradd1=rs.getString(7);
		peradd1=(peradd1==null)?"":peradd1;
		 pin=rs.getString(8);
		pin=(pin==null)?"":pin;
			 city=rs.getString(9);
		city=(city==null)?"":city;
		
		 state1=rs.getString(10);
		state1=(state1==null)?"":state1;
		 country=rs.getString(11);
		country=(country==null)?"":country;
		 offno=rs.getString(12);
		offno=(offno==null)?"":offno;

		 extno=rs.getString(13);
		extno=(extno==null)?"":extno;
		 resno=rs.getString(14);
		resno=(resno==null)?"":resno;
		 pasport=rs.getString(15);
		pasport=(pasport==null)?"":pasport;
		 objective=rs.getString(16);
		objective=(objective==null)?"":objective;
		 mobile=rs.getString(17);
		mobile=(mobile==null)?"":mobile;
		 gender=rs.getString(18);
		gender=(gender==null)?"":gender;


		%>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Gender <font color="#CC0000">*</font></font></strong></td>
        <td><select name="gend" id="gend" value="">
<%	 
			if(gender.equalsIgnoreCase("male"))

		{%>
       
		<option value='male' selected>Male</option>
		<option value='female'>Female</option> 
		<%
		}
		else
		  {
			%>
			<option value='male'>Male</option>
		 <option value='female' selected>Female</option>
		<%}%>
          </select></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Present Address<font color="#CC0000">*</font></font></strong></td>
        <td><textarea name="pmadd" id="pmadd"><%=preadd%></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Permanent Address<font color="#CC0033">*</font></font></strong></td>
        <td><textarea name="psadd" id="psadd"><%=peradd1%></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">City<font color="#CC0000">*</font></font></strong></td>
        <td><input type="text" name="city" id="city" value="<%=city%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">State</font></strong></td>
        <td><input type="text" name="state" id="state" value="<%=state1%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Country<font color="#CC0000">*</font></font></strong></td>
        <td><input type="text" name="country" id="country" value="<%=country%>"></td>
        <td><font size="2">pin</font></td>
        <td><input type="text" name="pin" id="pin" value="<%=pin%>"></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Contact No(0ffice)</font></strong></td>
        <td><input type="text" name="cphoff" id="cphoff" value="<%=offno%>"></td>
        <td><strong><font size="2">Ext</font><font size="3">(</font></strong><font color="#CC0000" size="3">Maximum 
          5 digits</font><font size="3"><strong>)</strong></font></td>
        <td><input type="text" name="offex" id="offex" value="<%=extno%>"></td>
      </tr>
      <tr> 
        <td><p><strong><font size="2">Contact No(Res)<font color="#CC0000">*</font></font></strong></p>
          <p><font color="#CC0033" size="3">(With area code)</font></p></td>
        <td><input type="text" name="cphres" id="cphres" value="<%=resno%>"></td>
        <td><strong><font size="2">Mobile No</font></strong></td>
        <td><input type="text" name="mph" id="mph" value="<%=mobile%>"></td>
      </tr>
      <tr> 
        <td><strong><font size="2">Passport No</font></strong></td>
        <td><input type="text" name="passno" id="passno" value="<%=pasport%>"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><strong><font size="2">Career Object<font color="#CC0000">*</font></font></strong></td>
        <td><textarea name="cobj" id="cobj"><%=objective%></textarea></td>
        <td><font color="#CC0000" size="3">Maximum 200 characters</font></td>
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Update" onClick="return ss(this)"></td>
        
        <td>&nbsp;</td>
      </tr><%}%>
    </table>
    <p><strong></p>
  </div>
</form>
<p>&nbsp;</p>
<p><strong></strong> </p>
</body>
</html>
