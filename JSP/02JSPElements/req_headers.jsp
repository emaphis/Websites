<%-- 
    Document   : req_headers
    Created on : Jul 22, 2020, 11:40:31 PM
    Author     : emaphis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Headers</title>
    </head>
    <body>
        <h1>Request Headers</h1>
        <%
            Enumeration headers = request.getHeaderNames();
            int kh = 0;
            while (headers.hasMoreElements()) {
                String hName = (String)headers.nextElement();
                out.println("-----" + hName);
                Enumeration hValues = request.getHeaders(hName);
                while (hValues.hasMoreElements()) {
                    out.println("<br/>&nbsp;&nbsp;&nbsp;" + hValues.nextElement());
                }
                out.println("<br/");
            }
        %>
    </body>
</html>
