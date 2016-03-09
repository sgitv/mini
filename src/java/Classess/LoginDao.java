/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Classess;

/**
 *
 * @author G5
 */
public class LoginDao {
    public static void main(String args[])
    {
        System.out.println("Welcome To Validations");
    }
    
    public static int check(String uname,String pwd)throws Exception
    {
        int i=0,j=0;
        String query="",value="",table="",lid="",lpd="";
      // String query="select loginid,password from userdetails where loginid='"+uname+"' and password='"+pwd+"'";
        //i=Classess.CommonCode.loginCheck(query);
       query="select LOGINTYPE from userdetails where loginid='"+uname+"' and password='"+pwd+"'";
       value=Classess.CommonCode.getValue(query);
       System.out.println("the value is"+value);
        if(value!=null && value.equals("admin"))
        {
            System.out.println("hai");
            table="USERDETAILS";
            lid="loginid";
            lpd="password";
            
           
        }
  if(value!=null && value.equals("student"))
        {
           table="USERDETAILS";
            lid="loginid";
            lpd="password";
            
            
        }
   if(value!=null && !value.equals("student") && !value.equals("admin"))  
         
        {
            table="FACULTYMASTER";
            lid="USERNAME";
            lpd="PASSWORD";
        }
       
   
   
       
       
        
   i=Classess.CommonCode.loginChecking(table, lid, uname, lpd, pwd);
        
        return i;
    }
}
