<%-- 
    Document   : log_off
    Created on : Jul 22, 2020, 6:28:53 PM
    Author     : emaphis
    Using an attribulte to control logging
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MyClasses.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Switch the log OFF</title>
    </head>
    <body>
        <h1>Switch the log OFF</h1>
        <%
            MyLog log = (MyLog) application.getAttribute("logFile");
            if (log != null) {
                log.println("Logging disabled");
                log.close();
                application.removeAttribute("logFile");
            }
        %>
        Done.
    </body>
</html>
