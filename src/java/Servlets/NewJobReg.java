/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author G5
 */
public class NewJobReg extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
        HttpSession ses=req.getSession(true);
        try {
            boolean sta=false;
          String jobtit=req.getParameter("jobtit");
	   String jobcode=req.getParameter("jobcode");
   String skill=req.getParameter("skill1").trim()+","+req.getParameter("skill2").trim()+","+
      req.getParameter("skill3").trim()+","+req.getParameter("skill4").trim()+
   ","+req.getParameter("skill5").trim()+","+req.getParameter("skill6").trim();
 
//***************************************
String exp=req.getParameter("exp");
   String odate=req.getParameter("odate");
   System.out.println("order date"+odate);
   String closdate=req.getParameter("closdate");
   System.out.println("closed date"+closdate);
   String cid=req.getParameter("cid");

Connection con=Classess.DbConnect.oracleConnect();	
   
/*       PreparedStatement ps=con.prepareStatement("INSERT INTO joborder VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");*/
CallableStatement ps=con.prepareCall("{call JobAndJobOrder(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");

   System.out.println("after html form reading values");
    ps.setString(1,jobtit);
    ps.setString(2,jobcode);
    ps.setString(3,skill);
    ps.setString(4,exp);
    ps.setString(5,odate);
    ps.setString(6,closdate);
    ps.setString(7,cid);
    ps.setString(8,jobtit);
    ps.setString(9,jobcode);
    ps.setString(10,req.getParameter("skill1") );
    ps.setString(11,req.getParameter("skill2") );
    ps.setString(12,req.getParameter("skill3"));
    ps.setString(13,req.getParameter("skill4"));
    ps.setString(14,req.getParameter("skill5"));
    ps.setString(15,req.getParameter("skill6"));
    ps.setString(16,exp);
    ps.setString(17,odate);
    ps.setString(18,closdate);
    ps.setString(19,cid);
    sta=ps.execute();
    String msg="";
System.out.println("after inserting into the table");
if(!sta)	
msg="Register Successfully.....";
else
msg="!Sorry Try Again....";
RequestDispatcher rd=req.getRequestDispatcher("addnewjobs.jsp?msg="+msg);
rd.forward(req, res);

	ps.close();
   

   con.close(); 
        } 
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
