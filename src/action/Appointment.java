/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author java1
 */
public class Appointment extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            Date dNow = new Date();
            SimpleDateFormat ft = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
            String reportDate = ft.format(dNow);
            String pname = request.getParameter("pname");
            System.out.println("Pname: " + pname);
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");
            String summ = request.getParameter("sum");
            String desc = request.getParameter("des");
            String dept = request.getParameter("department");
            String imp = request.getParameter("imp");
            String adate = reportDate;
            System.out.println("Date: " + adate);
            String status = "Pending";
            String clodate = "no";
            String solution="no";
            
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            String insertQuery = "insert into patients(name, age, gender, summ, des, dept, imp, adate, status, cdate, treatment) values('"+pname+"','"+age+"','"+gender+"','"+summ+"','"+desc+"','"+dept+"','"+imp+"','"+adate+"','"+status+"','"+clodate+"','"+solution+"')";

            int i = st.executeUpdate(insertQuery);

            RequestDispatcher rd = request.getRequestDispatcher("patient.jsp");
            if (i != 0) {
                //response.sendRedirect("index.jsp?msg=Registration_success");
                out.println("<font color=blue aglin=center>Appointment Successful!</font>");
            } else {
                //response.sendRedirect("index.jsp?msg=Register Error");
                out.println("<font color=red aglin=center>Appointment Failed! Please try it again!</font>");
            }
            rd.include(request, response);
        } catch (Exception e) {
            e.printStackTrace();
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
