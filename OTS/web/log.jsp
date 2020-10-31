<%-- 
    Document   : log
    Created on : 24 Apr, 2019, 7:34:20 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%!
String email="null",password;
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
boolean login(String userName, String password) {
    try {
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
      System.out.println("got connection"); 

      Statement s = con.createStatement(); 
      String sql = "SELECT ID FROM login " + 
        " WHERE email='" + userName + "'" + 
        " AND pwd='" + password + "'"; 
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

                email=request.getParameter("username");
                password=request.getParameter("password");
                if(email.equals("admin@gmail.com") && password.equals("admin"))
                {
                    response.sendRedirect("Admin.jsp?flg=0");
                }
                else if(login(email,password))
                {
                    session.setAttribute("id",new String(email));
                %>
                <script type="text/javascript">
                    alert("Login Successful.");
                    window.location="Welcome.jsp";
                </script>
                <%
                }
                else
                {
                %>
                <script type="text/javascript">
                    alert("Login Unsuccessful.");
                    window.location="login.jsp";
                </script>                    
                <%
                }

        %>
    </body>
</html>
