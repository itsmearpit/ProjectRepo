<%-- 
    Document   : Reg
    Created on : 15 Mar, 2019, 1:15:52 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%!
String email;
public void jspInit()
{
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
     System.out.println("Driver Loaded");
    }
    catch (ClassNotFoundException e) {
      System.out.println(e.toString()); 
    }
}
boolean forgot(String userName)
{
    try {
      

      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
      System.out.println("got connection"); 

      Statement s = con.createStatement(); 
      String sql = "SELECT email FROM login " + 
        " WHERE email='" + userName + "'"; 
      ResultSet rs = s.executeQuery(sql); 
      if (rs.next()) {
        rs.close(); 
        s.close(); 
        con.close(); 
        return true; 
      } 
        rs.close(); 
        s.close(); 
        con.close(); 
    } 
     
    catch (SQLException e) {
      System.out.println(e.toString()); 
    } 
    catch (Exception e) {
      System.out.println(e.toString()); 
    } 
    return false;
} 

%>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>

    </head>
    <body>
        <%
        
        email=request.getParameter("email");
        if(forgot(email))
        {
            session.setAttribute("id",new String(email));
            response.sendRedirect("Forgot1.html");
        }
        else
        {%>
        <script>
            alert("Invalid email");
            window.location="Forgot.html";
        </script>
        <%}
        %>
        
    </body>
</html>
