
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%! 
String email="null",ques,OpA,OpB,OpC,OpD,testid,sec,C_Op,url;
int i,flg,min,second,nmin,nsec;
%>
<%
                email=(String)session.getAttribute("id");  
                testid=(String)session.getAttribute("tid");
                i=(int)session.getAttribute("qid");
                ques=(String)session.getAttribute("ques");
                OpA=(String)session.getAttribute("OpA");
                OpB=(String)session.getAttribute("OpB");
                OpC=(String)session.getAttribute("OpC");
                OpD=(String)session.getAttribute("OpD");
                sec=(String)session.getAttribute("sect");
                C_Op=(String)session.getAttribute("COp");
                min=Integer.parseInt(request.getParameter("min"));
                second=Integer.parseInt(request.getParameter("second"));
                
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
  
    <script language ="javascript" >
        var tim;
       
        var min,sec;
        var f = new Date();
        function f1(m,s) 
        {
            min=m;
            sec=s;
            alert("min="+min+"sec="+sec);
            f2();
            document.getElementById("starttime").style.display="block";
            document.getElementById("starttime").innerHTML = "You started your Exam at " + f.getHours() + ":" + f.getMinutes();

        }
        function f2() 
        {
            if (parseInt(sec) > 0) {
                sec = parseInt(sec) - 1;
                document.getElementById("showtime").style.display="block";
                document.getElementById("showtime").innerHTML = "Time Left is :"+min+" Minutes " +sec+" Seconds";
                tim = setTimeout("f2()", 1000);
            }
            else {
                if (parseInt(sec) == 0) {
                    min = parseInt(min) - 1;
                    if (parseInt(min) == -1) {
                        clearTimeout(tim);
                        location.href = "Ques.jsp?tid=<%=testid%>&qid=<%=i%>&flag=0";
                    }
                    else {
                        sec = 60;
                        document.getElementById("showtime").innerHTML = "Time Left is :" + min + " Minutes " + sec + " Seconds";
                        tim = setTimeout("f2()", 1000);
                    }
                }
            }
        }
    </script>
    
  <script type="text/javascript">
      function flag()
      {
          window.location = "Ques.jsp?tid=<%=testid%>&qid=<%=i%>&flag=1&rprt=0&min=<%=min%>&second=<%=second%>";
      }
  </script>
   
  </head>
  <body onload="f1(<%=min%>,<%=second%>);">
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

      
<div class="main_container container col-sm-12 padding-t-20 margin-l-10" id="profile_tabs">
      
      
        <div class="col-sm-9 col-md-center-and-left padding-2"> 
  
          <div id="suggested_tests_list" class="tab_targets active">
              
              <div class="col-sm-12">
                <div class="box box-solid margin-b-20">
                  <div class="box-body">
                      <p class="text-gray-dark"><b>Sections</b></p>
                      <button type="submit" id="reg_login_btn" class="btn btn-success">Sec A</button>
                      <button type="submit" id="reg_login_btn" class="btn btn-success">Sec B</button>
                      <button type="submit" id="reg_login_btn" class="btn btn-success">Sec C</button>
                      <button id="finish_btn" class="btn btn-danger" style="margin-left: 800px" onclick="flag();">Finish Test</button>
                      <div>
                        <br>
                        <label class="text-bold" id="starttime"></label><label class=" text-bold" id="showtime"></label>
                      </div>
                  </div>
                </div>
              </div>
              <%
                i++;
                System.out.println(i);
              %>
              <div class="col-sm-12">
                <div class="box box-solid margin-b-20">
                  <div class="box-body">
                      <form method="post" action="Ques.jsp?tid=<%=testid%>&qid=<%=i%>&flag=<%=flg%>&min=<%=min%>&second=<%=second%>" class="form-horizontal" role="form" id="form1">
            <div class="form-loader hidden">
              <p><i class="fa fa-pulse fa-spinner "></i></p>
            </div>
            <input type='hidden' name='csrfmiddlewaretoken' value='CLt6QBFogpDn6H6nLRbxbUnJsg32UY1z' />
            <div class="form-group">
              <p class="text-gray-dark">Question<%=i-1%></p>
              <hr>
            </div>
            <div class="form-group margin-bottom-">
              <p class="text-gray-dark"><%=ques%></p>
              <div class="col-sm-7">
                  <input type="radio" name="op" value="<%=OpA%>">
                  <strong>A.</strong>
                  <em><%=OpA%></em>
              </div>
              <div class="col-sm-7">
                  <input type="radio" name="op" value="<%=OpB%>">
                  <strong>B.</strong>
                  <em><%=OpB%></em>
              </div>
              <div class="col-sm-7">
                  <input type="radio" name="op" value="<%=OpC%>">
                  <strong>C.</strong>
                  <em><%=OpC%></em>
              </div>
              <div class="col-sm-7">
                  <input type="radio" name="op" value="<%=OpD%>">
                  <strong>D.</strong>
                  <em><%=OpD%></em>
              </div>
            </div>
            
            <div class="form-group">
              <div class=" col-sm-8">
                  <button id="form_btn" class="btn btn-success">Next Question</button>
              </div>
            </div>
          </form>
                  </div>
                </div>
              </div>

          </div>
              
        </div>

    
    <!-- <h2 class="header_title text-center"><i class="ion ion-arrow-graph-up-right margin-r-5 text-primary"></i> Suggested Tests for You ! </h2> -->
        <!-- <div class="col-sm-3 col-md-right padding-5 ">

        </div> -->

      
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