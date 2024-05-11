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
        <h1>hello</h1>
        <%
            
            String name = request.getParameter("name");
            String adhar = request.getParameter("adhar");
            String classs = request.getParameter("classs");
            String fcode = request.getParameter("fcode");
            String age = request.getParameter("age");
            String from = request.getParameter("from");
            String to = request.getParameter("to");
            String gender = request.getParameter("gender");
            String fare=null;
            
            String efare=request.getParameter("efare");
             String bfare=request.getParameter("bfare");
              String ffare=request.getParameter("ffare");
            
         if(classs.equals("Economy"))
         {
            fare=efare;
             
        }
        else if(classs.equals("Business"))
        {
        fare=bfare;
        
        }
        out.println(fare);
        
            
            
         
            

        %>
    </body>
</html>
