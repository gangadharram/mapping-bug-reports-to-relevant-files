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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author java1
 */
public class bugreport extends HttpServlet {

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
            String sum = request.getParameter("sum").toUpperCase();
            System.out.println("nmae:" + sum);
            String des = request.getParameter("des");
            String product = request.getParameter("product").toUpperCase();
            System.out.println("date" + product);
            String platform = request.getParameter("platform");
            String imp = request.getParameter("imp");
            String comp = request.getParameter("comp").toUpperCase();
            String bugid = request.getParameter("bugid");
            String adate=reportDate;
            String finalstatus = "notrectified";
            String develop = "nodev";
            String clo = "no";
            String soluction="no";
            
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            String insertQuery = "insert into bug(summary, description, product, platform, importance,comp,bugid,adate,finalstatus,develop,cdate,soluction) values('" + sum + "','" + des + "','" + product + "','" + platform + "','" + imp + "','"+comp+"','"+bugid+"','"+adate+"','"+finalstatus+"','"+develop+"','"+clo+"','"+soluction+"')";

            int i = st.executeUpdate(insertQuery);

            if (i != 0) {
                response.sendRedirect("thome.jsp?msg=Registration_success");
            } else {
                response.sendRedirect("affix.jsp?msg=Register Error");
            }
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
