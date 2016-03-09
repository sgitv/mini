/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import static Servlets.JobSeeker.city;
import static Servlets.JobSeeker.cobj;
import static Servlets.JobSeeker.country;
import static Servlets.JobSeeker.cphoff;
import static Servlets.JobSeeker.cphres;
import static Servlets.JobSeeker.fname;
import static Servlets.JobSeeker.gend;
import static Servlets.JobSeeker.lname;
import static Servlets.JobSeeker.mname;
import static Servlets.JobSeeker.mph;
import static Servlets.JobSeeker.offex;
import static Servlets.JobSeeker.pass;
import static Servlets.JobSeeker.passno;
import static Servlets.JobSeeker.pin;
import static Servlets.JobSeeker.pmadd;
import static Servlets.JobSeeker.psadd;
import static Servlets.JobSeeker.state;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author G5
 */
public class newuserpersonal extends HttpServlet {

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
 String pname=null,image=null;
        File f=null;      
String nid=req.getParameter("userid");
	 
  /* String pass=req.getParameter("pass");
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
	String pin=req.getParameter("pin");*/
   
   
   ResultSet rs=Classess.CommonCode.runQuery("select * from empreg where userid='"+nid+"'");
   if(rs.next())
	{
		out.println("<body color=#9999CC><center><br><br>Your UserId is existing .so Please try again");
		out.println("<br><br><a href='./newempreg.jsp'>ClickHere</a>");
	}
	else
	  {
    HttpSession ses=req.getSession();
    ses.setAttribute("uname",nid);
   String type=req.getParameter("type");          
   JobSeeker s=new JobSeeker();
   if(type.equals("submit"))
   {
       System.out.println("the type is"+type);
            JobSeeker sb1 =(JobSeeker)ses.getAttribute("user1");
            JobSeeker sb2 =(JobSeeker)ses.getAttribute("user2");
            JobSeeker sb3 =(JobSeeker)ses.getAttribute("user3");
            JobSeeker sb4 =(JobSeeker)ses.getAttribute("user4");
            JobSeeker sb5 =(JobSeeker)ses.getAttribute("user5");
 Connection con=Classess.DbConnect.oracleConnect();
 CallableStatement cs=con.prepareCall("{call jobseekerreg(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
 System.out.println(sb1.getUserid()+"userid in servlet");
 //first
  cs.setString(1,sb1.getUserid());
 cs.setString(2,sb1.getPass());
 cs.setString(3,sb1.getFname());
 cs.setString(4,sb1.getMname());
 cs.setString(5,sb1.getLname());
 cs.setString(6,sb1.getPsadd());
 cs.setString(7,sb1.getPmadd());
 cs.setString(8,sb1.getPin());
 cs.setString(9,sb1.getCity());
 cs.setString(10,sb1.getState());
 cs.setString(11,sb1.getCountry());
 cs.setString(12,sb1.getCphoff());
 cs.setString(13,sb1.getOffex());
 cs.setString(14,sb1.getCphres());
 cs.setString(15,sb1.getPassno());
  cs.setString(16,sb1.getCobj()); 
 cs.setString(17,sb1.getMph());
  cs.setString(18,sb1.getGend());
 


 //second
 cs.setString(19,sb2.getHqul());
 cs.setString(20,sb2.getPg());
 cs.setString(21,sb2.getPun());
 cs.setString(22,sb2.getPger());
 cs.setString(23,sb2.getGrad());
 cs.setString(24,sb2.getGun());
 cs.setString(25,sb2.getGper());
 cs.setString(26,sb2.getInter());
 cs.setString(27,sb2.getInterctno());
 cs.setString(28,sb2.getSsc());
 cs.setString(29,sb2.getSscctno());
 cs.setString(30,sb2.getOtherl());
 cs.setString(31,sb2.getOthercert());
 cs.setString(32,sb1.getUid());
 
 //third
 

 
 cs.setString(33,sb1.getUserid());
 cs.setString(34,sb3.getSkill1());
 cs.setString(35,sb3.getSkill2());
 cs.setString(36,sb3.getSkill3());
 cs.setString(37,sb3.getSkill4());
 cs.setString(38,sb3.getSkill5());
 cs.setString(39,sb3.getSkill6());
 cs.setString(40,sb3.getOthskill());
 cs.setString(41,sb3.getDescskill());
 cs.setString(42,sb3.getTotexp());
 
//fourth

 
 cs.setString(43,sb1.getUserid());
 cs.setString(44,sb3.getTotexp());
 cs.setString(45,sb4.getExpfiled());
 cs.setString(46,sb4.getPwcomp());
 cs.setString(47,sb4.getOnsit());
 cs.setString(48,sb4.getPfrom());
 cs.setString(49,sb4.getPto());
 cs.setString(50,sb4.getPrsal());
 cs.setString(51,sb4.getExpsal());
 cs.setString(52,sb4.getUrle());
 
 //fifth
 
         cs.setString(53,sb1.getUserid());
         cs.setString(54,sb5.getProjtit());
         cs.setString(55,sb5.getProjdesc());
         cs.setString(56,sb5.getUsedsill());
         cs.setString(57,sb5.getTeamsize());
         cs.setString(58,sb5.getProjenv());
         cs.setString(59,sb5.getProjroll());
         
//sixth
  
          ServletContext sc=getServletContext();
          String dir=sc.getRealPath("\\images\\");
          String dir1=dir.replace("\\build","");
          ArrayList al=new ArrayList();
          MultipartRequest mreq=new MultipartRequest(req,dir1,100*1024);
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
                   
         

         cs.setString(60,sb1.getUserid()); 
         cs.setString(61,"");
           if(ff==0)
           {
               cs.setObject(61,null);
           }
           else if(ff==1)
           {
               fi1=(FileInputStream)al.get(0);
               cs.setBinaryStream(61, fi1,fi1.available());
           } 
          String msg="";
       
          int i=cs.executeUpdate();
          if(i==1)
          {
              msg="Inserted Successfully";
          }
          else
          {
              msg="Sorry Try Again...";
          }
     RequestDispatcher rd=req.getRequestDispatcher("newempreg.jsp?msg="+msg);
     rd.forward(req, res);
   }
   
   
   
   if(type.equals("first"))
   {
   s.setUserid(req.getParameter("userid"));
   System.out.println("userid is"+req.getParameter("userid"));
   s.setPass(req.getParameter("pass"));
   System.out.println(req.getParameter("pass")+"sdfsd");
   s.setFname(req.getParameter("fname"));
   s.setMname(req.getParameter("mname"));
   s.setLname(req.getParameter("lname"));
   s.setGend(req.getParameter("gend"));
   s.setPmadd(req.getParameter("pmadd"));
   s.setPsadd(req.getParameter("psadd"));
   s.setCity(req.getParameter("city"));
   s.setState(req.getParameter("state"));
   s.setCountry(req.getParameter("country"));
   s.setCphoff(req.getParameter("cphoff"));
   s.setOffex(req.getParameter("offex"));
   s.setCphres(req.getParameter("cphres"));
   s.setMph(req.getParameter("mph"));
   s.setPassno(req.getParameter("passno"));
   s.setCobj(req.getParameter("cobj"));
   s.setPin(req.getParameter("pin"));
   ses.setAttribute("user1",s);
   RequestDispatcher rd=req.getRequestDispatcher("./sucesspersonaldetails.jsp");
   rd.forward(req, res);
   }
   if(type.equals("second"))
   {String uid=req.getParameter("uid");
       System.out.println(req.getParameter("uid")+"sdfsd1111");
       s.setHqul(req.getParameter("hqul"));
       s.setPg(req.getParameter("pg"));
       s.setGrad(req.getParameter("grad"));
       s.setInter(req.getParameter("inter"));
       s.setSsc(req.getParameter("ssc"));
       s.setInterctno(req.getParameter("interctno"));
       s.setSscctno(req.getParameter("sscctno"));
       s.setOtherl(req.getParameter("other1"));
       s.setOthercert(req.getParameter("othercert"));
       s.setUid(req.getParameter("uid"));
       s.setPun(req.getParameter("pun"));
       s.setGun(req.getParameter("gun"));
       s.setGper(req.getParameter("gper"));
       s.setPger(req.getParameter("pgper"));
        ses.setAttribute("user2",s);
    RequestDispatcher rd=req.getRequestDispatcher("sucesseducationaldetails1.jsp?uid="+uid);
   rd.forward(req, res);
   }
   if(type.equals("third"))
   {
       String uid=req.getParameter("uid");
       System.out.println("the third uid is"+uid);
       s.setTotexp(req.getParameter("totexp"));
       s.setSkill1(req.getParameter("skill1"));
       s.setSkill2(req.getParameter("skill2"));
       s.setSkill3(req.getParameter("skill3"));
       s.setSkill4(req.getParameter("skill4"));
       s.setSkill5(req.getParameter("skill5"));
       s.setSkill6(req.getParameter("skill6"));
       s.setOthskill(req.getParameter("othskill"));
       s.setDescskill(req.getParameter("descskill"));
      int totexp=Integer.parseInt(req.getParameter("totexp"));
      ses.setAttribute("uid",uid);
      ses.setAttribute("tot",totexp);
         ses.setAttribute("user3",s);
 RequestDispatcher rd=req.getRequestDispatcher("sucesseskills1.jsp?uid="+uid);
   rd.forward(req, res);
   }
   if(type.equals("fourth"))
   {
       String uid=req.getParameter("uid");
       String totexp=req.getParameter("totexp");
       
       s.setExpfiled(req.getParameter("expfield"));
       s.setOnsit(req.getParameter("onsit"));
       s.setPfrom(req.getParameter("pfrom"));
       s.setPrsal(req.getParameter("prsal"));
       s.setPwcomp(req.getParameter("pwcomp"));
       s.setUrle(req.getParameter("urle"));
       s.setExpsal(req.getParameter("expsal"));
       s.setPto(req.getParameter("pto"));
  
ses.setAttribute("user4",s);
 RequestDispatcher rd=req.getRequestDispatcher("sucessexp.jsp?uid="+uid);
   rd.forward(req, res);
   
   }
   if(type.equals("fifth"))
   {
   String uid=req.getParameter("uid");    
   s.setProjtit(req.getParameter("projtit"));
   s.setTeamsize(req.getParameter("teamsize"));
   s.setProjenv(req.getParameter("projenv"));
   s.setProjdesc(req.getParameter("projdesc"));
   s.setProjroll(req.getParameter("projroll"));
   s.setUsedsill(req.getParameter("usedsill"));
   ses.setAttribute("user5",s);
   RequestDispatcher rd=req.getRequestDispatcher("sucessproj.jsp?uid="+uid);
   rd.forward(req, res);
   }
 Connection con=Classess.DbConnect.oracleConnect();
   PreparedStatement ps=con.prepareStatement("INSERT INTO EMPREG VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	System.out.println("after html form reading values");
	ps.setString(1,nid);
    ps.setString(2,pass);
    ps.setString(3,fname);
    ps.setString(4,mname);
    ps.setString(5,lname);
	
    ps.setString(6,psadd);
    ps.setString(7,pmadd);
    ps.setString(8,pin);
    ps.setString(9,city);
    ps.setString(10,state);
    ps.setString(11,country);
    ps.setString(12,cphoff);
    ps.setString(13,offex);
    ps.setString(14,cphres);
    ps.setString(15,passno);
    ps.setString(16,cobj);
    ps.setString(17,mph);
    ps.setString(18,gend);


   
    int i=ps.executeUpdate();
	if(i==1)
    res.sendRedirect("./sucesspersonaldetails.jsp");
	else
	res.sendRedirect("./newempreg.htm");
	
	ps.close();
	
	con.close();
        
        
        
	  }
   
  }
  catch(Exception e)
  {
   e.printStackTrace();
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
