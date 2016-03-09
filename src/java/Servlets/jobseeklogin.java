/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
public class jobseeklogin extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         try
        { HttpSession ses=request.getSession();
           String uname=request.getParameter("uid");
           String pwd=request.getParameter("pass");
           String msg="";
           System.out.println("uname is"+uname+"pwd is"+pwd);
           if(uname.equals("") || pwd.equals(""))
           {   msg="Please Mention All Details";
               RequestDispatcher rd=request.getRequestDispatcher("login.jsp?status="+msg);
               rd.forward(request, response);
               return;
           }   
          else
           {
               
          int i=0;
         String target="login.jsp";
         System.out.println("haidsfds");
         i=Classess.CommonCode.loginChecking("EMPREG","USERID", uname,"PASS",pwd);
         System.out.println("the i value is"+i);
       
         if(i==1)
         {
         ses.setAttribute("uname",uname);
         target="exeuser1all.htm";
         }
         else
         target="login.jsp?status=!Sorry "+uname+" You Are Not A Valid User Please Try Again.....";
         RequestDispatcher rd=request.getRequestDispatcher(target);
         rd.forward(request, response);
               
           }
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
