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
public class UpdateEducationDet extends HttpServlet {

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
            
            
	  String hqul=req.getParameter("hqul");
   String pg=req.getParameter("pg");
   String grad=req.getParameter("grad");
   String inter=req.getParameter("inter");
      String ssc=req.getParameter("ssc");
String interctno=req.getParameter("interctno");
      String sscctno=req.getParameter("sscctno");

   String other1=req.getParameter("other1");
   String othercert=req.getParameter("othercert");
   String uid=req.getParameter("uid");
 ses.setAttribute("uid1",uid);

String pun=req.getParameter("pun");
   String gun=req.getParameter("gun");
   String gper=req.getParameter("gper");
      String pgper=req.getParameter("pgper");
   
   
       ResultSet rs=Classess.CommonCode.runQuery("SELECT * FROM EDUCATION WHERE USERID='"+uid+"'");
	   System.out.println("after select query in modieducation details");
System.out.println("this is session id"+uid);
System.out.println(" this is reuest from html"+uid);
int i=0;
String msg="";
	   if(rs.next())
	  {// updations
	   System.out.println(uid);
	   System.out.println("before update command");
          i=Classess.CommonCode.runQuery1("UPDATE EDUCATION SET QUL='"+hqul+"',POSTG='"+pg+"',PUN='"+pun+"',PPER='"+pgper+"',GRADU='"+grad+"',GUN='"+gun+"',GPER='"+gper+"',INTER='"+inter+"',INTERCERTNO='"+interctno+"',SSC='"+ssc+"',SSCCERTNO='"+sscctno+"',OTHERQUL='"+other1+"',OTHERCERT='"+othercert+"' WHERE USERID='"+uid+"'"); 
	  if(i==1)
              msg=uid+" Your Education Details Updated Successfully.... ";
          else
           msg="! Sorry "+uid+" Education Details Not Updated Successfully";
          }
          RequestDispatcher rd=req.getRequestDispatcher("modiempeducation.jsp?msg="+msg);
          rd.forward(req, res);
            
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
