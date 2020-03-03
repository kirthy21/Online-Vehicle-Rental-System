/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import com.oreilly.servlet.MultipartRequest;
import hello.connect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Anil
 */
public class reg extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
         MultipartRequest mr=new MultipartRequest(request,"C:\\Users\\online\\Desktop\\cars_1_1\\web\\images",21153209);
           //MultipartRequest mr=new MultipartRequest(request,"C:\\Users\\EBIN\\Desktop\\tt\\cars_1_1\\web\\images");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet reg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet reg at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             String a=mr.getParameter("name");
            String b=mr.getParameter("address");
                    
             String c=mr.getParameter("age");
              String d=mr.getParameter("gender");
               String e=mr.getParameter("phn");
                String f=mr.getParameter("email");
                String g=mr.getParameter("username");
                String h=mr.getParameter("pass");
                String i=mr.getParameter("license");
                 String j=mr.getOriginalFileName("id");
            
            String sql="insert into registration(username,name,address,phno,gender,age,email_id,id_proof,license_no)values('"+g+"','"+a+"','"+b+"','"+e+"','"+d+"','"+c+"','"+f+"','"+j+"','"+i+"')";
            int i1=connect.insertData(sql);
            if(i1==1)
            {
                String sql1="insert into login(username,password,role)values('"+g+"','"+h+"','user')";
                int j1=connect.insertData(sql1);
                response.sendRedirect("login/index.jsp");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
