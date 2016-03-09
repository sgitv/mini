<%@page import="java.util.StringTokenizer"%>
<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<script>
  function Validation()
{
    if(!document.getElementById("cname").value)
        {
            alert("Please Mention Company Name");
            document.getElementById("cname").focus();
            return false;
        }
         if(!document.getElementById("vd").value)
        {
            alert("Please Mention Venue Details");
            document.getElementById("vd").focus();
            return false;
        }
          if(!document.getElementById("dat").value)
        {
            alert("Please Mention Exam Conduct Date");
            document.getElementById("dat").focus();
            return false;
        }
        
}  
</script>
</head>


<body bgcolor="#CCCCFF">

  
 <%! String uid,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,f17,f18;%>
  <%! String g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14;%>
  <%! String h1,h2,h3,h4,h5,h6,h7,h8,h9,h10;%>
   <%! String i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;%>
 <%! Connection con;%>
 <%! Statement stmt;%>
 <%! ResultSet rs;%>
 
<%
   //uid=request.getParameter("uid");
   String uid=request.getParameter("jsid");
   String jcode=request.getParameter("jcode");
 String my=request.getParameter("jsid");
 StringTokenizer st=new StringTokenizer(my,",");
 String myjc="",myjsid="";
 String arp[]=new String[2];
 int ip1=0;
 while(st.hasMoreTokens())
        {
       arp[ip1]=st.nextToken();
       System.out.println(arp[ip1]+"fhgfhgf");
       ip1++;
       // myjc=st.nextToken();
        //myjsid=st.nextToken();
       }
 System.out.println(myjc+"my jc is");
 System.out.println(myjsid+"my jsid is");
rs=Classess.CommonCode.runQuery("select * from empreg where USERID='"+arp[1]+"'");
while(rs.next())
{
f1=rs.getString(1);
f2=rs.getString(2);
f3=rs.getString(3);
f4=rs.getString(4);
f5=rs.getString(5);
f6=rs.getString(6);
f7=rs.getString(7);
f8=rs.getString(8);
f9=rs.getString(9);
f10=rs.getString(10);
f11=rs.getString(11);
f12=rs.getString(12);
f13=rs.getString(13);
f14=rs.getString(14);
f15=rs.getString(15);
f16=rs.getString(16);
f17=rs.getString(17);
f18=rs.getString(18);

%>
  <form method="post" action="./AdminShortList?type=Client&jsid=<%=arp[1]%>&jcode=<%=arp[0]%>">
<center><font color="red" size="5">Personal Details</font></center>
<table width="968" border="1" cellpadding="5">
  <!--DWLayoutTable-->
  <tr> 
    <td ><b>User Id</b></td>
    <td ><%=f1%></td>
  </tr>

  <tr> 
    <td><b>Name</b></td>
    <td><%=f3%> <%=f4%> <%=f5%> </td>
   
  </tr>
  <tr> 
    <td><b>Gender</b></td>
    <td><%=f18%></td>
  
  </tr>
  <tr> 
<td ><b>Present Address</b></td>
    <td><%=f6%></td>
 
  </tr>
  <tr> 
<td ><b>Permanent Address</b></td>
    <td><%=f7%></td>
    
  </tr>
  <tr> 
<td><b>City</b></td>
    <td><%=f9%></td>

  </tr>
  <tr> 
    <td><b>State</b></td>
    <td><%=f10%></td>
   
  </tr>
  <tr> 
    <td><b>Country</b></td>
    <td><%=f11%></td>
   
  </tr>
  <tr> 
    <td><b>Pin code</b></td>
    <td><%=f8%></td>
 
  </tr>
  <tr> 
    <td><b>Contact No(Office)</b></td>
    <td><%=f12%></td>
   
  </tr>
  <tr> 
    
    <td><b>Ext</b></td>
    <td><%=f13%></td>
  </tr>
  <tr> 
    <td><b>Res Contact No</b></td>
    <td><%=f14%></td>
   
  </tr>
  <tr> 
    <td><b>Passport No</b></td>
    <td><%=f15%></td>
    
  </tr>
  <tr> 
    
    <td><b>Mobile No</b></td>
    <td><%=f17%></td>
  </tr>
</table>

<table width="968" border="1" cellpadding="5">
  <tr>
    <td><b>Career Object</b></td>
    <td>
        <textarea name="textarea" rows="5" cols="100"><%=f16%></textarea>
   </td>
  </tr>
  
</table>

      
<%}
rs.close();
%>
<p>&nbsp;</p><hr>
<center><font color="red" size="5">Education</font></center>

<%! Connection con1;%>
 <%! Statement stmt1;%>
 <%! ResultSet rs1;%>
<%
   //uid=request.getParameter("uid");
 
 rs1=Classess.CommonCode.runQuery("select * from education where USERID='"+arp[1]+"'");
while(rs1.next())
{
g1=rs1.getString(1);
g2=rs1.getString(2);
g3=rs1.getString(3);
g4=rs1.getString(4);
g5=rs1.getString(5);
g6=rs1.getString(6);
g7=rs1.getString(7);
g8=rs1.getString(8);
g9=rs1.getString(9);
g10=rs1.getString(10);
g11=rs1.getString(11);
g12=rs1.getString(12);
g13=rs1.getString(13);
g14=rs1.getString(14);
%>
<table width="968" border="1" cellpadding="5">
  <!--DWLayoutTable-->
  <tr> 
    <td ><b>Qualification/University/Percentage</b></td>
    <td><%=g2%>,<%=g3%>,<%=g4%></td>
   
  </tr>
  <tr> 
    <td><b>Graduation/University/Percentage</b></td>
    <td><%=g5%>,<%=g6%>,<%=g7%></td>
     </tr>
  <tr> 
    <td><b>Intermediate/Certificate no</b></td>
    <td><%=g8%> %,<%=g9%></td>
     </tr>
  <tr> 
    <td><b>SSC/Certificate No</b></td>
    <td><%=g10%> %,<%=g11%></td>
  </tr>
 
  <tr> 
    <td><b>Other Qualification</b></td>
    <td><%=g12%></td>
     </tr>
  <tr> 
    <td><b>Other Certification</b></td>
    <td><%=g13%></td>
      </tr>
</table>
<%}
rs1.close();
%>

<hr>
<center><font color="red" size="5">Skills</font></center>
<%! Connection con2;%>
 <%! Statement stmt2;%>
 <%! ResultSet rs2;%>
<%
   //uid=request.getParameter("uid");
 
 rs2=Classess.CommonCode.runQuery("select * from skills where USERID='"+arp[1]+"'");
while(rs2.next())
{
h1=rs2.getString(1);
h2=rs2.getString(2);
h3=rs2.getString(3);
h4=rs2.getString(4);
h5=rs2.getString(5);
h6=rs2.getString(6);
h7=rs2.getString(7);
h8=rs2.getString(8);
h9=rs2.getString(9);
h10=rs2.getString(10);
%>

<table width="968" border="1" cellpadding="5">
  <!--DWLayoutTable-->
  <tr> 
    <td><b>Skill1/Skill2/Skill3</b></td>
    <td><%=h2%>,<%=h3%>,<%=h4%></td>
    
  </tr>
  <tr> 
    <td><b>Skill4/Skill5/Skill6</b></td>
    <td><%=h5%>,<%=h6%>,<%=h7%></td>
     </tr>
  <tr> 
    <td><b>Other Skills</b></td>
    <td><%=h8%></td>
    </tr>
  <tr> 
    <td><b>Total Experience</b></td>
    <td><%=h10%></td>
      </tr>
</table>
<table width="968" border="1" cellpadding="5">
  <tr> 
    <td><b>Description Of Skills<b></td>
    <td> <textarea name="textarea2" rows="5" cols="100"><%=h9%></textarea> 
    </td>
  </tr>
</table>
<%}
rs2.close();
%>

<hr>

<%! Connection con3;%>
 <%! Statement stmt3;%>
 <%! ResultSet rs3;%>
<%
   //uid=request.getParameter("uid");

 rs3=Classess.CommonCode.runQuery("select * from experience where USERID='"+arp[1]+"'");
while(rs3.next())
{
i1=rs3.getString(1);
i2=rs3.getString(2);
i3=rs3.getString(3);
i4=rs3.getString(4);
i5=rs3.getString(5);
i6=rs3.getString(6);
i7=rs3.getString(7);
i8=rs3.getString(8);
i9=rs3.getString(9);
i10=rs3.getString(10);
%>
<table width="968" border="1" cellpadding="5">
  <!--DWLayoutTable-->
  <tr> 
    <td><b>Total Experience</b></td>
    <td><%=i2%></td>
    
  </tr>
  <tr> 
    <td><b>Experience in the Field</b></td>
    <td><%=i3%></td>
  </tr>
  <tr> 
    <td><b>Present Working Company</b></td>
    <td><%=i4%></td>
   </tr>
  <tr> 
    <td><b>Off site/Onsite/URL<b></td>
    <td><%=i5%>,<%=i10%></td>
  </tr>
  <tr> 
    <td><b>From/To</b></td>
    <td><%=i6%> - <%=i7%></td>
   </tr>
  <tr> 
    <td><b>Present Salary</b></td>
    <td><%=i8%></td>
  </tr>
  <tr>
    <td><b>Expected Salary</b></td>
    <td><%=i9%></td>
  </tr>
</table>
<%}
rs3.close();
%>


<%
ResultSet rs4=Classess.CommonCode.runQuery("select * from PROJECTS where USERID='"+arp[1]+"'");
while(rs4.next())
       {
%>

<hr>
<center><font color="red" size="5">Project Details</font></center>
<table width="968" border="1" cellpadding="5">
  <!--DWLayoutTable-->
  <tr> 
    <td><b>Project Title</b></td>
    <td><%=rs4.getString(2)%></td>
  </tr>
  <tr> 
    <td><b>Used Skills</b></td>
    <td><%=rs4.getString(4)%></td>
  <tr> 
  <tr> 
    <td><b>Team Size</b></td>
    <td><%=rs4.getString(5)%></td>
  <tr>     
    <td><b>Envr</b></td>
    <td><%=rs4.getString(6)%></td>
   </tr>


  <tr> 
    <td><b>Rolls</b></td>
    <td><%=rs4.getString(7)%></td>
    
  </tr>
</table>
<table width="968" border="0" cellpadding="5">
  <tr> 
    <td><b>Project Descriptions</b></td>
    <td> <textarea name="textarea3" rows="5" cols="100" ><%=rs4.getString(3)%></textarea> 
    </td>
  </tr>
</table>
<%}%>
<p>&nbsp;</p>

<hr>
<center><b>Client Information</b></center>
<p>
    Company Name:<input type="text" name="cname" id="cname"></input>&nbsp;
    Venue Details:<input type="text" name="vd" id="vd"></input>&nbsp;
    Date:<input type="text" name="dat" id="dat"></input>
    Jcode:<input type="text" name="jcd" id="jcd" value="<%=arp[0]%>" readonly />
</p>
<center><input type="submit" name="my" value="LIKE" size="10" onClick="return Validation(this)"></input>&nbsp;<input type="Submit" name="my" value="DISLIKE" onClick="return Validation(this)"></input></center>
    </form>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
