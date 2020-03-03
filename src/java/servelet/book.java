/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import hello.connect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author EBIN
 */
public class book extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet book</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet book at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            HttpSession session=request.getSession();
             String s=(String)session.getAttribute("username");
             String total=request.getParameter("amount");
             String days=request.getParameter("days");
             String date=request.getParameter("date");
             String driver=request.getParameter("driver");
             String guide=request.getParameter("guide");
             String account=request.getParameter("account");
             String sec=request.getParameter("sec");
             String slo=(String)session.getAttribute("slid");
             String ran=connect.getSaltString();
             String tocken=request.getParameter("tocken");
             int tot1=Integer.parseInt(total);
             int tock=Integer.parseInt(tocken);
             int bal=0;
             bal=tot1-tock;
             String sql="insert into payment(user_id,rent_id,amount,date,payed,balance,number)values('"+s+"','"+slo+"','"+total+"',curdate(),'"+tocken+"','"+bal+"','"+ran+"')";
             int i=connect.insertData(sql);
             if(i==1)
             {
                 String sql1="insert into booking(vid,uid,booking_date,booked_date,number,driver,guide,status,days)values('"+slo+"','"+s+"',curdate(),'"+date+"','"+ran+"','"+driver+"','"+guide+"','1','"+days+"')";
                 int j=connect.insertData(sql1);
                 if(j==1)
                 {
                     response.sendRedirect("login/success.jsp?id="+ran);
                 }
             }
                     
            // String sql="insert into "
             
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
