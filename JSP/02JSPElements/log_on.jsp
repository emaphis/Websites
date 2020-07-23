<%-- 
    Document   : log_on
    Created on : Jul 22, 2020, 6:03:49 PM
    Author     : emaphis
    Using an attribulte to control logging
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MyClasses.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Switch the log ON</title>
    </head>
    <body>
        <h1>Switch LOG on</h1>
        <%
            MyLog log = (MyLog) application.getAttribute("logFile");
            if (log == null) {
                try {
                    log = new MyLog("logs\\mylog.log");
                    application.setAttribute("logFile", log);
                    log.println("Logging enabled");
                    out.println("Logging enabled");
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
            } else {
                log.println("Attempt to enable logging");
                out.println("logging was already enabled");
            }
        %>
    </body>
</html>
