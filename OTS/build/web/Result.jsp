<%-- 
    Document   : Result
    Created on : 29 Apr, 2019, 9:18:32 AM
    Author     : Awesome
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%! 
String email="null",name,testid,ques,SOp,COp,sec,OpA,OpB,OpC,OpD;
int i,right,wrong,attmpt,unattmpt,qid;
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
<%
email=(String)session.getAttribute("id");  
right=(int)session.getAttribute("Right");
wrong=(int)session.getAttribute("Wrong");
attmpt=(int)session.getAttribute("Attmpt");
unattmpt=(int)session.getAttribute("Unattmpt");
perc=(float)session.getAttribute("Perc");
name=(String)session.getAttribute("Name");
testid=(String)session.getAttribute("testid");
%>

<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from testpot.com/miscellaneous-tests/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:30:58 GMT -->
<!-- Added by HTTrack --><!--<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  
    <!-- Required meta tags always come first -->
    <title>BrainStormer.com|Test Page</title>
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
  <title>Online Test Series Test Page </title>
  <meta name="description" content="Miscellaneous Mock Tests online , Miscellaneous Online Tests for practice , Mock Online Tests for Miscellaneous competitive Exams and Placement Preparation" /> 
  <meta property="og:image" content="images/open_graph_img.png"/>
  <meta property="og:title" content="Miscellaneous" />
  
  <style>
    .navbar-inverse{
      background-color: #2E6686 !important;
      background-color: #37799E !important;
    }
  </style>
   
  </head>
  <body>
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
            <% 

            if (email==null)
            {
            %>
              <li><a href="#" data-toggle="modal" data-target="#login_register_modal">Login / Register </a></li>
            <%
            }
            else
            { 
            %>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
 
                    <%= email %>
                    <span class="caret"></span> <img src="images/examiner-big.jpg" height="22"> </a>
                    <ul class="dropdown-menu">

                        <li>
                          <a href="Profile.jsp">Profile</a>
                        </li>

                        <li>
                          <a href="logout">Logout</a>
                        </li>

                    </ul>
                </li>

            <%
                session.setAttribute("id",new String(email));
            }
            %>    
          </ul>
          
        </div>
      </div>
    </nav>

  
    <div class="main_container">
      <br>
      <br>
      <br>

      
      <div class="bg-dark-blue">
        <div class="container wide test_report_title_wrapper">
          <div class="text-center">
            <img src="https://testpot.com/static/testpot/images/medal.svg" alt="medal"/>
          </div>
          <h1 class="text-center test_report_title text-yellow"> 
            
              Congrats <span class="text-white"><%=name%></span> ! <br/>
            
          </h1>
          <div class="clearfix text-center font-16 col-sm-12 margin-t-20">
            <div class="col-sm-2 col-sm-offset-1 test_report_box text-white">
              <div class="report_data"><%=right%><hr></div>
              <div class="report_title"> Score </div>
            </div>
           <div class="col-sm-2 test_report_box text-white">
              <div class="report_data"><%=wrong%><hr></div>
              <div class="report_title"> Incorrect Questions </div>
            </div>
           <div class="col-sm-2 test_report_box text-white">
              <div class="report_data"><%=attmpt%><hr></div>
              <div class="report_title"> Qs Attempted </div>
            </div>
           <div class="col-sm-2 test_report_box text-white">
              <div class="report_data"><%=unattmpt%><hr></div>
              <div class="report_title"> Qs Unattempted </div>
            </div>
            <div class="col-sm-2 test_report_box text-white">
              <div class="report_data"><%=perc%><hr></div>
              <div class="report_title"> Accuracy </div>
            </div>
          </div>
            <br>
        </div>
      </div>
              
              
              
              
        <div class="container  wide margin-t-20 no-padding-xs">
          <div class="col-sm-10 col-sm-offset-1">
            <ul class="nav nav-tabs report_tabs main_report_tabs" role="tablist"> 
              <li role="presentation" class="active">
                <a href="#correct" role="tab"  data-toggle="tab" aria-controls="current-affairs" aria-expanded="false"> <strong>Correct Questions</strong> 
                </a>
              </li>
              
              <li role="presentation" class="">
                <a href="#incorrect" role="tab"  data-toggle="tab" aria-controls="quantitative-aptitude" aria-expanded="false"><strong>Incorrect Questions </strong>
                </a>
              </li>
              
              
            </ul>
            <div class="tab-content">
              <div role="tabpanel" class="tab-pane fade in no-padding active" id="correct">
                <h2 class="font-22 text-gray-black text-center"> <i class="fa fa-pie-chart text-orange"></i> Correct Questions</h2>              
                <hr class="thin dark"/>

                <table class="table table-striped">

                <%

                try 
                {

                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
                    System.out.println("got connection");
                    
                    System.out.println("testid="+testid); 

                    
                    Statement s = con.createStatement();

                    String sq = "select quiz.`QuesID`,quiz.`Ques`,OpA,OpB,OpC,OpD,quiz.`C_Op`,S_Op from quiz,result where quiz.`TestID`= result.TestID and quiz.`QuesID`=result.QuesID and result.UID='"+email+"';";
                    ResultSet r1=s.executeQuery(sq);
                    while(r1.next())
                    {
                        qid=Integer.parseInt(r1.getString(1));
                        ques=r1.getString(2);
                        OpA=r1.getString(3);
                        OpB=r1.getString(4);
                        OpC=r1.getString(5);
                        OpD=r1.getString(6);
                        COp=r1.getString(7);
                        SOp=r1.getString(8);
                        
                        if(SOp.equals(COp))
                        {
                        %>
                    <thead>
                      <tr>
                        <th style="background-color:greenyellow;font-size:20px" class="text-bold text-capitalize"><%=qid%>.  <%=ques%></th>
                      </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td><%=OpA%></td>
                        </tr>
                        <tr>
                          <td><%=OpB%></td>
                        </tr>
                        <tr>
                          <td><%=OpC%></td>
                        </tr>
                        <tr>
                          <td><%=OpD%></td>
                        </tr>
                        <tr>
                          <td class="text-bold">Correct Option : <%=SOp%></td>
                        </tr>
                        <tr>
                            <td class="text-bold">Selected Option : <%=COp%></td>
                        </tr>
                        <%
                        }
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
                
                <hr class="dark" />
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
              
              </div>
              
              <div role="tabpanel" class="tab-pane fade no-padding " id="incorrect">
                <div>
                  <h2 class="font-22 text-gray-black text-center"> <i class="fa fa-pie-chart text-orange"></i> Incorrect Questions</h2>
                
                  <hr class="thin dark"/>
                  
                <table class="table table-striped">

                <%

                try 
                {

                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","2898"); 
                    System.out.println("got connection");
                    
                    System.out.println("testid="+testid); 

                    
                    Statement s = con.createStatement();

                    String sq = "select quiz.`QuesID`,quiz.`Ques`,OpA,OpB,OpC,OpD,quiz.`C_Op`,S_Op from quiz,result where quiz.`TestID`= result.TestID and quiz.`QuesID`=result.QuesID and result.UID='"+email+"';";
                    ResultSet r1=s.executeQuery(sq);
                    while(r1.next())
                    {
                        qid=Integer.parseInt(r1.getString(1));
                        ques=r1.getString(2);
                        OpA=r1.getString(3);
                        OpB=r1.getString(4);
                        OpC=r1.getString(5);
                        OpD=r1.getString(6);
                        COp=r1.getString(7);
                        SOp=r1.getString(8);
                        
                        if(!SOp.equals(COp))
                        {
                        %>
                    <thead>
                      <tr>
                        <th style="background-color:lightcoral;font-size:20px" class="text-bold text-capitalize"><%=qid%>.  <%=ques%></th>
                      </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td><%=OpA%></td>
                        </tr>
                        <tr>
                          <td><%=OpB%></td>
                        </tr>
                        <tr>
                          <td><%=OpC%></td>
                        </tr>
                        <tr>
                          <td><%=OpD%></td>
                        </tr>
                        <tr>
                          <td class="text-bold">Correct Option : <%=SOp%></td>
                        </tr>
                        <tr>
                            <td class="text-bold">Selected Option : <%=COp%></td>
                        </tr>
                        <%
                        }
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
                  <hr class="dark" />
                    
                  
                </div>
                
  
                
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
              </div> <!-- End Section tabpanel -->
              
            </div>
          </div>
        </div>
              
              
              
      
  </div>
  
<br>
<br>
<br>
<br>
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