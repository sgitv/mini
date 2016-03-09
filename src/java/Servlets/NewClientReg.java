/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
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
public class NewClientReg extends HttpServlet {

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
            boolean sta=false;
          HttpSession ses=req.getSession();
          
   String cid=req.getParameter("cid");
    ses.setAttribute("cid1",cid);
   ResultSet rs=Classess.CommonCode.runQuery("select * from CLIENT where CLIENTID='"+cid+"'");
   if(rs.next())
	{
 RequestDispatcher rd=req.getRequestDispatcher("newclientregapplication12.jsp?status="+cid+" Your Already Register Please Login With Your Details....");
   rd.forward(req, res);
	}
   else
   {
    
   String cname=req.getParameter("cname");
   String cadd=req.getParameter("cadd");
   String ccity=req.getParameter("ccity");
   String cstate=req.getParameter("cstate");
   String cnation=req.getParameter("cnation");
   String cnb=req.getParameter("cnb");
   String ctype=req.getParameter("ctype");
//***************************************
   String ctphno=req.getParameter("ctphno");
   String ext=req.getParameter("ext");
   String cdesc=req.getParameter("cdesc");
   String ctper=req.getParameter("ctper");
   String www1=req.getParameter("www1");
   String pass=req.getParameter("pass"); 
   Connection con=Classess.DbConnect.oracleConnect();
   CallableStatement ps=con.prepareCall("call ClientReg(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
   ps.setString(1,cid);
   ps.setString(2,cname);
   ps.setString(3,cadd);
   ps.setString(4,ccity);
   ps.setString(5,cstate);
   ps.setString(6,cnation);
   ps.setString(7,cnb);
   ps.setString(8,ctype);
   ps.setString(9,ctphno);
   ps.setString(10,ext);
   ps.setString(11,cdesc);
   ps.setString(12,ctper);
   ps.setString(13,www1);
   ps.setString(14,pass);
   ps.setString(15,cid);
   ps.setString(16,pass);

   String status="";
   sta=ps.execute();
   con.commit();

   if(!sta)
   status=cid+"Your Register Successfully Login With Your Details......";
   else
   status="!Sorry "+cid+" Not Register Try Again.......";    
   RequestDispatcher rd=req.getRequestDispatcher("newclientregapplication12.jsp?status="+status);
   rd.forward(req, res);
         
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
