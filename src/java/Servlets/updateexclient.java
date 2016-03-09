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
public class updateexclient extends HttpServlet {

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
        try
        {
             HttpSession ses=req.getSession(true); 
	   String cid=req.getParameter("cid");
	  
	  String cid2=req.getParameter("cid2");
   String cadd=req.getParameter("cadd");
   String city=req.getParameter("city");
   String state=req.getParameter("state");
      String nation=req.getParameter("nation");
String nofb=req.getParameter("nofb");
      String ctype=req.getParameter("ctype");

   String cph=req.getParameter("cph");
   String ext=req.getParameter("ext");
   String cdesc=req.getParameter("cdesc");
   String contper=req.getParameter("contper");
   
   String wwwt=req.getParameter("wwwt");
   String pass=req.getParameter("pass");
   
  
  ResultSet  rs=Classess.CommonCode.runQuery("SELECT * FROM CLIENT WHERE CLIENTID='"+cid+"'");

 int i=0;
 String msg="";
	   if(rs.next())
	  {// updations
	
	  System.out.println("before update command");
          i=Classess.CommonCode.runQuery1("UPDATE CLIENT SET CLNAME='"+cid2+"',ADDRESS='"+cadd+"',CITY='"+city+"',STATE='"+state+"',NATION='"+nation+"',NOOFBRANCH='"+nofb+"',CLTYPE='"+ctype+"',CONTPHNO='"+cph+"',EXT='"+ext+"',COMDESC='"+cdesc+"',CTPERSON='"+contper+"',WEBSITE='"+wwwt+"',PASS='"+pass+"' WHERE CLIENTID='"+cid+"'");
	  }
          if(i==1)
          msg="Updated Successfully....";
          else
          msg="Sorry Try Again.....";
          RequestDispatcher rd=req.getRequestDispatcher("exclientmodi.jsp?msg="+msg);
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
