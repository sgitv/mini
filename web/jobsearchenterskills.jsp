	<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<jsp:include page="expuser1left.htm"></jsp:include>&nbsp;&nbsp;
<br/><br/>
<body>
<form name="form2" method="post" action="./jobsearchrep.jsp">

<p>&nbsp;</p>
  <p align="center"><font size="+2"  color="#dd00aa"><Strong>Search on Skill to know the Vacancies</font></p>
  <p align="center"><font size="+2"><br>
    </font> </p>
  <div align="center">
    <%
 
ResultSet rs=Classess.CommonCode.runQuery("select unique(skill)from jobs");
  
%>
  </div>
  <div align="center">
   Select the Skill
          <select name="skill">
            <%  Set hs=new HashSet(); 
              while(rs.next()){
         StringTokenizer stoken=new StringTokenizer(rs.getString(1),",");
       
     while(stoken.hasMoreTokens()){
          hs.add(stoken.nextToken());}
          
        }  	       
           Iterator i=hs.iterator();
           while(i.hasNext()){
                
 %>
            <option><%=(String)i.next()%></option> 
            <%}%>
          </select>
   
            <input type="submit" name="Submit" value="Submit">
       
<p>&nbsp;</p>
</form>
</body>
</html>

