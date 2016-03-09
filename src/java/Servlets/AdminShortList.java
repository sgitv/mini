/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Calendar;
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
public class AdminShortList extends HttpServlet {

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
        HttpSession ses=request.getSession();
        try 
        {
        String msg="";
        String id=request.getParameter("aid");
        String jcode=request.getParameter("jcode");
        String type=request.getParameter("type");
        Calendar c=Calendar.getInstance();
         int sd=c.get(Calendar.DATE);
         int sm=c.get(Calendar.MONTH);
         int sy=c.get(Calendar.YEAR);
   
         String sdate=sd+"-"+sm+"-"+sy;   
        
        if(type.equals("admin")) 
         {
      ResultSet rs=Classess.CommonCode.runQuery("select * from APPLYJOBS where STATUS='Completed' and APPLYID='"+id+"' and JOBCODE='"+jcode+"'");    
         
          if(rs.next())
        {
        msg="!Sorry "+ ses.getAttribute("prov")+" Your Already Sended To The Client..............";
        RequestDispatcher rd=request.getRequestDispatcher("AdminShortList.jsp?msg="+msg);
        rd.forward(request, response);   
        return;
        }
          else
          {
            
            
        int i=0;
        
        i=Classess.CommonCode.runQuery1("update APPLYJOBS set status='Completed',DATE3='"+sdate+"' where APPLYID='"+id+"' and JOBCODE='"+jcode+"'");
        if(i==1)
        msg=" Dear "+ ses.getAttribute("prov")+" Successfully Sended To The Client";
        else
        msg="!Sorry "+ ses.getAttribute("prov")+" Please Try Again..............";
        RequestDispatcher rd=request.getRequestDispatcher("AdminShortList.jsp?msg="+msg);
        rd.forward(request, response);
        
         }
         }
        if(type.equals("Client"))
        {
            String jsid=request.getParameter("jsid");
            String jc=request.getParameter("jcode");
            String res=request.getParameter("my");
            String cname=request.getParameter("cname");
            String dt=request.getParameter("dat");
            String vd=request.getParameter("vd");
            String address=cname+";"+dt+";"+vd;
         int i=0;
        System.out.println("select * from APPLYJOBS where  APPLYID='"+jsid+"' and JOBCODE='"+jc+"' and CLIENTIDS='"+ses.getAttribute("userid").toString()+"' and cview!='Pending'") ;
        ResultSet rs=Classess.CommonCode.runQuery("select * from APPLYJOBS where  APPLYID='"+jsid+"' and JOBCODE='"+jc+"' and CLIENTIDS='"+ses.getAttribute("userid").toString()+"' and cview!='Pending' ");    
         
          if(rs.next())
        {
        msg="!Sorry  Your Already Sended To "+jsid+".............";
        RequestDispatcher rd=request.getRequestDispatcher("ShortList.jsp?msg="+msg);
        rd.forward(request, response);   
        return;
        }
          else
          {
        i=Classess.CommonCode.runQuery1("update APPLYJOBS set CVIEW='"+res+"',DATE4='"+sdate+"',VENUEDETAILS='"+address+"' where APPLYID='"+jsid+"' and JOBCODE='"+jc+"'");
        if(i==1)
        msg="Successfully Sended To The "+jsid+" ";
        else
        msg="!Sorry  Please Try Again..............";
        RequestDispatcher rd=request.getRequestDispatcher("ShortList.jsp?msg="+msg);
        rd.forward(request, response);
          }    
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
