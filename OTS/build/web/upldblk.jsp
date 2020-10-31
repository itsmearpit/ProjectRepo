<%-- 
    Document   : upldblk
    Created on : 13 May, 2019, 6:31:46 AM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>


<%!
String testid,sub;
File file;
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
    file=new File(request.getParameter("muliplefileupload"));
    System.out.println("File="+file.getAbsolutePath()+file.getPath()+file.getParent());
    String add=file.getPath();
    System.out.println("File="+add);
    
    testid=request.getParameter("tid");
    
    try 
    {

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
        System.out.println("got connection"); 

        Statement s = con.createStatement();
        String sql="load data infile 'C:/Users/Awesome/Desktop/"+add+"' into table quiz fields terminated by ',' lines terminated by '\n' (QuesID,Ques,OpA,OpB,OpC,OpD,C_Op,Sec);";
        int rs = s.executeUpdate(sql);

        if(rs==1)
        {
                  System.out.println("Inserted...");
        }       
        
        String s1="update quiz set TestID='"+testid+"' where TestID is NULL;";
        int r2 = s.executeUpdate(s1);

        if(r2==1)
        {
                  System.out.println("TestID Inserted...");
        %>
        <script>
            alert("Sheet Uploaded Successfully!");
            window.location = "Admin.jsp?flg=0";
        </script>    
        <%
        }
        else
        {%>
        <script>
            alert("Sheet can't be Uploaded Successfully!");
            window.location = "Admin.jsp?flg=0";
        </script>                
        <%}

    }
    catch (SQLException e) {
              System.out.println(e.toString()); 
    } 
    catch (Exception e) {
              System.out.println(e.toString()); 
    }
%>
<h2>JSP Page</h2>
    </body>
</html>
