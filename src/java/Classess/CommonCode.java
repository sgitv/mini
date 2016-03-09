/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Classess;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author G5
 */
public class CommonCode {
    static Connection con=Classess.DbConnect.oracleConnect();
    static Statement st=null;
    static ResultSet rs=null;
    
    public static void main(String args[])
    {
        System.out.println("Welcome To CommonCode");
    }
 public static int runQuery1(String que)throws Exception
 {  int i=0;
    st=con.createStatement();
    i=st.executeUpdate(que);
    return i;
}
 public static ResultSet runQuery(String que)throws Exception
 {
   st=con.createStatement();
   rs=st.executeQuery(que);
   return rs;
   
 }
 public static String  getValue(String que)throws Exception
 {    String val="";
     rs=Classess.CommonCode.runQuery(que);
     if(rs.next())
     {
         val=rs.getString(1);
         System.out.println("common code "+que);
     }
     return val;
 }
 public static int loginCheck(String que)throws Exception
 {
     int count=0;
     String uname="";
     rs=Classess.CommonCode.runQuery(que);
     if(rs.next())
     {
         uname=rs.getString(1);
         count=1;
     }
         
     return count;
 }
 public static int loginChecking(String table,String cn1,String uname,String cn2,String pwd)throws Exception
 {
     int count=0;
     String que="select "+cn1+","+cn2+" from "+table+" where "+cn1+"='"+uname+"' and "+cn2+"='"+pwd+"'";
    System.out.println(que);
     rs=Classess.CommonCode.runQuery(que);
     if(rs.next())
     {
         uname=rs.getString(1);
         count=1;
     }
         
     return count;
 }
 public static int sequcenId(String table,String id)throws Exception
 {
     int i=0;
     String que="select max("+id+") from "+table;
     rs=Classess.CommonCode.runQuery(que);
     if(rs.next())
     {
     i=rs.getInt(1);
     i++;
     }
     return i;
 }
 
 public static ResultSet getValues(String table,String name)throws Exception
 {  
     String que="select "+name+" from "+table;
     
     rs=Classess.CommonCode.runQuery(que);
     
     return rs;
 }
 public static ResultSet getMore(String table,String id,String name)throws Exception
 {  
     String que="select "+id+","+name+" from "+table;
     System.out.println("getMore() que is"+que);
     rs=Classess.CommonCode.runQuery(que);
     
     return rs;
 }
 public static ResultSet singleSet(String table)throws Exception
 {
     String que="select * from "+table+" ";
     System.out.println("the singleSet query is"+que);
     rs=Classess.CommonCode.runQuery(que);
     return rs;
 }
  public static ResultSet singleSetValues(String table,String name,int id)throws Exception
 {
     String que="select * from "+table+" where "+name+"="+id+" ";
     System.out.println("the singleSet query is"+que);
     rs=Classess.CommonCode.runQuery(que);
     return rs;
 }
  public static ResultSet doubleSetValues(String table,String name,String ids,int id)throws Exception
 {
     String que="select "+name+","+ids+" from "+table+" where "+name+"="+id+" ";
     System.out.println("the doubleSet query is"+que);
     rs=Classess.CommonCode.runQuery(que);
     return rs;
 }
}
