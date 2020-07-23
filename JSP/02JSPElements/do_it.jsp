<%-- 
    Document   : do_it
    Created on : Jul 22, 2020, 5:50:15 PM
    Author     : emaphis
    example of enable and disable conditional code, with an application object
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conditional code on</title>
    </head>
    <body>
        Conditional code
        <%
            application.setAttribute("do_it", "");
            if (application.getAttribute("do_it") != null) out.print(" yes ");
            application.removeAttribute("do_it");
            if (application.getAttribute("do_it") == null) out.print(" not ");
        %>
    </body>
</html>
