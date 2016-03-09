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

/**
 *
 * @author G5
 */
public class UpdateUserProj extends HttpServlet {

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
        try {
          
   String uid=req.getParameter("uid");
   String projtit=req.getParameter("projtit");
   String teamsize=req.getParameter("teamsize");
   String projenv=req.getParameter("projenv");
   String projdesc=req.getParameter("projdesc");
   String projroll=req.getParameter("projroll");
   String usedsill=req.getParameter("usedsill");
   ResultSet rs=Classess.CommonCode.runQuery("SELECT * FROM PROJECTS WHERE USERID='"+uid+"'");
   System.out.println("after select query in modi PROJECTS details");
   System.out.println("this is session id"+uid);
   System.out.println(" this is reuest from html"+uid);
   int i=0;
   String msg="";
   if(rs.next())
   {// updations
	   System.out.println(uid);
	   System.out.println("before update command");
	   i=Classess.CommonCode.runQuery1("UPDATE PROJECTS SET PROJTITLE='"+projtit+"',PROJDESC='"+projdesc+"',USEDSKILLS='"+usedsill+"',TEAMSIZE='"+teamsize+"',ENVRN='"+projenv+"',ROLLS='"+projroll+"' where USERID='"+uid+"'");
  }
   if(i==1)
    msg=uid+" Your Project Details Updated Successfully.... ";   
   else
   msg="!Sorry "+uid+" Your Project Details Not Updated.... ";
   RequestDispatcher rd=req.getRequestDispatcher("updateuserproject.jsp?msg="+msg);
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
