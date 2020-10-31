<%-- 
    Document   : upldmnl2
    Created on : 8 May, 2019, 9:18:32 AM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%! 
String testid,ques,OpA,OpB,OpC,OpD,COp,Sec;
int qid,noq;
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
    qid=Integer.parseInt(request.getParameter("quesid"));
    ques=request.getParameter("Ques");
    OpA=request.getParameter("OpA");
    OpB=request.getParameter("OpB");
    OpC=request.getParameter("OpC");
    OpD=request.getParameter("OpD");
    COp=request.getParameter("COp");
    Sec=request.getParameter("Sec");
    
    try 
    {

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
        System.out.println("got connection"); 

        Statement s = con.createStatement();
        
        String sq = "SELECT QSecA,QSecB,QSecC from test where TestID='"+testid+"';";
        ResultSet r1 = s.executeQuery(sq);
        if(r1.next())
        {
            noq=(Integer.parseInt(r1.getString(1))+Integer.parseInt(r1.getString(2))+Integer.parseInt(r1.getString(3)));
        }
        
        String sql = "INSERT INTO quiz VALUES('"+testid+"',"+qid+",'"+ques+"','"+OpA+"','"+OpB+"','"+OpC+"','"+OpD+"','"+COp+"','"+Sec+"');";
        int rs = s.executeUpdate(sql);

        if(rs==1)
        {
            System.out.println("Inserted...");
        %>    
        <script>
            alert("Question Uploaded Successfully!");
            window.location = "Admin.jsp?flg=6&tid=<%=testid%>";
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
