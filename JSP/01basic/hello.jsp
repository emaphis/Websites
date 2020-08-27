<%--
    Document   : hello
    Created on : Jul 22, 2020, 2:57:48 PM
    Author     : emaphis
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World dynamic HTML</title>
    </head>
    <body>
        Hello Dynamic World!
        <%
        String userAgent = request.getHeader("user-agent");
        out.println("<br/>user-agent " + userAgent);
        %>
        <p>
        <% out.println(" *** End of output! ***\n"); %>
    </body>
</html>
