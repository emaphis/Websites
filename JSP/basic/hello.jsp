<%-- 
    Document   : hello
    Created on : Jul 22, 2020, 2:57:48 PM
    Author     : emaphis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World dynamic HTML</title>
    </head>
    <body>
        Hello World!
        <%
            out.println("<br/> Your IP address is " + request.getRemoteAddr());
            
            String userAgent = request.getHeader("user-agent");
            String browser = "unknown";
            
            out.print("<br/>and your browser is ");
            if (userAgent != null) {
                if (userAgent.indexOf("MSIE") > -1) {
                    browser = "MS Internet Explorer";
                } else if (userAgent.indexOf("Firefox") > -1) {
                    browser = "Mozilla Firefox";
                } else if (userAgent.indexOf("Opera") > -1) {
                    browser = "Opera";
                } else if (userAgent.indexOf("Chrome") > -1) {
                    browser = "Google Chrome";
                } else if (userAgent.indexOf("Safari") > -1) {
                    browser = "Apple Safari";
                }
            }
            out.println(browser);
        %>
    </body>
</html>
