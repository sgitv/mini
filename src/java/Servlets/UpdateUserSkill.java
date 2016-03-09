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
public class UpdateUserSkill extends HttpServlet {

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
             HttpSession ses=req.getSession(); 
	   String uid=req.getParameter("uid");
	   ses.setAttribute("uid1",uid);
	  String totexp=req.getParameter("totexp");
   String skill1=req.getParameter("skill1");
   String skill2=req.getParameter("skill2");
   String skill3=req.getParameter("skill3");
      String skill4=req.getParameter("skill4");
String skill5=req.getParameter("skill5");
      String skill6=req.getParameter("skill6");

   String othskill=req.getParameter("othskill");
   String descskill=req.getParameter("descskill");
   
 ResultSet rs=Classess.CommonCode.runQuery("SELECT * FROM SKILLS WHERE USERID='"+uid+"'");
	   System.out.println("after select query in modiSKILLS details");
System.out.println("this is session id"+uid);
System.out.println(" this is reuest from html"+uid);
int i=0;
String msg="";
	   if(rs.next())
	  {// updations
	   System.out.println(uid);
	   System.out.println("before update command");
       i=Classess.CommonCode.runQuery1("UPDATE SKILLS SET SKILL1='"+skill1+"',SKILL2='"+skill2+"',SKILL3='"+skill3+"',SKILL4='"+skill4+"',SKILL5='"+skill5+"',SKILL6='"+skill6+"',OTHERS='"+othskill+"',DESCOFSKILLS='"+descskill+"',TOTEXP='"+totexp+"' WHERE USERID='"+uid+"'");
       if(i==1)
        msg=uid+" Your Skills Are Updated Successfully...... ";
        else
         msg="!Sorry "+uid+" Your Skills Are Not Updated Successully.....";
	   // res.sendRedirect("./updateexuserskills.jsp");
	  }
	 // else
	  //{
	//	   res.sendRedirect("./notupdateexuserskills.jsp");
	  //}
       RequestDispatcher rd=req.getRequestDispatcher("updateuserskills1.jsp?msg="+msg);
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
