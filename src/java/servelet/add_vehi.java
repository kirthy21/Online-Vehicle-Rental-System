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
public class add_vehi extends HttpServlet {

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
              MultipartRequest mr=new MultipartRequest(request,"C:\\Users\\online\\Desktop\\cars_1_1\\web\\images");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet add_vehi</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet add_vehi at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             String a=mr.getParameter("type");
            String b=mr.getParameter("cat");
             String c=mr.getParameter("vname");
              String d=mr.getParameter("model");
              String g=mr.getParameter("colour");
               String f=mr.getParameter("mileage");
                 String pay=mr.getParameter("payment");
              String e = mr.getOriginalFileName("img");
               
                  String sql="insert into vehicle_list(vehicletype,vehiclename,model,category,mileage,img,colour,payment)values('"+a+"','"+c+"','"+d+"','"+b+"','"+f+"','"+e+"','"+g+"','"+pay+"')";
                 
    
        int i1=connect.insertData(sql); 
        if(i1==1)
        {
           out.println("<script>alert('successfully added')</script>");
           out.println("<script>window.location='addvehiclet.jsp'</script>");
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
