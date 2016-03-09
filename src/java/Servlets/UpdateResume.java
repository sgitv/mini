/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author G5
 */
public class UpdateResume extends HttpServlet {

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
        String pname="",image="";
          File f=null;      
        try 
        {
         
          ServletContext sc=getServletContext();
          String dir=sc.getRealPath("\\images\\");
          String dir1=dir.replace("\\build","");
          ArrayList al=new ArrayList();
          MultipartRequest mreq=new MultipartRequest(request,dir1,100*1024);
          Enumeration files=mreq.getFileNames();
            int ff=0;
           while(files.hasMoreElements())
           {
               pname=files.nextElement().toString();
               if(pname.equals("id"))
               {
                   pname=null;
               }
               if(pname!=null)
               {   ff=1;
                   image=mreq.getFilesystemName(pname);
                   System.out.println("the image name is"+image);
                   dir1+="\\"+image;
                   f=new File(dir1.trim());
                   System.out.println("the file is"+f);
                   FileInputStream fis=new FileInputStream(f);
                   al.add(fis);
               }
               
           }
       FileInputStream fi1=null;    
                   
     Connection con=Classess.DbConnect.oracleConnect();   
     PreparedStatement cs=con.prepareStatement("update resume set resume=? where userid='"+request.getParameter("uid")+"'");
         cs.setString(1,"");
           if(ff==0)
           {
               cs.setObject(1,null);
           }
           else if(ff==1)
           {
               fi1=(FileInputStream)al.get(0);
               cs.setBinaryStream(1, fi1,fi1.available());
           } 
          String msg="";
       
          int i=cs.executeUpdate();
          if(i==1)
          {
              msg=request.getParameter("uid")+" Your Resume Updated Successfully.....";
          }
          else
          {
              msg="Sorry"+request.getParameter("uid")+" Not Updated Try Again...";
          }
     RequestDispatcher rd=request.getRequestDispatcher("UpdateResume.jsp?msg="+msg);
     rd.forward(request, response);
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
