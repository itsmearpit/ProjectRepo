<%-- 
    Document   : upldmnl
    Created on : 10 May, 2019, 9:58:49 PM
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
    response.sendRedirect("Admin.jsp?flg=6&tid="+tid);

%>
    </body>
</html>
