<%-- 
    Document   : newjsp
    Created on : 23 Apr, 2019, 6:24:23 PM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
        <h1>Popup/Modal Windows without JavaScript</h1>
        <div class="box">
                <a class="button" href="#popup1">Let me Pop up</a>
        </div>

        <div id="popup1" class="overlay">
                <div class="popup">
                        <h2>Here i am</h2>
                        <a class="close" href="#">&times;</a>
                        <div class="content">
                                Thank to pop me out of that button, but now i'm done so you can close this window.
                        </div>
                </div>
        </div>
    </body>
</html>
