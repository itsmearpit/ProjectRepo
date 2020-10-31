<%-- 
    Document   : upldblk2
    Created on : 13 May, 2019, 8:22:48 AM
    Author     : Awesome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%!
String tid;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%

    tid=request.getParameter("TID");
    response.sendRedirect("Admin.jsp?flg=8&tid="+tid);

%>
    </body>
</html>