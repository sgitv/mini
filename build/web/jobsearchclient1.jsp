<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<html>
<head>
<title>Untitled Document</title>

</head>


<body>
<form name="form2" method="post" action="./jobsearchclientrep1.jsp">

<p>&nbsp;</p>
  <p align="center"><font size="+2"  color="#dd00aa"><Strong>Search on Client to know the Vacancies</font></p>
  <p align="center"><font size="+2"><br>
    </font> </p>
  <div align="center">
    <%
 
ResultSet rs=Classess.CommonCode.runQuery("select CLIENTID from JOBS");
  
%>
  </div>
  <div align="center">
   Select the Client
          <select name="clientid">
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

