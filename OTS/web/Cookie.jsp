<%-- 
    Document   : Cookie2
    Created on : 29 Mar, 2019, 10:17:44 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String email;
%>


<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from testpot.com/cookie-policy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:32:23 GMT -->
<!-- Added by HTTrack --><!--<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  
    <!-- Required meta tags always come first -->
    <title>BrainStormer.com|Cookie Policy</title>
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
    
    
<style>
.navbar-inverse {
  background-color: #37799E !important;
}

.website_info_wrapper {
  background: #fff;
  margin-top: 10px;
  border: 1px solid #ddd;
  padding: 10px;
  color: #777;
  text-align: justify;
}

.website_info_wrapper p {
  line-height: 22px;
}

#ppBody {
  font-size: 11pt;
  width: 100%;
  margin: 0 auto;
  text-align: justify;
}

h2 {
  border-bottom: 1px solid #eee;
  padding-bottom: 5px;
  color: #666;
  font-weight: bold;
  font-size: 11pt;
}

#ppHeader {
  font-size: 21pt;
  width: 100%;
  margin: 0 auto;
  border-bottom: 1px solid #ddd;
  color: #666;
  text-align: center;
}

.grayText {
  border-bottom: 1px solid #eee;
  padding-bottom: 5px;
  color: #666;
  font-weight: bold;
  margin-bottom: 10px;
  margin-top: 20px;
}
</style>

    <script type='text/javascript'>
      var googletag = googletag || {};
      googletag.cmd = googletag.cmd || [];
      (function() {
        var gads = document.createElement('script');
        gads.async = true;
        gads.type = 'text/javascript';
        var useSSL = 'https:' == document.location.protocol;
        gads.src = (useSSL ? 'https:' : 'http:') +
          '//www.googletagservices.com/tag/js/gpt.js';
        var node = document.getElementsByTagName('script')[0];
        node.parentNode.insertBefore(gads, node);
      })();
    </script>

  <script type='text/javascript'>
  googletag.cmd.push(function() {
    googletag.defineSlot('/293968031/plyogi', [728, 90], 'div-gpt-ad-1451796319140-0').addService(googletag.pubads());
    googletag.defineSlot('/293968031/BigRect', [336, 280], 'div-gpt-ad-1451796765797-0').addService(googletag.pubads());
    googletag.defineSlot('/293968031/Top_Banner_2', [[970, 90], [728, 90]], 'div-gpt-ad-1451797436043-0').addService(googletag.pubads());
    googletag.defineSlot('/293968031/BigRect2', [336, 280], 'div-gpt-ad-1455298205991-1').addService(googletag.pubads());

    googletag.pubads().enableSingleRequest();
    googletag.pubads().collapseEmptyDivs();
    googletag.enableServices();
  });
  </script>

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
                email=(String)session.getAttribute("id");

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
  
<div class="main_container margin-t-100 clearfix">
  <div class="col-sm-8 col-sm-offset-2 padding-10 bg-white website_info_wrapper">
    <div id="ppHeader">Cookie Usage Policy for BrainStormer</div>
    <br>
    <p>
      This page contains the Cookie Policy for BrainStormer.com.
    </p>
    <div class="grayText">What Are Cookies</div>
    <p>
      As is common practice with almost all professional websites this site uses cookies, which are tiny files that are downloaded to your computer, to improve your experience. This page describes what information they gather, how we use it and why we sometimes need to store these cookies. We will also share how you can prevent these cookies from being stored however this may downgrade or 'break' certain elements of the sites functionality.
      <br> For more general information on cookies see the Wikipedia article on HTTP Cookies...
    </p>
    <div class="grayText">How We Use Cookies</div>
    <p>
      We use cookies for a variety of reasons detailed below. Unfortunately in most cases there are no industry standard options for disabling cookies without completely disabling the functionality and features they add to this site. It is recommended that you leave on all cookies if you are not sure whether you need them or not in case they are used to provide a service that you use.
    </p>
    <div class="grayText">Disabling Cookies</div>
    <p>
      You can prevent the setting of cookies by adjusting the settings on your browser (see your browser Help for how to do this). Be aware that disabling cookies will affect the functionality of this and many other websites that you visit. Disabling cookies will usually result in also disabling certain functionality and features of the this site. Therefore it is recommended that you do not disable cookies.
    </p>
    <div class="grayText">The Cookies We Set</div>
    <p>
      If you create an account with us then we will use cookies for the management of the signup process and general administration. These cookies will usually be deleted when you log out however in some cases they may remain afterwards to remember your site preferences when logged out.
    </p>
    <p>
      We use cookies when you are logged in so that we can remember this fact. This prevents you from having to log in every single time you visit a new page. These cookies are typically removed or cleared when you log out to ensure that you can only access restricted features and areas when logged in.
    </p>
    <p>
      In order to provide you with a great experience on this site we provide the functionality to set your preferences for how this site runs when you use it. In order to remember your preferences we need to set cookies so that this information can be called whenever you interact with a page is affected by your preferences.
    </p>
    <div class="grayText">Third Party Cookies</div>
    <p>
      In some special cases we also use cookies provided by trusted third parties. The following section details which third party cookies you might encounter through this site.
    </p>
    <p>
      This site uses Google Analytics which is one of the most widespread and trusted analytics solution on the web for helping us to understand how you use the site and ways that we can improve your experience. These cookies may track things such as how long you spend on the site and the pages that you visit so we can continue to produce engaging content.
      <br> For more information on Google Analytics cookies, see the official Google Analytics page.
    </p>
    <p>
      The Google AdSense service we use to serve advertising uses a DoubleClick cookie to serve more relevant ads across the web and limit the number of times that a given ad is shown to you.
      <br> For more information on Google AdSense see the official Google AdSense privacy FAQ.
    </p>
    <p>
      We also use social media buttons and/or plugins on this site that allow you to connect with your social network in various ways. For these to work the following social media sites including; Facebook. Google, LinkedIn, will set cookies through our site which may be used to enhance your profile on their site or contribute to the data they hold for various purposes outlined in their respective privacy policies.
    </p>
    <div class="grayText">More Information</div>
    <p>
      Hopefully that has clarified things for you and as was previously mentioned if there is something that you aren't sure whether you need or not it's usually safer to leave cookies enabled in case it does interact with one of the features you use on our site. However if you are still looking for more information then you can contact us through one of our preferred contact methods.
    </p>
  </div>
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

<!-- Mirrored from testpot.com/cookie-policy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:32:23 GMT -->
</html>
