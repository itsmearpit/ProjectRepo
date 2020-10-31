<%-- 
    Document   : home2
    Created on : 29 Mar, 2019, 8:06:23 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! 
    String email;
%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>BrainStormer.com|Home</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            
        <!-- Bootstrap CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <link href="css/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/slider.css" rel="stylesheet" type="text/css"/>
 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
       
        <link href="css/ionicons.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Source+Sans+Pro:300" rel="stylesheet" type="text/css"/>
        <link href="css/select2.css" rel="stylesheet" type="text/css"/>
        <link href="css/helper_classes3f56.css?v=11" rel="stylesheet" type="text/css"/>
        <link href="css/landing_pageb6f5.css?v=10" rel="stylesheet" type="text/css"/>
        <link href="css/testpot3f56.css?v=11" rel="stylesheet" type="text/css"/>
        
    <script type="text/javascript">

        $(window).load(function () {

            $('#carousel-example-generic').iView({

                autoAdvance: true,
                pauseOnHover: true,
                //directionNavHoverOpacity: 0,
                //timer: "pie",
                //timerDiameter: "50%",
                //timerPadding: 0,
                //timerStroke: 7,
                //timerBarStroke: 0,
                //timerColor: "#333",
                //timerPosition: "bottom-right",
                //directionNav: true,
                //controlNavNextPrev: true,
                //controlNav: false,
                fx: 'left-curtain',
                timer: "Pie", // Timer style: "Pie", "360Bar" or "Bar"
                timerBg: "#00A7F4", // Timer background
                timerColor: "#FFF", // Timer color
                timerOpacity: 0.5, // Timer opacity
                timerDiameter: 30, // Timer diameter
                timerPadding: 4, // Timer padding
                timerStroke: 3, // Timer stroke width
                timerBarStroke: 1, // Timer Bar stroke width
                timerBarStrokeColor: '#000', // Timer Bar stroke color
                timerBarStrokeStyle: 'solid', // Timer Bar stroke style
                timerX: 10, // Timer X position threshold
                timerY: 10
            });
			
        });
    </script>

  <style>
    .navbar-inverse{
      background-color: #2E6686 !important;
      background-color: #37799E !important;
    }
  </style>

    </head>
    <body>
      
        <nav class="navbar navbar-inverse navbar-fixed-top app-navbar">
          <div class="container" style="background-color:rgb(55,121,158)">
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
                          <a href="C.jsp">C </a>
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
                email=(String)session.getAttribute("id");

            if (email!=null)
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
            else
            { 
            %>
                <li><a href="#" data-toggle="modal" data-target="#login_register_modal">Login / Register </a></li>
            <%
            }
            %>    

              </ul>

            </div>
          </div>
        </nav>


    <!--slider-->
            <br>
            <br>
            <br>
            <header>

                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox" style="background-color:#333333">
                    <div class="item active">
                        <img src="images/slider1.jpg" alt="..." class="animated slideInDown">
                        <div class="carousel-caption" id="s1cap1">
                            <p class="animated bounceInRight" style="animation-delay:1s;color:black">Self Evaluate Your <br> Preparation With BrainStormer</p>
                        </div>
                        <div class="carousel-caption" id="s1cap2">
                            <p class="animated bounceInRight" style="animation-delay:2s;color:black">>Wide Range of Test Category</p>
                        </div>
                        <div class="carousel-caption" id="s1cap3">
                            <p class="animated bounceInRight" style="animation-delay:2s;color:black">>Attempt Unlimited Tests</p>
                        </div>
                        <div class="carousel-caption" id="s1cap4">
                            <p class="animated bounceInRight" style="animation-delay:2s;color:black">>Be A Topper Of The Week</p>
                        </div>
                        <div class="carousel-caption" id="s1cap5">
                            <p class="animated bounceInRight" style="animation-delay:3s"><a href="#"><img src="images/attempt_demo.png"></a></p>
                        </div>
                        <div class="carousel-caption" id="s1cap6">
                            <p class="animated bounceInRight" style="animation-delay:4s"><a href="#"><img src="images/blk_btn_demo.png"></a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider2.jpg" alt="..." class="animated bounceInRight">
                       <div class="carousel-caption" id="s2cap1">
                            <p class="animated bounceInRight" style="animation-delay:1s">BrainStormer</p>
                       </div>
                        <div class="carousel-caption" id="s2cap2">
                            <p class="animated bounceInRight" style="animation-delay:2s">>Attempt Test</p>
                       </div>
                       <div class="carousel-caption" id="s2cap3">
                           <p class="animated bounceInRight" style="animation-delay:3s">AnyTime<br>AnyWhere</p>
                       </div>
                       <div class="carousel-caption" id="s2cap4">
                            <p class="animated bounceInRight" style="animation-delay:4s">>Feature Your Test With Result,<br>Time and Password Protected</p>
                       </div>
                    </div>
                    <div class="item">
                        <img src="images/slider3.jpg" alt="..." class="animated bounceInRight">
                       <div class="carousel-caption" id="s3cap1">
                            <p class="animated bounceInRight" style="animation-delay:1s">Prepare For Different Tests On Single Platform</p>
                       </div>
                       <div class="carousel-caption" id="s3cap2">
                            <p class="animated bounceInRight" style="animation-delay:2s">Get Full Analysis Of Your Result</p>
                       </div>
                       <div class="carousel-caption" id="s3cap3">
                            <p class="animated bounceInRight" style="animation-delay:3s">Compete Among Top Students Online</p>
                       </div>
                    </div>
                    <div class="item">
                        <img src="images/slider4.jpg" alt="..." class="animated bounceInRight">
                       <div class="carousel-caption" id="s4cap1">
                            <p class="animated bounceInRight" style="animation-delay:1s">BrainStormer</p>
                       </div>
                       <div class="carousel-caption" id="s4cap2">
                            <p class="animated bounceInRight" style="animation-delay:1s">Your Online Test Partner</p>
                       </div>
                       <div class="carousel-caption" id="s4cap3">
                            <p class="animated bounceInRight" style="animation-delay:2s">>Attempt Various Tests</p>
                       </div>
                       <div class="carousel-caption" id="s4cap4">
                            <p class="animated bounceInRight" style="animation-delay:2s">>Test Your Knowledge With Us</p>
                       </div>
                       <div class="carousel-caption" id="s4cap5">
                           <p class="animated bounceInRight" style="animation-delay:3s"><a href="#">Show Category For Tests</a></p>
                       </div>
                       <div class="carousel-caption" id="s4cap6">
                            <p class="animated bounceInRight" style="animation-delay:4s"><a href="#"><img src="images/blk_btn_demo.png"></a></p>
                       </div>
                       <div class="carousel-caption" id="s4cap7">
                           <p><img src="images/slide_pc.png"></p>
                       </div>
                    </div>

                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                </a>
                </div>

            </header>

            <div class="clearfix common-cont intro_counter">
                <div class="container">
                            <div class="">
                              <div class="col-xs-6 col-sm-3 intro_counter_item">
                                      <p class="spincrement">150 +</p>
                                      <p class="counter_desc">Online Tests</p>
                              </div>

                              <div class="col-xs-6 col-sm-3 intro_counter_item">
                                      <p class="spincrement">5000 +</p>
                                      <p class="counter_desc">Test Takers</p>
                              </div>

                              <div class="col-xs-6 col-sm-3 intro_counter_item">
                                      <p class="spincrement">15000+</p>
                                      <p class="counter_desc">Tests Attempted</p>
                              </div>

                              <div class="col-xs-6 col-sm-3 intro_counter_item">
                                      <p class="spincrement">200000+</p>
                                      <p class="counter_desc">Questions Attempted</p>
                              </div>
                            </div>
                </div>
            </div>

            <div class="container">

            </div>
            <br/>
            <br/>
            <br/>
            <br/>


            <div class="footer">
                <div class="container">
                    <div class="col-xs-12 col-md-8 footer-block">
                        <h6>About Us</h6>
                        <p>
                          BrainStormer.com is one of the most popular and most comprehensive online test platform. We provide deep analysis of your performance through our intuitive graphical reports and help you improve your skills by pointing out your weak areas. </p>
                        <p>
                          <a href="Cookie.html" class="margin-r-5"> Cookie Policy</a>
                          <a href="Privacy.html" class="margin-r-5"> Privacy Policy</a>
                          <a href="Terms.html"> Terms of Usage</a>
                        </p>

                    </div>

                    <div class="col-xs-12 col-md-4 footer-block">
                        <h6>Our Social Pages</h6>
                        <div class="social-icons-block">
                            <ul>

                                <li>
                                    <a href="#" title="Facebook Page" rel="" target="_blank"><span class="fa fa-facebook"></span></a>
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
                     
                      <form method="POST" action="log.jsp" class="form-horizontal" role="form">
                        <div class="form-loader hidden">
                          <p><i class="fa fa-pulse fa-spinner "></i></p>
                        </div>
                        <input type='hidden' name='csrfmiddlewaretoken' value='CLt6QBFogpDn6H6nLRbxbUnJsg32UY1z' />
                        <div class="form-group">
                          <label for="login_email" class="col-sm-3 control-label">Email</label>
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
                              <button type="submit" id="login_btn" class="btn btn-success btn-block" NAME="Submit">Sign in</button>
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

            <script src="JS/accounts3f56.js?v=11" type="text/javascript"></script>
            <script src="JS/defer_testpot3f56.js?v=11" type="text/javascript"></script>
        
    </body>
</html>
