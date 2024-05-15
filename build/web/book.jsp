<%-- 
    Document   : book
    Created on : 09-May-2024, 9:50:31 am
    Author     : manjeet singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.Random" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            String name = request.getParameter("Fullname");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String phoneno = request.getParameter("phone");
            Random random = new Random();
            int randomNumber = random.nextInt(10000);
             String userid =  randomNumber + name;

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airways?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");
            PreparedStatement ps = con.prepareStatement("insert into user values (?,?,?,?,?) ");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, userid);
            ps.setString(5, phoneno);

            int rs = ps.executeUpdate();
             
           
            
            

        %>
    </body>
</html>
