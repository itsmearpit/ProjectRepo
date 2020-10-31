<%-- 
    Document   : upldmnl
    Created on : 7 May, 2019, 8:47:20 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%! 
String testid,sub,testname;
int QNoA,QNoB,QNoC,TimeA,TimeB,TimeC;
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
        
    </head>
    <body>
<%

    sub=request.getParameter("subject");
    testname=request.getParameter("TName");
    QNoA=Integer.parseInt(request.getParameter("QNoA"));
    QNoB=Integer.parseInt(request.getParameter("QNoB"));
    QNoC=Integer.parseInt(request.getParameter("QNoC"));
    TimeA=Integer.parseInt(request.getParameter("timeA"));
    TimeB=Integer.parseInt(request.getParameter("timeB"));
    TimeC=Integer.parseInt(request.getParameter("timeC"));
    
    if(sub.equals("C"))
        testid="C00";
    else if(sub.equals("DS"))
        testid="DS00";
    else if(sub.equals("DBMS"))
        testid="DB00";
    else if(sub.equals("OS"))
        testid="OS00";
    else if(sub.equals("AP"))
        testid="AP00";
    try
    {

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
        System.out.println("got connection"); 

        Statement s = con.createStatement();
        
        String sq = "SELECT count(TestID) from test where Sub='"+sub+"'";
        ResultSet r1=s.executeQuery(sq);
        if(r1.next())
        {
            testid=testid + r1.getString(1);
        }
        
        String sql = "INSERT INTO test VALUES('"+testid+"','"+testname+"','"+sub+"',"+QNoA+","+QNoB+","+QNoC+","+TimeA+","+TimeB+","+TimeC+");";
        int rs = s.executeUpdate(sql);

        if(rs==1)
        {%>
        <script>
            alert("Test Created Successfully!");
            window.location = "Admin.jsp?flg=0";
        </script>
        <%}
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
