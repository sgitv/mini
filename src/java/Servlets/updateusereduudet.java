/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
public class updateusereduudet extends HttpServlet {

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
        HttpSession ses=req.getSession(); 
        try {
  String uid=req.getParameter("userid");
	  ses.setAttribute("uname",uid);
  
   String fname=req.getParameter("fname");
   String mname=req.getParameter("mname");
      String lname=req.getParameter("lname");

   String gend=req.getParameter("gend");
   String pmadd=req.getParameter("pmadd");
   String psadd=req.getParameter("psadd");
//***************************************
String city=req.getParameter("city");
   String state=req.getParameter("state");
   String country=req.getParameter("country");
   String cphoff=req.getParameter("cphoff");
      String offex=req.getParameter("offex");

   String cphres=req.getParameter("cphres");
   String mph=req.getParameter("mph");
   String passno=req.getParameter("passno");
String cobj=req.getParameter("cobj");
String pin=req.getParameter("pin");
   
 


   
 
ResultSet rs=Classess.CommonCode.runQuery("SELECT * FROM EMPREG WHERE USERID='"+uid+"'");
        System.out.println("after select query in modieducation details");
System.out.println("this is session id"+uid);
System.out.println(" this is reuest from html"+uid);
int i=0;
String msg="";
	   if(rs.next())
	  {// updations
	   System.out.println(uid);
	   System.out.println("before update command");
	  i=Classess.CommonCode.runQuery1("UPDATE EMPREG SET FNAME='"+fname+"',MNAME='"+mname+"',LNAME='"+lname+"',PRSTADD='"+psadd+"',PARTADD='"+pmadd+"',PIN='"+pin+"',CITY='"+city+"',STATE='"+state+"',COUNTRY='"+country+"',CTNTNOOFICE='"+cphoff+"',EXTNO='"+offex+"',CTNTNORESNO='"+cphres+"',PASSPORTNO='"+passno+"',CARRABJ='"+cobj+"',MOBILENO='"+mph+"',GENDER='"+gend+"' where USERID='"+uid+"'");  
	//   res.sendRedirect("./updateexuseredudet.jsp");
	  }
          if(i==1)
          msg=uid+"  Your Personal Details Updated Successfully";   
          else
          msg=uid+" !Sorry Try Again........";    
	  
         RequestDispatcher rd=req.getRequestDispatcher("updatepersonal.jsp?msg="+msg);
         rd.forward(req,res);
          
		  // res.sendRedirect("./notupdateexuseredudet.jsp");
	  	
   
            
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
