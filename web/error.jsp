<%-- 
    Document   : error
    Created on : 5 Apr, 2019, 7:17:09 PM
    Author     : anirudh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>

<center><p style="color:red">Incorrect username or password. Please try again </p></center>

<%

getServletContext().getRequestDispatcher("/index.jsp").include(request, 
response);

%>

</body>
</html>
