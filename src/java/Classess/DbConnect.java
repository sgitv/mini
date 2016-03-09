/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Classess;
import java.sql.Connection;
import java.sql.DriverManager;
import org.apache.tomcat.dbcp.dbcp.BasicDataSource;

/**
 *
 * @author G5
 */
public class DbConnect {
    static Connection con=null;

    public static void main(String args[])
    {
       
        DbConnect.oracleConnect();
        if(con!=null)
        {
            System.out.println("Connected Successfully");
        }
    }
    
    public static Connection oracleConnect()
    { Connection con=null;  
        try
        {
        //Class.forName("oracle.jdbc.driver.OracleDriver");
        BasicDataSource b=new BasicDataSource();
        b.setDriverClassName("oracle.jdbc.driver.OracleDriver");
        b.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
        b.setUsername("place");
        b.setPassword("place");
       
            
            con=b.getConnection();
       
        
        //con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","pas","pas");
        System.out.println("Oracle Connected Successfully");
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return con;
    }
    public static Connection mysqlConnect()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vcr","root","root");
            System.out.println("MySql Conncted Successfully");
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
            
        }
        return con;
    }
    public static Connection sqlServerConnect()
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            con=DriverManager.getConnection("jdbc:odbc:vcr","","");
            System.out.println("SqlServer Connected Successfully");
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        return con;
    }
}
