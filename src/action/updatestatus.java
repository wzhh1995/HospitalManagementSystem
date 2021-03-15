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
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java1
 */
public class updatestatus extends HttpServlet {

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
        try{
            
            HttpSession ses = request.getSession(true);
            String user = ses.getAttribute("UID").toString();
            
            /* TODO output your page here. You may use following sample code.*/
            String id = request.getParameter("id");
            String sts = request.getParameter("status");
            String sum = request.getParameter("sum");
            String solution = request.getParameter("solution");
                       
            Calendar cal = Calendar.getInstance();
		    SimpleDateFormat format = new SimpleDateFormat("HH:mm MM/dd/yyyy");
		    String report= format.format(cal.getTime());
            HttpSession sess = request.getSession();
            String doctor = ses.getAttribute("unames").toString();

            String sql = "update patients set status ='"+sts+"',doctor ='"+ doctor +"',cdate='"+report+"',treatment='"+solution+"' where id = '"+id+"'";
            String sql1 = "update hist set status ='"+sts+"',cdate='"+report+"' where id = '"+id+"'";
            //String sql1 = "insert into hist (id, doctor, status, summ) values ('"+id+"','"+user+"','"+sts+"','"+sum+"')";
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            int i = st.executeUpdate(sql);
            int i1 = st1.executeUpdate(sql1);
            if(i!= 0 && i1 != 0){
                response.sendRedirect("PatientsInbox.jsp?Status_Updated");
            }else{
                response.sendRedirect("PatientsInbox.jsp?Try_Again");
            }
        }
        catch(Exception e){
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
