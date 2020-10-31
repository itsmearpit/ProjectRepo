<%-- 
    Document   : Admin
    Created on : 7 May, 2019, 1:57:05 PM
    Author     : Awesome
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%! 
String email="null",tid,testid,tname,sub,TA,TB,TC,uid;
int i=0,QA,QB,QC,noe,j=0;
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
<%
    i=Integer.parseInt(request.getParameter("flg"));
    tid=request.getParameter("tid");
%>

<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from testpot.com/miscellaneous-tests/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:30:58 GMT -->
<!-- Added by HTTrack --><!--<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  
    <!-- Required meta tags always come first -->
    <title>BrainStormer.com|Admin Panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-compatible" content="ie=edge">
    <meta property="fb:app_id" content="957469191013770"/>
    
    
    <meta property="og:site_name" content="TestPot.com"/>
    

    <link rel="shortcut icon" href="../static/testpot/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../static/testpot/images/favicon.ico" type="image/x-icon">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script|Source+Sans+Pro:300' rel='stylesheet' type='text/css'>
    
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
      
    <link rel="stylesheet" href="css/select2.css">
    <link rel="stylesheet" href="css/helper_classes3f56.css?v=11">

    <link rel="stylesheet" href="css/testpot3f56.css?v=11">
    
    
  
  <link rel="stylesheet" href="css/landing_page.css">
  <title>Admin Panel Of BrainStormer.com </title>
  <meta name="description" content="Miscellaneous Mock Tests online , Miscellaneous Online Tests for practice , Mock Online Tests for Miscellaneous competitive Exams and Placement Preparation" /> 
  <meta property="og:image" content="images/open_graph_img.png"/>
  <meta property="og:title" content="Miscellaneous" />
  
  <style>
    .navbar-inverse{
      background-color: #2E6686 !important;
      background-color: #37799E !important;
    }
  </style>
  
  <script>
      function change1()
      {
          document.getElementById("content1").style.display = "block";
          document.getElementById("content2").style.display = "none";
          document.getElementById("content3").style.display = "none";
          document.getElementById("content4").style.display = "none";
          document.getElementById("content5").style.display = "none";
          document.getElementById("content6").style.display = "none";
          document.getElementById("content7").style.display = "none";
      }
  </script>

  <script>
      function change2()
      {
          document.getElementById("content1").style.display = "none";
          document.getElementById("content2").style.display = "block";
          document.getElementById("content3").style.display = "none";
          document.getElementById("content4").style.display = "none";
          document.getElementById("content5").style.display = "none";
          document.getElementById("content6").style.display = "none";
          document.getElementById("content7").style.display = "none";
      }
  </script>
  
  <script>
      function change3()
      {
          document.getElementById("content1").style.display = "none";
          document.getElementById("content2").style.display = "none";
          document.getElementById("content3").style.display = "block";
          document.getElementById("content4").style.display = "none";
          document.getElementById("content5").style.display = "none";
          document.getElementById("content6").style.display = "none";
          document.getElementById("content7").style.display = "none";
      }
  </script>
  
  <script>
      function change4()
      {
          document.getElementById("content1").style.display = "none";
          document.getElementById("content2").style.display = "none";
          document.getElementById("content3").style.display = "none";
          document.getElementById("content4").style.display = "block";
          document.getElementById("content5").style.display = "none";
          document.getElementById("content6").style.display = "none";
          document.getElementById("content7").style.display = "none";
      }
  </script>
  
  <script>
      function change5()
      {
          document.getElementById("content1").style.display = "none";
          document.getElementById("content2").style.display = "none";
          document.getElementById("content3").style.display = "none";
          document.getElementById("content4").style.display = "none";
          document.getElementById("content5").style.display = "block";
          document.getElementById("content6").style.display = "none";
          document.getElementById("content7").style.display = "none";
      }
  </script>

  <script>
      function change6()
      {
          document.getElementById("content1").style.display = "none";
          document.getElementById("content2").style.display = "none";
          document.getElementById("content3").style.display = "none";
          document.getElementById("content4").style.display = "none";
          document.getElementById("content5").style.display = "none";
          document.getElementById("content6").style.display = "none";
          document.getElementById("content7").style.display = "block";
      }
  </script>
  
  <script>
      function changeform()
      {
          document.getElementById("content1").style.display = "none";
          document.getElementById("content6").style.display = "block";
      }
      function changeform1()
      {
          document.getElementById("content1").style.display = "none";
          document.getElementById("content8").style.display = "block";
      }
  </script>
  
  <script>
      function change()
      {
          if(<%=i%>==6)
          {
              changeform();
          }
          if(<%=i%>==8)
          {
              changeform1();
          }
      }
  </script>
  
  
  </head>
  <body onload="change()">
    <nav class="navbar navbar-inverse navbar-fixed-top app-navbar">
      <div class="container no-padding-xs">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
		  <img src="images/logo2n.jpg" height="55" align="left"/>
          <a class="navbar-brand" href="Home.jsp">
            &nbsp;BrainStormer.com
          </a>
          
        </div>
        <div id="navbar" class="clearfix collapse navbar-collapse">
         

          <ul class="nav navbar-nav navbar-right">
            
            <li>
              <a href="Home.jsp">Home</a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Subjects <span class="caret"></span></a>
                  <ul class="dropdown-menu">


                        <li>
                          <a href="C.jsp">C</a>
                        </li>



                        <li>
                          <a href="DS.jsp">DS and Algorithm </a>
                        </li>



                        <li>
                          <a href="DBMS.jsp">Database </a>
                        </li>



                        <li>
                          <a href="OS.jsp">Operating System </a>
                        </li>

                  </ul>
            </li>
            <li>
              <a href="MoreTests.jsp">More Tests</a>
            </li>
          </ul>
          
        </div>
      </div>
    </nav>

  
    <div class="main_container">
      <br>
      <br>
      <div class="inner_page_header" style="background-image:url(images/intro_bg_inner.jpg)">
      <h1 class="page_title">Welcome Admin</h1>
    </div>
    <div class="panel-group col-sm-3">
        <br>
        <div class="panel panel-primary">
            <div class="panel-body"><button class="btn btn-primary btn-block" onclick="change1()">Create New Test</button></div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-body"><button class="btn btn-primary btn-block" onclick="change6()">Upload Questions</button></div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-body"><button class="btn btn-primary btn-block" onclick="change2()">Upload Test Sheet</button></div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-body"><button class="btn btn-primary btn-block" onclick="change3()">View Test</button></div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-body"><button class="btn btn-primary btn-block" onclick="change4()">Delete Test</button></div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-body"><button class="btn btn-primary btn-block" onclick="change5()">View Attempted Tests</button></div>
        </div>
    </div>  

<!--    Create test -->
      
    <div class="col-sm-8 col-sm-offset-0" id="content1">

    <br>
    <div class="box box-solid">
      <div class="box-header bg-gray">
        <h3 class="box-title display-block text-center"><strong> Create New Test </strong></h3>
      </div>

      <div class="box-body padding-t-b-20">

        <div class="clearfix ">
          
          <form method="post" action="create.jsp" class="form-horizontal" role="form">

            <div class="form-group">
              <label for="sub" class="col-sm-2 control-label">Subject</label>
              <div class="col-sm-3">
                    <select class="form-control" id="sub" name="subject">
                        <option value="C">C</option>
                        <option value="DS">DS and Algorithm</option>
                        <option value="DBMS">Database</option>
                        <option value="OS">Operating System</option>
                        <option value="AP">Aptitude</option>
                    </select>
              </div>
              <label for="name_t" class="col-sm-2 control-label">Test Name</label>
              <div class="col-sm-3">
                <input type="text" name="TName" class="form-control" id="name_t">
              </div>
            </div>
            <div class="form-group">
              <label for="qno_A" class="col-sm-2 control-label">No. of Ques for Sec A</label>
              <div class="col-sm-3">
                <input type="text" name="QNoA" class="form-control" id="qno_A">
              </div>
              <label for="time_A" class="col-sm-2 control-label">Time for Sec A</label>
              <div class="col-sm-3">
                <input type="text" name="timeA" class="form-control" id="time_A">
              </div>
            </div>
            <div class="form-group">
              <label for="qno_B" class="col-sm-2 control-label">No. of Ques for Sec B</label>
              <div class="col-sm-3">
                <input type="text" name="QNoB" class="form-control" id="qno_B">
              </div>
              <label for="time_B" class="col-sm-2 control-label">Time for Sec B</label>
              <div class="col-sm-3">
                <input type="text" name="timeB" class="form-control" id="time_B">
              </div>
            </div>
            <div class="form-group">
              <label for="qno_C" class="col-sm-2 control-label">No. of Ques for Sec C</label>
              <div class="col-sm-3">
                <input type="text" name="QNoC" class="form-control" id="qno_C">
              </div>
              <label for="time_C" class="col-sm-2 control-label">Time for Sec C</label>
              <div class="col-sm-3">
                <input type="text" name="timeC" class="form-control" id="time_C">
              </div>
            </div>

              <div class="form-group">
              <div class="col-sm-offset-3 col-sm-6">
                <button type="submit" id="form_sub" class="btn btn-success btn-block">Submit</button>
              </div>
            </div>
          </form>


        </div>
      </div>

      <div class="box-footer bg-gray">
      </div>
    </div>
  </div>

<!--    -->      

<!--    Upload  mnl part 1  -->

<div class="col-sm-8 col-sm-offset-0" id="content7" style="display:none">

    <br>
    <div class="box box-solid">
      <div class="box-header bg-gray">
        <h3 class="box-title display-block text-center"><strong> Upload Questions </strong></h3>
      </div>

      <div class="box-body padding-t-b-20">

        <div class="clearfix ">
          
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>TestID</th>
                    <th>TestName</th>
                    <th>Subject</th>
                    <th>No of Ques in Sec A</th>
                    <th>No of Ques in Sec B</th>
                    <th>No of Ques in Sec C</th>
                    <th>No of Ques Uploaded</th>
                  </tr>
                </thead>
                <tbody>
                <%

                try 
                {
                    j=0;
                    
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
                    System.out.println("got connection"); 

                    Statement s = con.createStatement();

                    String sq = "select TestID,TestName,Sub,QSecA,QSecB,QSecC from test;";
                    ResultSet r1=s.executeQuery(sq);
                    while(r1.next())
                    {
                        j++;
                        testid=r1.getString(1);
                        tname=r1.getString(2);
                        sub=r1.getString(3);
                        QA=Integer.parseInt(r1.getString(4));
                        QB=Integer.parseInt(r1.getString(5));
                        QC=Integer.parseInt(r1.getString(6));
                        
                        
                
                        String s1 = "select count(*) from quiz where TestID='"+testid+"';";
                        r1=s.executeQuery(s1);
                        while(r1.next())
                        {
                            noe=Integer.parseInt(r1.getString(1));
                            System.out.println("entry in r2..."+j);
                            if(noe<QA+QB+QC)
                            {

                    %>
                      <tr>
                        <td><%=testid%></td>
                        <td><%=tname%></td>
                        <td><%=sub%></td>
                        <td><%=QA%></td>
                        <td><%=QB%></td>
                        <td><%=QC%></td>
                        <td><%=noe%></td>
                      </tr>
                    <%
                            }      
                        }
                        r1=s.executeQuery(sq);
                        r1.absolute(j);
                    }

                }
                catch (SQLException e) {
                    System.out.println(e.toString()); 
                } 
                catch (Exception e) {
                    System.out.println(e.toString()); 
                }
                %>
                </tbody>
            </table>  
            <form method="post" action="upldmnl.jsp" class="form-horizontal" role="form">
              <div class="form-group">
                  <label for="id_test" class="col-sm-3 text-bold text-gray-black control-label">Enter TestID to Upload Questions</label>
                  <div class="col-sm-3">
                      <input type="text" name="TID" class="form-control" id="id_test">
                  </div>
                  <div class="col-sm-3">
                      <button type="submit" id="reg_login_btn" class="btn btn-success btn-block">Submit</button>
                  </div>
              </div>
            </form>

        </div>
      </div>

      <div class="box-footer bg-gray">
      </div>
    </div>
  </div>

<!--    -->

<!--    Upload  mnl part 2-->

<div class="col-sm-8 col-sm-offset-0" id="content6" style="display:none">

    <br>
    <div class="box box-solid">
      <div class="box-header bg-gray">
        <h3 class="box-title display-block text-center"><strong> Enter New Test Data </strong></h3>
      </div>

      <div class="box-body padding-t-b-20">

        <div class="clearfix ">
          
          <form method="post" action="upldmnl2.jsp" class="form-horizontal" role="form">

            <div class="form-group">
              <label for="id_t" class="col-sm-2 control-label">TestID</label>
              <div class="col-sm-3">
                <input type="text" name="TID" class="form-control" id="id_t" value="<%=tid%>">
              </div>
              <label for="qid" class="col-sm-2 control-label">QuesID</label>
              <div class="col-sm-3">
                <input type="text" name="quesid" class="form-control" id="qid">
              </div>
            </div>
            <div class="form-group">
              <label for="ques" class="col-sm-2 control-label">Question</label>
              <div class="col-sm-8">
                <input type="text" name="Ques" class="form-control" id="ques">
                <div class="help-text"></div>
              </div>
            </div>
            <div class="form-group">
              <label for="op_A" class="col-sm-2 control-label">Option A</label>
              <div class="col-sm-3">
                <input type="text" name="OpA" class="form-control" id="op_A">
              </div>
              <label for="op_B" class="col-sm-2 control-label">Opiton B</label>
              <div class="col-sm-3">
                <input type="text" name="OpB" class="form-control" id="op_B">
              </div>
            </div>
            <div class="form-group">
              <label for="op_C" class="col-sm-2 control-label">Option C</label>
              <div class="col-sm-3">
                <input type="text" name="OpC" class="form-control" id="op_C">
              </div>
              <label for="op_D" class="col-sm-2 control-label">Option D</label>
              <div class="col-sm-3">
                <input type="text" name="OpD" class="form-control" id="op_D">
              </div>
            </div>
            <div class="form-group">
              <label for="C_Op" class="col-sm-2 control-label">Correct Option</label>
              <div class="col-sm-3">
                <input type="text" name="COp" class="form-control" id="C_Op">
              </div>
              <label for="sec" class="col-sm-2 control-label">Section</label>
              <div class="col-sm-3">
                <input type="text" name="Sec" class="form-control" id="sec">
              </div>
            </div>

              <div class="form-group">
              <div class="col-sm-offset-3 col-sm-6">
                <button type="submit" id="reg_login_btn" class="btn btn-success btn-block">Submit</button>
              </div>
            </div>
          </form>


        </div>
      </div>

      <div class="box-footer bg-gray">
      </div>
    </div>
  </div>

<!--    -->
      

<!--    Upload  sheet 1  -->

<div class="col-sm-8 col-sm-offset-0" id="content2" style="display:none">

    <br>
    <div class="box box-solid">
      <div class="box-header bg-gray">
        <h3 class="box-title display-block text-center"><strong> Upload Test Sheet </strong></h3>
      </div>

      <div class="box-body padding-t-b-20">

        <div class="clearfix ">
          
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>TestID</th>
                    <th>TestName</th>
                    <th>Subject</th>
                    <th>No of Ques in Sec A</th>
                    <th>No of Ques in Sec B</th>
                    <th>No of Ques in Sec C</th>
                    <th>No of Ques Uploaded</th>
                  </tr>
                </thead>
                <tbody>
                <%

                try 
                {
                    j=0;
                    
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
                    System.out.println("got connection"); 

                    Statement s = con.createStatement();

                    String sq = "select TestID,TestName,Sub,QSecA,QSecB,QSecC from test;";
                    ResultSet r1=s.executeQuery(sq);
                    while(r1.next())
                    {
                        j++;
                        testid=r1.getString(1);
                        tname=r1.getString(2);
                        sub=r1.getString(3);
                        QA=Integer.parseInt(r1.getString(4));
                        QB=Integer.parseInt(r1.getString(5));
                        QC=Integer.parseInt(r1.getString(6));
                        
                        
                
                        String s1 = "select count(*) from quiz where TestID='"+testid+"';";
                        r1=s.executeQuery(s1);
                        while(r1.next())
                        {
                            noe=Integer.parseInt(r1.getString(1));
                            System.out.println("entry in r2..."+j);
                            if(noe<QA+QB+QC)
                            {

                    %>
                      <tr>
                        <td><%=testid%></td>
                        <td><%=tname%></td>
                        <td><%=sub%></td>
                        <td><%=QA%></td>
                        <td><%=QB%></td>
                        <td><%=QC%></td>
                        <td><%=noe%></td>
                      </tr>
                    <%
                            }      
                        }
                        r1=s.executeQuery(sq);
                        r1.absolute(j);
                    }

                }
                catch (SQLException e) {
                    System.out.println(e.toString()); 
                } 
                catch (Exception e) {
                    System.out.println(e.toString()); 
                }
                %>
                </tbody>
            </table>  
            <form method="post" action="upldblk2.jsp" class="form-horizontal" role="form">
              <div class="form-group">
                  <label for="id_test" class="col-sm-4 text-bold text-gray-black control-label">Enter TestID to Upload Sheet(.csv format)</label>
                  <div class="col-sm-3">
                      <input type="text" name="TID" class="form-control" id="id_test">
                  </div>
                  <div class="col-sm-3">
                      <button type="submit" id="reg_login_btn" class="btn btn-success btn-block">Submit</button>
                  </div>
              </div>
            </form>

        </div>
      </div>

      <div class="box-footer bg-gray">
      </div>
    </div>
  </div>

<!--    -->

<!--    Upload sheet 2   -->

<div class="col-sm-8 col-sm-offset-0" id="content8" style="display:none">

    <br>
    <div class="box box-solid">
      <div class="box-header bg-gray">
        <h3 class="box-title display-block text-center"><strong> Upload Test Sheet </strong></h3>
      </div>

      <div class="box-body padding-t-b-20">

        <div class="clearfix ">
          
            <form method="post" action="upldblk.jsp?tid=<%=tid%>" class="form-horizontal" role="form">
              
                  <legend>Select file to Upload Questions</legend>
                  <input type="file" name="muliplefileupload"/>
                  <h3>Note: PLease place the file on desktop.</h3>
              
              <button type="submit" id="reg_login_btn" class="btn btn-success btn-block">Submit</button>
              
          </form>


        </div>
      </div>

      <div class="box-footer bg-gray">
      </div>
    </div>
  </div>

<!--    -->

<!--    View Test   -->

<div class="col-sm-9 col-sm-offset-0" id="content3" style="display:none">

    <br>
    <div class="box box-solid">
      <div class="box-header bg-gray">
        <h3 class="box-title display-block text-center"><strong> View Test </strong></h3>
      </div>

      <div class="box-body padding-t-b-20">

        <div class="clearfix ">
          
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>TestID</th>
                    <th>TestName</th>
                    <th>Subject</th>
                    <th>No of Ques in Sec A</th>
                    <th>No of Ques in Sec B</th>
                    <th>No of Ques in Sec C</th>
                    <th>Time for Sec A</th>
                    <th>Time for Sec B</th>
                    <th>Time for Sec C</th>
                  </tr>
                </thead>
                <tbody>
                <%

                try 
                {

                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
                    System.out.println("got connection"); 

                    Statement s = con.createStatement();

                    String sq = "select TestID,TestName,Sub,QSecA,QSecB,QSecC,TimeA,TimeB,TimeC from test;";
                    ResultSet r1=s.executeQuery(sq);
                    while(r1.next())
                    {
                        testid=r1.getString(1);
                        tname=r1.getString(2);
                        sub=r1.getString(3);
                        QA=Integer.parseInt(r1.getString(4));
                        QB=Integer.parseInt(r1.getString(5));
                        QC=Integer.parseInt(r1.getString(6));
                        TA=r1.getString(7);
                        TB=r1.getString(8);
                        TC=r1.getString(9);
                %>
                    <tr>
                      <td><%=testid%></td>
                      <td><%=tname%></td>
                      <td><%=sub%></td>
                      <td><%=QA%></td>
                      <td><%=QB%></td>
                      <td><%=QC%></td>
                      <td><%=TA%></td>
                      <td><%=TB%></td>
                      <td><%=TC%></td>
                    </tr>
                <%}

                }
                catch (SQLException e) {
                    System.out.println(e.toString()); 
                } 
                catch (Exception e) {
                    System.out.println(e.toString()); 
                }
                %>
                </tbody>
            </table>

        </div>
      </div>

      <div class="box-footer bg-gray">
      </div>
    </div>
  </div>

<!--    -->

<!--    Modify    -->

<div class="col-sm-9 col-sm-offset-0" id="content4" style="display:none">

    <br>
    <div class="box box-solid">
      <div class="box-header bg-gray">
        <h3 class="box-title display-block text-center"><strong> Delete Test </strong></h3>
      </div>

      <div class="box-body padding-t-b-20">

        <div class="clearfix ">
          
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>TestID</th>
                    <th>TestName</th>
                    <th>Subject</th>
                    <th>No of Ques in Sec A</th>
                    <th>No of Ques in Sec B</th>
                    <th>No of Ques in Sec C</th>
                    <th>Time for Sec A</th>
                    <th>Time for Sec B</th>
                    <th>Time for Sec C</th>
                  </tr>
                </thead>
                <tbody>
                <%

                try 
                {

                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
                    System.out.println("got connection"); 

                    Statement s = con.createStatement();

                    String sq = "select TestID,TestName,Sub,QSecA,QSecB,QSecC,TimeA,TimeB,TimeC from test;";
                    ResultSet r1=s.executeQuery(sq);
                    while(r1.next())
                    {
                        testid=r1.getString(1);
                        tname=r1.getString(2);
                        sub=r1.getString(3);
                        QA=Integer.parseInt(r1.getString(4));
                        QB=Integer.parseInt(r1.getString(5));
                        QC=Integer.parseInt(r1.getString(6));
                        TA=r1.getString(7);
                        TB=r1.getString(8);
                        TC=r1.getString(9);
                %>
                    <tr>
                      <td><%=testid%></td>
                      <td><%=tname%></td>
                      <td><%=sub%></td>
                      <td><%=QA%></td>
                      <td><%=QB%></td>
                      <td><%=QC%></td>
                      <td><%=TA%></td>
                      <td><%=TB%></td>
                      <td><%=TC%></td>
                    </tr>
                <%}

                }
                catch (SQLException e) {
                    System.out.println(e.toString()); 
                } 
                catch (Exception e) {
                    System.out.println(e.toString()); 
                }
                %>
                </tbody>
            </table>
            <form method="post" action="dlttst.jsp" class="form-horizontal" role="form">
              <div class="form-group">
                  <label for="id_test" class="col-sm-3 text-bold text-gray-black control-label">Enter TestID to Delete the Test</label>
                  <div class="col-sm-3">
                      <input type="text" name="TID" class="form-control" id="id_test">
                  </div>
                  <div class="col-sm-3">
                      <button type="submit" id="reg_login_btn" class="btn btn-success btn-block">Submit</button>
                  </div>
              </div>
            </form>


        </div>
      </div>

      <div class="box-footer bg-gray">
      </div>
    </div>
  </div>

<!--    -->

<!--    View Attmptd    -->

<div class="col-sm-8 col-sm-offset-0" id="content5" style="display:none">

    <br>
    <div class="box box-solid">
      <div class="box-header bg-gray">
        <h3 class="box-title display-block text-center"><strong> View Attempted Tests </strong></h3>
      </div>

      <div class="box-body padding-t-b-20">

        <div class="clearfix ">
          
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>TestID</th>
                    <th>TestName</th>
                    <th>Subject</th>
                    <th>No of Ques in Sec A</th>
                    <th>No of Ques in Sec B</th>
                    <th>No of Ques in Sec C</th>
                    <th>Attempted By</th>
                  </tr>
                </thead>
                <tbody>
                <%

                try 
                {

                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
                    System.out.println("got connection"); 

                    Statement s = con.createStatement();

                    String sq = "select test.`TestID`,TestName,Sub,QSecA,QSecB,QSecC,UID from test,result where test.`TestID`=result.TestID group by UID;";
                    ResultSet r1=s.executeQuery(sq);
                    while(r1.next())
                    {
                        testid=r1.getString(1);
                        tname=r1.getString(2);
                        sub=r1.getString(3);
                        QA=Integer.parseInt(r1.getString(4));
                        QB=Integer.parseInt(r1.getString(5));
                        QC=Integer.parseInt(r1.getString(6));
                        uid=r1.getString(7);

                %>
                    <tr>
                      <td><%=testid%></td>
                      <td><%=tname%></td>
                      <td><%=sub%></td>
                      <td><%=QA%></td>
                      <td><%=QB%></td>
                      <td><%=QC%></td>
                      <td><%=uid%></td>
                    </tr>
                <%}

                }
                catch (SQLException e) {
                    System.out.println(e.toString()); 
                } 
                catch (Exception e) {
                    System.out.println(e.toString()); 
                }
                %>
                </tbody>
            </table>


        </div>
      </div>

      <div class="box-footer bg-gray">
      </div>
    </div>
  </div>

<!--    -->
      
  </div>         
          

  <div class="footer">
    <div class="container">
        <div class="col-xs-12 col-md-8 footer-block">
            <h6>About Us</h6>
            <p>
              BrainStormer.com is one of the most popular and most comprehensive online test platform. We provide deep analysis of your performance through our intuitive graphical reports and help you improve your skills by pointing out your weak areas. </p>
            <p>
              <a href="Cookie.jsp" class="margin-r-5"> Cookie Policy</a>
              <a href="Privacy.jsp" class="margin-r-5"> Privacy Policy</a>
              <a href="Terms.jsp"> Terms of Usage</a>
            </p>

        </div>
        
        <div class="col-xs-12 col-md-4 footer-block">
            <h6>Our Social Pages</h6>
            <div class="social-icons-block">
                <ul>
                    
                    <li>
                        <a href="#" title="Facebook Page" rel="" target="_blank"><span class="fa fa-facebook-square"></span></a>
                    </li>
                    
                    
                    
                </ul>
            </div>
        </div>
        
    </div>
    
  </div>
  <div class="col-xs-12 team_work">
    Created and Maintained by <a href="http://www.logicguns.com/">LogicGuns Team</a>
  </div>

<div class="modal fade" id="login_register_modal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="login_register_modalLabel">
  <div class="modal-dialog " role="document">
    <div class="modal-content " id="login_modal">
      <div class="modal-header white_bg">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times-circle"></i></span></button>
        <h4 class="modal-title text-center" id="login_register_modal" style="color:#234961">Login</h4>
      </div>
      <div class="modal-body clearfix">
        <div class="col-md-12 clearfix ">
         
          <!-- <div class="socialLoginLinks padding-top-5 clearfix col-sm-10 col-sm-offset-1">
            <div class="form-loader hidden page_form_loader">
              <p><i class="fa fa-pulse fa-spinner "></i></p>
            </div>
            
            <button class="fbLoginBtn btn-social-login btn-fb" id="fb-login-button"><i class="fa fa-facebook"></i> Login with Facebook</button>
          </div>
          <div class="clearfix"></div> 
          <fieldset class="separator margin-bottom-20">
            <legend>Or</legend>
          </fieldset>   
          -->
          <div class="col-sm-10 col-sm-offset-1 form_error_box hidden">
            <div class=" alert alert-danger"></div>
          </div>       
		  

          <form method="post" action="log.jsp" class="form-horizontal" role="form">
            <div class="form-loader hidden">
              <p><i class="fa fa-pulse fa-spinner "></i></p>
            </div>
            <input type='hidden' name='csrfmiddlewaretoken' value='CLt6QBFogpDn6H6nLRbxbUnJsg32UY1z' />
            <div class="form-group">
              <label for="login_email" class="  col-sm-3 control-label">Email</label>
              <div class="col-sm-7">
                <input type="email" name="username" class="form-control" id="login_email" placeholder="you@example.com">
                <div class="help-text"></div>
              </div>
            </div>
            <div class="form-group margin-bottom-">
              <label for="login_password" class="  col-sm-3 control-label">Password</label>
              <div class="col-sm-7">
                <input type="password" name="password" class="form-control" id="login_password" placeholder="Password">
                <div class="help-text"></div>
              </div>
            </div>
            <div class="form-group margin-bottom-5">
              <div class="checkbox col-sm-7 col-sm-offset-3 padding-5">
                <label>
                  <input type="checkbox" name="stay_logged_in" checked=""> Stay Logged In
                </label>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-3 col-sm-7">
                <button type="submit" id="login_btn" class="btn btn-success btn-block">Sign in</button>
              </div>
            </div>
          </form>
          <p class="text-center col-sm-10 col-sm-offset-1"><a href="#" data-current="login_modal" data-target="registration_modal" class="modal_change_btn">New User ?  Register Here</a></p>

          

        </div>

      </div>
      <div class="modal-footer">
        <p class="text-right no-margin">Forgot Password?<a href="Forgot.html"> Click Here</a></p>
      </div>
    </div>
    <div class="modal-content hidden" id="registration_modal">

      <div class="modal-header white_bg">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times-circle"></i></span></button>
        <h4 class="modal-title text-center" id="login_register_modalLabel" style="color:#234961">Register</h4>
      </div>
      <div class="modal-body clearfix">
        <div class="col-md-12 clearfix position-initial">
              
              <!-- <div class="socialLoginLinks padding-top-5 clearfix col-sm-10 col-sm-offset-1 position-initial">
                <div class="col-sm-10 col-sm-offset-1 form_error_box hidden">
                  <div class=" alert alert-danger"></div>
                </div>
                <div class="form-loader hidden page_form_loader">
                  <p><i class="fa fa-pulse fa-spinner "></i></p>
                </div>
                <form class="hidden social_register" >
                  <input type="hidden" name="user_type" value="">
                </form>
                <button class="fbLoginBtn btn-social-login btn-fb" id="fb-login-button"><i class="fa fa-facebook"></i> Register with Facebook</button>
              </div>
              <div class="clearfix"></div>
              <fieldset class="separator margin-bottom-20">
                <legend>Or</legend>
              </fieldset>   -->
              <div class="clearfix">       
                  <div class="col-sm-10 col-sm-offset-1 form_error_box hidden">
                    <div class=" alert alert-danger"></div>
                  </div> 
                  <form method="post" action="Reg.jsp" class="form-horizontal position-initial" role="form">

                    <div class="form-loader hidden">
                      <p><i class="fa fa-pulse fa-spinner "></i></p>
                    </div>
                    <input type='hidden' name='csrfmiddlewaretoken' value='CLt6QBFogpDn6H6nLRbxbUnJsg32UY1z' />
                    <input type="hidden" name="user_type" value="">

                    <div class="form-group">
                      <label for="registration_full_name" class="  col-sm-3 control-label">Full Name</label>
                      <div class="col-sm-7">
                        <input type="text" name="full_name" class="form-control" id="registration_full_name" placeholder="Your Full Name">
                        <div class="help-text"></div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="registration_email" class="  col-sm-3 control-label">Email</label>
                      <div class="col-sm-7">
                        <input type="email" name="email" class="form-control" id="registration_email" placeholder="you@example.com">
                        <div class="help-text"></div>
                      </div>
                    </div>
                    <div class="form-group margin-bottom-">
                      <label for="registration_password" class="  col-sm-3 control-label">Password</label>
                      <div class="col-sm-7">
                        <input type="password" name="password" class="form-control" id="registration_password" placeholder="Password">
                        <div class="help-text"></div>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-offset-3 col-sm-7">
                        <button type="submit" id="registration_btn" class="btn btn-success btn-block">Register</button>
                      </div>
                    </div>
                  </form>
                  <p class="text-center "><a href="#" data-target="login_modal" class="modal_change_btn">Already Registered ?  Login Here</a></p>
                  
              </div>
              
            </div>
      </div>
    </div>
  </div>
</div>
  <div class="modal fade " id="success_modal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="success_modal" aria-hidden="true">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header no-border">
          <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times-circle"></i></span></button>
          <h4 class="modal-title text-center"></h4>
        </div>
      </div>
    </div>
    
  </div>  


  <!-- End of all Modals  -->
  <form class="hidden" id="csrf_form">
    <input type='hidden' name='csrfmiddlewaretoken' value='CLt6QBFogpDn6H6nLRbxbUnJsg32UY1z' />
  </form>
  
 



  <!-- jQuery first, then Bootstrap JS.-->
  <script src="JS/jquery-2.1.4.min.js"></script>
  <script src="JS/bootstrap.min.js"></script>
  
<!-- <script src="/static/testpot/js/slimscroll.js"></script> -->
 
  
  
  <script src="JS/accounts3f56.js?v=11"></script>
  <script src="JS/defer_testpot3f56.js?v=11"></script>
  

  </body>

<!-- Mirrored from testpot.com/miscellaneous-tests/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:30:58 GMT -->
</html>