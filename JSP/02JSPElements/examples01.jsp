<%-- 
    Document   : examples01
    Created on : Jul 22, 2020, 4:53:39 PM
    Author     : emaphis
    examples of JSP elements
    A JSP page is: 'HTML code'
    and 'JSP elements' such as 'scripting elements', 'directive elements', and 'action elements'.
    Implicit objects: application, config, exception, out, pageContext, request, response, and session.
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP example Page</title>
    </head>
    <body>
        <h1>JSP elements</h1>
        <%-- action items --%>
        <jsp:include page="another.jsp" />

        <%-- a scriptlet --%>
        <% out.println("Hello world!"); %>
        <% if (true) { %>
        <p>This is only shown if condition is satisfied</p>
        <% }%>

        <%-- Expressions --%>
        <%@page import="java.util.Date" %>
        Server data and time: <%=new Date()%>
        <p>
            <%=(false) ? "yes" : "no"%>

            <%-- declaration items  --%>
            <%
                String aString = "abcdefg";
                int k = aString.length();
                char c = aString.charAt(4);
                final String NAME = "John Doe";
            %>
            <%  int k1 = 0; %>
            <%! int k2 = 0; %>
            <%! static int k3 = 0;%>

            <%-- objects and arrays --%>
            <%
                int[] intArray1;
                int[] intArrya2 = {10, 100, 1000};
                String[] stringArray = {"a", "bb"};

                int[] array = new int[10];

                int[][] table1 = {{11, 12, 13}, {21, 22}};
                int[][] table2 = new int[2][3];
            %>

            <%-- Implicit Objects -
                   out, request, - application session
                 Scopes -
                   page, request, session, application
            --%>

            <%-- application object - see log pages --%>
        <p>
            <%-- config object --%>
            <% String name = config.getServletName();
                out.println(name);
            %>

            <%-- exception object  - see stack_trace.jsp --%>
        <p>
            <%-- the out object  --%>
            <% out.print("abc");%>
            <%="abc"%>
            abc

            <%-- pageContext object --%>
            <%
                pageContext.setAttribute("attrName", PageContext.PAGE_SCOPE);
                pageContext.removeAttribute("attrName", PageContext.PAGE_SCOPE);
            %>

            <%-- request object  --%>
            
    </body>
</html>
