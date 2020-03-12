<%-- 
    Document   : welcome
    Created on : 26 Feb, 2020, 11:50:36 PM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        out.println("<body>");
        out.println("<h1>Welcome " +request.getParameter("email") + "</h1>");
        out.println("</body>");
%>
</html>
