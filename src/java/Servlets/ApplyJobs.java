/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
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
public class ApplyJobs extends HttpServlet {

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
        try {
            
            
            
             String msg="";
            String skill="";
            String jcode=request.getParameter("jcode");
            String cid=request.getParameter("cid");
            String jsid=request.getParameter("jsid");
            String ad=request.getParameter("ad");
            String exp=request.getParameter("exp");
             String exp1=request.getParameter("exp1");
            skill=request.getParameter("skill");
         int in=Integer.parseInt(request.getParameter("cn"));
        String eid=ses.getAttribute("uname").toString();
          String p=in==3?"jobsearchclientrep.jsp?clientid="+cid+"":in==2?"jobsearchrep.jsp?skill="+skill+"":"jobsearchexprep.jsp?exp="+exp1+"";
        
         ResultSet rs=Classess.CommonCode.runQuery("select * from applyjobs where JOBCODE='"+jcode+"' and CLIENTIDS='"+cid+"' and APPLYID='"+eid+"' and status='Pending'");
         if(rs.next())
         {
         msg=jsid+" !Sorry Your Already Applied To This Job....";
         RequestDispatcher rd=request.getRequestDispatcher(p+"&msg="+msg);
         rd.forward(request, response);
         return;
         }
         
         else
         {
         System.out.println("the class name is:"+p);
         Calendar c=Calendar.getInstance();
         int sd=c.get(Calendar.DATE);
         int sm=c.get(Calendar.MONTH);
         int sy=c.get(Calendar.YEAR);
         int i=0;
         String sdate=sd+"-"+sm+"-"+sy;   
        
         i=Classess.CommonCode.runQuery1("insert into applyjobs values('"+jsid+"','"+ad+"','"+jcode+"','"+sdate+"','"+cid+"','"+exp+"','Pending','Pending','Pending','Pending','Pending')");
         if(i==1)
         msg=jsid+" Your Job Details Successfully Sended To The "+cid+"....";   
         else
         msg="Sorry Try Again....";
         RequestDispatcher rd=request.getRequestDispatcher(p+"&msg="+msg);
         rd.forward(request, response);
             
            
          /* String mon[]={"JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC"};
           String d[]=ad.split("-");
           String dd=d[0];
           int id=Integer.parseInt(dd);
           String m=d[1];
           int im=1;
           String y=d[2];
           int iy=Integer.parseInt(y);
         Calendar c=Calendar.getInstance();
         int sd=c.get(Calendar.DATE);
         int sm=c.get(Calendar.MONTH);
         int sy=c.get(Calendar.YEAR);
         String cd=mon[sm]; 
         boolean b;
          System.out.println("iy is"+iy);
          System.out.println("im is"+im);
          System.out.println("id is"+id);
          System.out.println("sy is"+sy);
          System.out.println("sm is"+sm);
          System.out.println("sd is"+sd);
          
         b=(iy<=sy && im<=sm )?true:false;
         System.out.println("the b is"+b);
         System.out.println("sdflsd"+cd);
            */
        
         
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
