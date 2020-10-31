<%-- 
    Document   : Reg
    Created on : 15 Mar, 2019, 1:15:52 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%!
String email,pwd,pwd1;
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
boolean forgot1(String userName,String password)
{
    try {
      

      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
      System.out.println("got connection"); 

      Statement s = con.createStatement(); 
      String sql = "UPDATE login SET pwd='" + password + "' WHERE email='" + userName + "'"; 
      int rs = s.executeUpdate(sql); 
      if (rs==1) {
        s.close(); 
        con.close(); 
        return true; 
      }  
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
        
        pwd=request.getParameter("password");
        pwd1=request.getParameter("re_password");
        if(pwd.equals(pwd1))
        {
            email=(String)session.getAttribute("id");
            if(forgot1(email,pwd))
            {%>
            <script>
                alert("Password Changed Successfully.");
                window.location="Forgot1.html";
            </script>
            <%}
            else
            {%>
            <script>
                alert("Oops An Error Occured.");
                window.location="Forgot1.html";
            </script>
            <%}
        }
        else
        {%> 
        <script>
            alert("Please Enter Same Password.");
            window.location="Forgot1.html";
        </script>
        <%}
        %>
    </body>
</html>
