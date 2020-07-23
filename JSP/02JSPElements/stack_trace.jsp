<%-- 
    Document   : stack_trace
    Created on : Jul 22, 2020, 7:25:58 PM
    Author     : emaphis
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.io.*"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Print stack trace</title>
    </head>
    <body>
        <h1>Print stack trace</h1>
        From exception.getStackTrace():<br/>
        <pre>
            <%
                StackTraceElement[] trace = exception.getStackTrace();
                for (int k = 0; k < trace.length; k++) {
                    out.println(trace[k]);
                }
            %>
        </pre>
        Printed with exception.printStackTrace(new PrinterWriter(out)):
        <pre>
            <%
                exception.printStackTrace(new PrintWriter(out));
            %>
        </pre>
    </body>
</html>
