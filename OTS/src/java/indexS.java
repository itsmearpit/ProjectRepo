/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author Bhavesh
 */
public class indexS extends HttpServlet {
String uname,pwd,gen;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

  boolean login(String userName, String password) {
    try {
      Class.forName("com.mysql.jdbc.Driver"); 
      Connection con = 
        DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
      System.out.println("got connection"); 

      Statement s = con.createStatement(); 
      String sql = "INSERT INTO login values('"+ userName +"','"+ password +"')"; 
      s.executeUpdate(sql); 
            System.out.println("<HTML>"); 
            System.out.println("<HEAD>"); 
            System.out.println("<TITLE>"); 
            System.out.println("ServletResponse"); 
            System.out.println("</TITLE>"); 
            System.out.println("</HEAD>"); 
            System.out.println("<BODY>"); 
            System.out.println("<BR>"); 
            System.out.println(password); 
            System.out.println("</BODY>"); 
            System.out.println("</HTML>"); 

      s.close(); 
        con.close(); 
        return true;

    } 
    catch (ClassNotFoundException e) {
      System.out.println(e.toString()); 
    } 
    catch (SQLException e) {
      System.out.println(e.toString()); 
    } 
    catch (Exception e) {
      System.out.println(e.toString()); 
    } 
    return false; 
  } 

    
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        uname=request.getParameter("username");
        pwd=request.getParameter("password");
        gen=request.getParameter("gender");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            if(login(uname,pwd))
            {
                response.sendRedirect("MoreTests.html");
            }
            else
            {
                response.sendRedirect("index.html");
        }}
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
    