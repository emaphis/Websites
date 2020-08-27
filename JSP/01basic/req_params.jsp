<%-- 
    Document   : req_params
    Created on : Jul 22, 2020, 3:36:42 PM
    Author     : emaphis
    Listing the HTML-Request Parameters
    Try: http://localhost:8080/tests/req_params.jsp?a=b&c=d&a=zzz&empty=&empty=&1=22
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.io.*" %>
<!DOCTYPE html>
<%
    Map map = request.getParameterMap();
    Object[] keys = map.keySet().toArray();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Parameters</title>
    </head>
    <body>
        Map size = <%=map.size()%>
        <table border="1">
            <tr>
                <td>Map element</td><td>Par name</td><td>Par value[s]</td>
            </tr>
            <%
                for (int k = 0; k < keys.length; k++) {
                    String[] pars = request.getParameterValues((String) keys[k]);
                    out.print("<tr><td>" + k + "</td><td>'" + keys[k] + "</td><td>");
                    for (int j = 0; j < pars.length; j++) {
                        if (j > 0) out.print(", ");
                        out.print("'" + pars[j] + "'");
                    }
                    out.print("</td></tr>");
                }
            %>
        </table>
    </body>
</html>
