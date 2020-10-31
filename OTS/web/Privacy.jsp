<%-- 
    Document   : Privacy
    Created on : 30 Mar, 2019, 9:11:38 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String email="null";
%>


<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from testpot.com/privacy-policy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:32:26 GMT -->
<!-- Added by HTTrack --><!--<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  
    <!-- Required meta tags always come first -->
    <title>BrainStormer.com|Privacy Policy</title>
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
    <div id="ppHeader">Privacy Policy</div>
    <div id="ppBody">
      <div style="clear:both;height:10px;"></div>
      <div class="innerText">This privacy policy has been compiled to better serve those who are concerned with how their 'Personally identifiable information' (PII) is being used online. PII, as used in US privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website.
        <br>
      </div><span id="infoCo"></span>
      <br>
      <div class="grayText"><strong>What personal information do we collect from the people that visit our blog, website or app?</strong></div>
      <br>
      <div class="innerText">When ordering or registering on our site, as appropriate, you may be asked to enter your name, email address, phone number or other details to help you with your experience.</div>
      <br>
      <div class="grayText"><strong>When do we collect information?</strong></div>
      <br>
      <div class="innerText">We collect information from you when you register on our site, fill out a form or enter information on our site.</div>
      <br><span id="infoUs"></span>
      <br>
      <div class="grayText"><strong>How do we use your information? </strong></div>
      <br>
      <div class="innerText"> We may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:
        <br>
        <br>
      </div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> To personalize user's experience and to allow us to deliver the type of content and product offerings in which you are most interested.</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> To improve our website in order to better serve you.</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> To administer a contest, promotion, survey or other site feature.</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> To send periodic emails regarding your order or other products and services.</div><span id="infoPro"></span>
      <br>
      <div class="grayText"><strong>How do we protect visitor information?</strong></div>
      <br>
      <div class="innerText">We do not use vulnerability scanning and/or scanning to PCI standards.</div>
      <div class="innerText">We do not use Malware Scanning.
        <br>
        <br>
      </div>
      <div class="innerText">We do not use an SSL certificate</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> We do not need an SSL because:</div>
      <div class="innerText">we have plans to integrate ssl in a few months</div><span id="coUs"></span>
      <br>
      <div class="grayText"><strong>Do we use 'cookies'?</strong></div>
      <br>
      <div class="innerText">Yes. Cookies are small files that a site or its service provider transfers to your computer's hard drive through your Web browser (if you allow) that enables the site's or service provider's systems to recognize your browser and capture and remember certain information. For instance, we use cookies to help us remember and process the items in your shopping cart. They are also used to help us understand your preferences based on previous or current site activity, which enables us to provide you with improved services. We also use cookies to help us compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.</div>
      <div class="innerText">
        <br><strong>We use cookies to:</strong></div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Understand and save user's preferences for future visits.</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Keep track of advertisements.</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Compile aggregate data about site traffic and site interactions in order to offer better site experiences and tools in the future. We may also use trusted third party services that track this information on our behalf.</div>
      <div class="innerText">
        <br>You can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies. You do this through your browser (like Internet Explorer) settings. Each browser is a little different, so look at your browser's Help menu to learn the correct way to modify your cookies.
        <br>
      </div>
      <div class="innerText">
        <br><strong>If users disable cookies in their browser:</strong></div>
      <br>
      <div class="innerText">If you disable cookies off, some features will be disabled It will turn off some of the features that make your site experience more efficient and some of our services will not function properly.</div>
      <br>
      <div class="grayText"><strong>Third Party Disclosure</strong></div>
      <br>
      <div class="innerText">We do not sell, trade, or otherwise transfer to outside parties your personally identifiable information unless we provide you with advance notice. This does not include website hosting partners and other parties who assist us in operating our website, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect ours or others' rights, property, or safety.
        <br>
        <br> However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses. </div><span id="trLi"></span>
      <br>
      <div class="grayText"><strong>Third party links</strong></div>
      <br>
      <div class="innerText">Occasionally, at our discretion, we may include or offer third party products or services on our website. These third party sites have separate and independent privacy policies. We therefore have no responsibility or liability for the content and activities of these linked sites. Nonetheless, we seek to protect the integrity of our site and welcome any feedback about these sites.</div><span id="gooAd"></span>
      <br>
      <div class="blueText"><strong>Google</strong></div>
      <br>
      <div class="innerText">Google's advertising requirements can be summed up by Google's Advertising Principles. They are put in place to provide a positive experience for users. https://support.google.com/adwordspolicy/answer/1316548?hl=en
        <br>
        <br>
      </div>
      <div class="innerText">We use Google AdSense Advertising on our website.</div>
      <div class="innerText">
        <br>Google, as a third party vendor, uses cookies to serve ads on our site. Google's use of the DART cookie enables it to serve ads to our users based on their visit to our site and other sites on the Internet. Users may opt out of the use of the DART cookie by visiting the Google ad and content network privacy policy.
        <br>
      </div>
      <div class="innerText">
        <br><strong>We have implemented the following:</strong></div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Remarketing with Google AdSense</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Google Display Network Impression Reporting</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Demographics and Interests Reporting</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> DoubleClick Platform Integration
        <br>
      </div>
      <br>
      <div class="innerText">We along with third-party vendors, such as Google use first-party cookies (such as the Google Analytics cookies) and third-party cookies (such as the DoubleClick cookie) or other third-party identifiers together to compile data regarding user interactions with ad impressions, and other ad service functions as they relate to our website. </div>
      <div class="innerText">
        <br>Opting out:
        <br> Users can set preferences for how Google advertises to you using the Google Ad Settings page. Alternatively, you can opt out by visiting the Network Advertising initiative opt out page or permanently using the Google Analytics Opt Out Browser add on.</div><span id="calOppa"></span>
      <br>
      <div class="blueText"><strong>California Online Privacy Protection Act</strong></div>
      <br>
      <div class="innerText">CalOPPA is the first state law in the nation to require commercial websites and online services to post a privacy policy. The law's reach stretches well beyond California to require a person or company in the United States (and conceivably the world) that operates websites collecting personally identifiable information from California consumers to post a conspicuous privacy policy on its website stating exactly the information being collected and those individuals with whom it is being shared, and to comply with this policy. - See more at: http://consumercal.org/california-online-privacy-protection-act-caloppa/#sthash.0FdRbT51.dpuf
        <br>
      </div>
      <div class="innerText">
        <br><strong>According to CalOPPA we agree to the following:</strong></div>
      <div class="innerText">Users can visit our site anonymously</div>
      <div class="innerText">Once this privacy policy is created, we will add a link to it on our home page, or as a minimum on the first significant page after entering our website.</div>
      <div class="innerText">Our Privacy Policy link includes the word 'Privacy', and can be easily be found on the page specified above.</div>
      <div class="innerText">
        <br>Users will be notified of any privacy policy changes:</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> On our Privacy Policy Page</div>
      <div class="innerText">Users are able to change their personal information:</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> By logging in to their account</div>
      <div class="innerText">
        <br><strong>How does our site handle do not track signals?</strong></div>
      <div class="innerText">We don't honor do not track signals and do not track, plant cookies, or use advertising when a Do Not Track (DNT) browser mechanism is in place. We don't honor them because:
        <br>
      </div>
      <div class="innerText">It is essential for the website operation</div>
      <div class="innerText">
        <br><strong>Does our site allow third party behavioral tracking?</strong></div>
      <div class="innerText">It's also important to note that we allow third party behavioral tracking</div><span id="coppAct"></span>
      <br>
      <div class="blueText"><strong>COPPA (Children Online Privacy Protection Act)</strong></div>
      <br>
      <div class="innerText">When it comes to the collection of personal information from children under 13, the Children's Online Privacy Protection Act (COPPA) puts parents in control. The Federal Trade Commission, the nation's consumer protection agency, enforces the COPPA Rule, which spells out what operators of websites and online services must do to protect children's privacy and safety online.
        <br>
        <br>
      </div>
      <div class="innerText">We do not specifically market to children under 13.</div><span id="ftcFip"></span>
      <br>
      <div class="blueText"><strong>Fair Information Practices</strong></div>
      <br>
      <div class="innerText">The Fair Information Practices Principles form the backbone of privacy law in the United States and the concepts they include have played a significant role in the development of data protection laws around the globe. Understanding the Fair Information Practice Principles and how they should be implemented is critical to comply with the various privacy laws that protect personal information.
        <br>
        <br>
      </div>
      <div class="innerText"><strong>In order to be in line with Fair Information Practices we will take the following responsive action, should a data breach occur:</strong></div>
      <div class="innerText">We will notify the users via email</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Within 7 business days</div>
      <div class="innerText">We will notify the users via in site notification</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Within 7 business days</div>
      <div class="innerText">
        <br>We also agree to the individual redress principle, which requires that individuals have a right to pursue legally enforceable rights against data collectors and processors who fail to adhere to the law. This principle requires not only that individuals have enforceable rights against data users, but also that individuals have recourse to courts or a government agency to investigate and/or prosecute non-compliance by data processors.</div><span id="canSpam"></span>
      <br>
      <div class="blueText"><strong>CAN SPAM Act</strong></div>
      <br>
      <div class="innerText">The CAN-SPAM Act is a law that sets the rules for commercial email, establishes requirements for commercial messages, gives recipients the right to have emails stopped from being sent to them, and spells out tough penalties for violations.
        <br>
        <br>
      </div>
      <div class="innerText"><strong>We collect your email address in order to:</strong></div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Send information, respond to inquiries, and/or other requests or questions.</div>
      <div class="innerText">
        <br><strong>To be in accordance with CANSPAM we agree to the following:</strong></div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> NOT use false, or misleading subjects or email addresses</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Identify the message as an advertisement in some reasonable way</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Include the physical address of our business or site headquarters</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Monitor third party email marketing services for compliance, if one is used.</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Honor opt-out/unsubscribe requests quickly</div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Allow users to unsubscribe by using the link at the bottom of each email</div>
      <div class="innerText"><strong><br>If at any time you would like to unsubscribe from receiving future emails, you can email us at</strong></div>
      <div class="innerText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>☯</strong> Follow the instructions at the bottom of each email.</div> and we will promptly remove you from <strong>ALL</strong> correspondence.</div>
    <br><span id="ourCon"></span>
    <br>
    <div class="blueText"><strong>Contacting Us</strong></div>
    <br>
    <div class="innerText">If there are any questions regarding this privacy policy you may contact us using the information below.
      <br>
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


                      <form method="post" action="log.jsps" class="form-horizontal" role="form">
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

<!-- Mirrored from testpot.com/privacy-policy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 19 Jan 2019 08:32:26 GMT -->
</html>
