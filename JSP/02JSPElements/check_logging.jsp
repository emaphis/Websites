<%-- 
    Document   : check_logging
    Created on : Jul 22, 2020, 6:36:49 PM
    Author     : emaphis
    Using an attribulte to control logging
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="MyClasses.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checking logging</title>
    </head>
    <body>
        <h1>Checking logging</h1>
        <%
             MyLog log = (MyLog) application.getAttribute("logFile");
            if (log != null) {
                log.println("This is my entry in the log");
            }
        %>
    </body>
</html>
