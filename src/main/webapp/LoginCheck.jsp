<%@ page language="java"%>
<%@ page import="java.lang.*"%>
<html>
    <body>
        <% 
            String username = request.getParameter("username");
            String password = request.getParameter("pass");
            if ((username.equals("admin") && password.equals("admin"))) {
                //session.setAttribute("username", username);
                response.sendRedirect("HomeLoginDone.jsp");
            } else {
                //response.sendRedirect("Error.jsp");
                out.println("Dados Incorrectos!");
            }%> 
    </body> 
</html>
