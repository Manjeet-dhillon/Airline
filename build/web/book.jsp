<%-- 
    Document   : book
    Created on : 09-May-2024, 9:50:31 am
    Author     : manjeet singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {

                String name = request.getParameter("name");
                String ano = request.getParameter("adhar");
                String classs = request.getParameter("classs");
                String fcode = request.getParameter("fcode");
                String age = request.getParameter("age");
                String from = request.getParameter("from");
                 String to = request.getParameter("to");
            String gender = request.getParameter("gender");
            
            if(classs.equals("economy"))
            {
            
                    out.println("<script>alert('ticket booked succesfully');</script>");            
            
            
            
            
            }


            } 
            catch (Exception e) {
                out.println(e.getMessage());
            }


        %>
    </body>
</html>
