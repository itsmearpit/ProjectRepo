<%-- 
    Document   : dlttst
    Created on : 12 May, 2019, 11:24:00 AM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%!
String testid;
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

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%

    testid=request.getParameter("TID");
    
    try 
    {

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
        System.out.println("got connection"); 

        Statement s = con.createStatement();
                
        String sql = "delete from quiz where TestID='"+testid+"';";
        int rs = s.executeUpdate(sql);

        System.out.println("value of rs="+rs);
        
        String sq = "delete from test where TestID='"+testid+"';";
        int r = s.executeUpdate(sq);
        
        System.out.println("value of r=..."+r);
        
        if(r==1)
        {
            System.out.println("Deleted...");
        %>    
        <script>
            alert("Test Deleted Successfully!");
            window.location = "Admin.jsp?flg=0";
        </script>    
        <%
        }
        else
        {
        }

    }
    catch (SQLException e) {
        System.out.println(e.toString()); 
    } 
    catch (Exception e) {
        System.out.println(e.toString()); 
    }

%>
    </body>
</html>
