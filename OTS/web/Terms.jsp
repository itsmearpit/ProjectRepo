<%-- 
    Document   : Terms
    Created on : 30 Mar, 2019, 9:30:06 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String email="null";
%>


<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from testpot.com/terms-of-usage/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:32:30 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  
    <!-- Required meta tags always come first -->
    <title>BrainStormer.com|Terms Of Usage</title>
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
.website_info_wrapper p{
  line-height: 22px;
}
#ppBody {
    font-size: 11pt;
    width: 100%;
    margin: 0 auto;
    text-align: justify;
}

h2{
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
    border-bottom:1px solid #ddd;
    color:#666;
    text-align: center;
}
.grayText{
  border-bottom:1px solid #eee;
  padding-bottom: 5px;
  color:#666;
  font-weight: bold;
  margin-bottom:10px;
  margin-top:20px;
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
                          <a href="Home.jsp">Logout</a>
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
      <div id="ppHeader">Terms of Service</div>
      <div class="grayText">Introduction</div>
      <p>These terms and conditions govern your use of this website; by using this website, you accept these terms and conditions in full and without reservation. If you disagree with these terms and conditions or any part of these terms and conditions, you must not use this website.</p>
      <p>You must be at least 18 [eighteen] years of age to use this website. By using this website and by agreeing to these terms and conditions, you warrant and represent that you are at least 18 years of age.</p>
      <div class="grayText">License to use website</div>
      <p>Unless otherwise stated, www.BrainStormer.com and/or its licensors own the intellectual property rights published on this website and materials used on www.BrainStormer.com. Subject to the license below, all these intellectual property rights are reserved.</p>
      <p>You may view, download for caching purposes only, and print pages, files or other content from the website for your own personal use, subject to the restrictions set out below and elsewhere in these terms and conditions.</p>
      <p>You must not:</p>
      <ul>
        <li>republish material from this website in neither print nor digital media or documents (including republication on another website);</li>
        <li>sell, rent or sub-license material from the website;</li>
        <li>show any material from the website in public;</li>
        <li>reproduce, duplicate, copy or otherwise exploit material on this website for a commercial purpose;</li>
        <li>edit or otherwise modify any material on the website;</li>
        <li>redistribute material from this website - except for content specifically and expressly made available for redistribution; or</li>
        <li>republish or reproduce any part of this website through the use of iframes or screenscrapers.</li>
      </ul>
      <p>Where content is specifically made available for redistribution, it may only be redistributed within your organisation.</p>
      <div class="grayText">Acceptable use</div>
      <p>You must not use this website in any way that causes, or may cause, damage to the website or impairment of the availability or accessibility of www.BrainStormer.com or in any way which is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity.</p>
      <p>You must not use this website to copy, store, host, transmit, send, use, publish or distribute any material which consists of (or is linked to) any spyware, computer virus, Trojan horse, worm, keystroke logger, rootkit or other malicious computer software.</p>
      <p>You must not conduct any systematic or automated data collection activities on or in relation to this website without www.BrainStormer.com's express written consent.
        <br> This includes:
      </p>
      <ul>
        <li>scraping</li>
        <li>data mining</li>
        <li>data extraction</li>
        <li>data harvesting</li>
        <li>'framing' (iframes)</li>
        <li>Article 'Spinning'</li>
      </ul>
      <p></p>
      <p>You must not use this website or any part of it to transmit or send unsolicited commercial communications.</p>
      <p>You must not use this website for any purposes related to marketing without the express written consent of www.BrainStormer.com.</p>
      <!-- If password protected areas BEGIN -->
      <div class="grayText">Restricted access</div>
      <p>Access to certain areas of this website is restricted. www.BrainStormer.com reserves the right to restrict access to certain areas of this website, or at our discretion, this entire website. www.BrainStormer.com may change or modify this policy without notice.</p>
      <p>If www.BrainStormer.com provides you with a user ID and password to enable you to access restricted areas of this website or other content or services, you must ensure that the user ID and password are kept confidential. You alone are responsible for your password and user ID security..</p>
      <p>www.BrainStormer.com may disable your user ID and password at www.BrainStormer.com's sole discretion without notice or explanation.</p>
      <div class="grayText">User content</div>
      <p>In these terms and conditions, “your user content” means material (including without limitation text, images, audio material, video material and audio-visual material) that you submit to this website, for whatever purpose.</p>
      <p>You grant to www.BrainStormer.com a worldwide, irrevocable, non-exclusive, royalty-free license to use, reproduce, adapt, publish, translate and distribute your user content in any existing or future media. You also grant to www.BrainStormer.com the right to sub-license these rights, and the right to bring an action for infringement of these rights.</p>
      <p>Your user content must not be illegal or unlawful, must not infringe any third party's legal rights, and must not be capable of giving rise to legal action whether against you or www.BrainStormer.com or a third party (in each case under any applicable law).</p>
      <p>You must not submit any user content to the website that is or has ever been the subject of any threatened or actual legal proceedings or other similar complaint.</p>
      <p>www.BrainStormer.com reserves the right to edit or remove any material submitted to this website, or stored on the servers of www.BrainStormer.com, or hosted or published upon this website.</p>
      <p>www.BrainStormer.com's rights under these terms and conditions in relation to user content, www.BrainStormer.com does not undertake to monitor the submission of such content to, or the publication of such content on, this website.</p>
      <div class="grayText">No warranties</div>
      <p>This website is provided “as is” without any representations or warranties, express or implied. www.BrainStormer.com makes no representations or warranties in relation to this website or the information and materials provided on this website.</p>
      <p>Without prejudice to the generality of the foregoing paragraph, www.BrainStormer.com does not warrant that:</p>
      <ul>
        <li>this website will be constantly available, or available at all; or</li>
        <li>the information on this website is complete, true, accurate or non-misleading.</li>
      </ul>
      <p>Nothing on this website constitutes, or is meant to constitute, advice of any kind. If you require advice in relation to any legal, financial or medical matter you should consult an appropriate professional.</p>
      <div class="grayText">Limitations of liability</div>
      <p>www.BrainStormer.com will not be liable to you (whether under the law of contact, the law of torts or otherwise) in relation to the contents of, or use of, or otherwise in connection with, this website:</p>
      <ul>
        <li>to the extent that the website is provided free-of-charge, for any direct loss;</li>
        <li>for any indirect, special or consequential loss; or</li>
        <li>for any business losses, loss of revenue, income, profits or anticipated savings, loss of contracts or business relationships, loss of reputation or goodwill, or loss or corruption of information or data.</li>
      </ul>
      <p>These limitations of liability apply even if www.BrainStormer.com has been expressly advised of the potential loss.</p>
      <div class="grayText">Exceptions</div>
      <p>Nothing in this website disclaimer will exclude or limit any warranty implied by law that it would be unlawful to exclude or limit; and nothing in this website disclaimer will exclude or limit the liability of BrainStormer in respect of any:</p>
      <ul>
        <li>death or personal injury caused by the negligence of www.BrainStormer.com or its agents, employees or shareholders/owners;</li>
        <li>fraud or fraudulent misrepresentation on the part of www.BrainStormer.com; or</li>
        <li>matter which it would be illegal or unlawful for www.BrainStormer.com to exclude or limit, or to attempt or purport to exclude or limit, its liability.</li>
      </ul>
      <div class="grayText">Reasonableness</div>
      <p>By using this website, you agree that the exclusions and limitations of liability set out in this website disclaimer are reasonable.</p>
      <p>If you do not think they are reasonable, you must not use this website.</p>
      <div class="grayText">Other parties</div>
      <p>You accept that, as a limited liability entity, www.BrainStormer.com has an interest in limiting the personal liability of its officers and employees. You agree that you will not bring any claim personally against www.BrainStormer.com's officers or employees in respect of any losses you suffer in connection with the website.</p>
      <p>Without prejudice to the foregoing paragraph, you agree that the limitations of warranties and liability set out in this website disclaimer will protect www.BrainStormer.com's officers, employees, agents, subsidiaries, successors, assigns and sub-contractors as well as www.BrainStormer.com.</p>
      <div class="grayText">Unenforceable provisions</div>
      <p>If any provision of this website disclaimer is, or is found to be, unenforceable under applicable law, that will not affect the enforceability of the other provisions of this website disclaimer.</p>
      <div class="grayText">Indemnity</div>
      <p>You hereby indemnify www.BrainStormer.com and undertake to keep www.BrainStormer.com indemnified against any losses, damages, costs, liabilities and expenses (including without limitation legal expenses and any amounts paid by www.BrainStormer.com to a third party in settlement of a claim or dispute on the advice of www.BrainStormer.com's legal advisers) incurred or suffered by www.BrainStormer.com arising out of any breach by you of any provision of these terms and conditions, or arising out of any claim that you have breached any provision of these terms and conditions.</p>
      <div class="grayText">Breaches of these terms and conditions</div>
      <p>Without prejudice to www.BrainStormer.com's other rights under these terms and conditions, if you breach these terms and conditions in any way, www.BrainStormer.com may take such action as www.BrainStormer.com deems appropriate to deal with the breach, including suspending your access to the website, prohibiting you from accessing the website, blocking computers using your IP address from accessing the website, contacting your internet service provider to request that they block your access to the website and/or bringing court proceedings against you.</p>
      <div class="grayText">Variation</div>
      <p>www.BrainStormer.com may revise these terms and conditions from time-to-time. Revised terms and conditions will apply to the use of this website from the date of the publication of the revised terms and conditions on this website. Please check this page regularly to ensure you are familiar with the current version.</p>
      <div class="grayText">Assignment</div>
      <p>www.BrainStormer.com may transfer, sub-contract or otherwise deal with www.BrainStormer.com's rights and/or obligations under these terms and conditions without notifying you or obtaining your consent.</p>
      <p>You may not transfer, sub-contract or otherwise deal with your rights and/or obligations under these terms and conditions.</p>
      <div class="grayText">Severability</div>
      <p>If a provision of these terms and conditions is determined by any court or other competent authority to be unlawful and/or unenforceable, the other provisions will continue in effect. If any unlawful and/or unenforceable provision would be lawful or enforceable if part of it were deleted, that part will be deemed to be deleted, and the rest of the provision will continue in effect.</p>
      <div class="grayText">Entire agreement</div>
      <p>These terms and conditions, together with www.BrainStormer.com's Privacy Policy constitute the entire agreement between you and www.BrainStormer.com in relation to your use of this website, and supersede all previous agreements in respect of your use of this website.</p>
      <div class="grayText">Law and jurisdiction</div>
      <p>These terms and conditions will be governed by and construed in accordance with the laws of Karnataka, India, and any disputes relating to these terms and conditions will be subject to the exclusive jurisdiction of the courts of Karnataka, India.</p>
      <div class="grayText">About these website Terms of Service</div>
      <div class="innerText">www.BrainStormer.com</div>
      <div class="innerText">
        <br>Last Edited on 4 Jan 2016
      </div>
    
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
  

  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../../www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-71941779-1', 'auto');
    ga('send', 'pageview');

  </script>
  </body>

<!-- Mirrored from testpot.com/terms-of-usage/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:32:30 GMT -->
</html>
