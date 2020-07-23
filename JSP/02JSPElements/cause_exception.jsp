<%-- 
    Document   : cause_exception
    Created on : Jul 22, 2020, 7:42:35 PM
    Author     : emaphis
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="stack_trace.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Null pointer exception</title>
    </head>
    <body>
        <h1>Cause null pointer exception</h1>
        <%
            String a = request.getParameter("notThere");
            int len = a.length();  // cause as null pointer exception.
        %>
    </body>
</html>
