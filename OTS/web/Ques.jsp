<%-- 
    Document   : Ques
    Created on : 14 Apr, 2019, 2:24:12 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%! 
String email="null",ques,OpA,OpB,OpC,OpD,C_Op,testid,opt,sec,name;
String Ques,SOp,COp;
int i,flg,QID,right=0,wrong=0,attmpt=0,unattmpt=0,noq,min,second;
float perc;
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
    flg=Integer.parseInt(request.getParameter("flag"));
    System.out.println("Flag="+flg);
    
    if(flg==0)
    {
        min=Integer.parseInt(request.getParameter("min"));
        second=Integer.parseInt(request.getParameter("second"));
        
        opt=request.getParameter("op");
        if(opt==null)
        {
            System.out.println("Not insert");
        }
        else
        {
            try 
            {

              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
              System.out.println("got connection"); 

              Statement s = con.createStatement();
              String sql = "INSERT INTO result VALUES('"+testid+"','"+email+"',"+i+",'"+ques+"','"+opt+"','"+C_Op+"','"+sec+"');";
              int rs = s.executeUpdate(sql);

              if(rs==1)
              {
                  System.out.println("Inserted...");
              }

            }
            catch (SQLException e) {
              System.out.println(e.toString()); 
            } 
            catch (Exception e) {
              System.out.println(e.toString()); 
            }
        }

            email=(String)session.getAttribute("id"); 
            System.out.println("rastogi\t"+email);
            System.out.println("This is from ques:"+email);
            testid=request.getParameter("tid");
            System.out.println("testid yhn hai:"+testid);
            i=Integer.parseInt(request.getParameter("qid"));
            System.out.println("i ki value:"+i);

        try 
        {

          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
          System.out.println("got connection"); 

          Statement s = con.createStatement();

          
          String sql = "SELECT Ques,OpA,OpB,OpC,OpD,C_Op,Sec from quiz WHERE TestID='"+testid+"' AND QuesID="+i+";";
          ResultSet rs = s.executeQuery(sql);

          if (rs.next()) 
          {
            session.setAttribute("ques",rs.getString(1));
            ques=rs.getString(1);
            session.setAttribute("OpA",rs.getString(2));
            session.setAttribute("OpB",rs.getString(3));
            session.setAttribute("OpC",rs.getString(4));
            session.setAttribute("OpD",rs.getString(5));
            C_Op=rs.getString(6);
            sec=rs.getString(7);
            session.setAttribute("COp",C_Op);
            session.setAttribute("sect",sec);
            session.setAttribute("qid",i);
            session.setAttribute("tid",testid);
            session.setAttribute("id",email);
            response.sendRedirect("Test.jsp?min="+min+"&second="+second+"");
            rs.close(); 
            s.close(); 
            con.close(); 
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
    }
    else
    {
        email=(String)session.getAttribute("id");
        testid=request.getParameter("tid");
        
        try 
        {

          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
          System.out.println("got connection"); 

          Statement s = con.createStatement();
          
          String s3 = "SELECT name from login WHERE email='"+email+"';";
          ResultSet r3 = s.executeQuery(s3);          
          if(r3.next())
          {
              name=r3.getString(1);
          }          
          
          String s2 = "SELECT QSecA,QSecB,QSecC from test WHERE TestID='"+testid+"';";
          ResultSet r2 = s.executeQuery(s2);          
          if(r2.next())
          {
              noq=(Integer.parseInt(r2.getString(1))+Integer.parseInt(r2.getString(2))+Integer.parseInt(r2.getString(3)));
          }
          
          String s1 = "SELECT count(UID) FROM result WHERE TestID='"+testid+"' AND UID='"+email+"';";
          ResultSet r1 = s.executeQuery(s1);
          if(r1.next())
          {
              attmpt+=Integer.parseInt(r1.getString(1));
              unattmpt=noq-attmpt;
          }
          
          String sql = "SELECT QuesID,Ques,S_Op,C_Op from result WHERE TestID='"+testid+"' AND UID='"+email+"';";
          ResultSet rs = s.executeQuery(sql);

          for(int j=0;j<noq;j++)
          {
            if (rs.next()) 
            {
                QID=Integer.parseInt(rs.getString(1));
                Ques=rs.getString(2);
                SOp=rs.getString(3);
                COp=rs.getString(4);
                if(SOp.equals(COp))
                    right+=1;
                else
                    wrong+=1;
            }
            else
            {

            }
          }
        } 

        catch (SQLException e) {
          System.out.println(e.toString()); 
        } 
        catch (Exception e) {
          System.out.println(e.toString()); 
        }
            perc=(right*100)/noq;
            session.setAttribute("Right",right);
            session.setAttribute("Wrong",wrong);
            session.setAttribute("Attmpt",attmpt);
            session.setAttribute("Unattmpt",unattmpt);
            session.setAttribute("Perc",perc);
            session.setAttribute("Name",name);
            session.setAttribute("testid",testid);
            
            if(Integer.parseInt(request.getParameter("rprt"))==1)
            {%>
            <script>
                alert("Report Generated Successfully!");
                window.location="Result.jsp";
            </script> 
            <%}
            else
            {%>
            <script>
                alert("Test Submitted Successfully!");
                window.location="Result.jsp";
            </script>     
            <%}   

    }
%>
    </body>
</html>
