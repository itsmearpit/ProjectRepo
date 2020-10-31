<%-- 
    Document   : Reg
    Created on : 15 Mar, 2019, 1:15:52 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%!
String name,email,password,uid;
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
boolean reg(String name,String userName, String password)
{
    try {
      

      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
      System.out.println("got connection"); 

      Statement s = con.createStatement(); 
      uid="SELECT count(ID) from login";
      ResultSet r=s.executeQuery(uid);
      String Countrow="";
      while(r.next()){
      Countrow = r.getString(1);
      System.out.println("Total Row :" +Countrow);
      }
      uid="BS19"+Countrow;
      String sql = "INSERT INTO login values('"+uid+"','"+userName+"','"+ name +"','"+ password +"')"; 
      int rs = s.executeUpdate(sql); 
      if (rs==1) {
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
        
        name=request.getParameter("full_name");
        email=request.getParameter("email");
        password=request.getParameter("password");

        if(reg(name,email,password))
        {
            session.setAttribute("id",email);
        %>
        <script type="text/javascript">
            alert("Registration Successful.");
            window.location="Welcome.jsp";
        </script>
        <%}
        else
        {%> 
        <script type="text/javascript">
            alert("Registration Not Successful.");
            window.location="Home.jsp";
        </script>
        <%}
        %>
    </body>
</html>
