<%-- 
    Document   : Logout.jsp
    Created on : 3 Jul, 2019, 9:38:44 AM
    Author     : mahima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
       if(session.getAttribute("CurrentUser")!= null){
           
    response.sendRedirect("Login.jsp");
       }
       %>
    </body>
</html>
