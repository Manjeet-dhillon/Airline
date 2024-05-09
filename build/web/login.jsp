<%-- 
    Document   : login
    Created on : 08-May-2024, 9:24:42 am
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
            try{
            
            
            Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airways?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");
                    PreparedStatement ps = con.prepareStatement("Select * from user where user_id=? and password=?");  
                    ps.setString(1,request.getParameter("username"));
                    ps.setString(2,request.getParameter("password"));
                    ResultSet rs=ps.executeQuery();
                    if (rs.next()) {
                out.println("<script>alert('Login successfully');</script>");
                %>
                <jsp:forward page="search.jsp"/>  
        <%
                
            } else {
                out.println("<script>alert('Failed to Login');</script>");
              
          %> 
          <jsp:include page="index.html"/>  
        <% }
           
            }
            catch (Exception e)
            {
            out.println(e.getMessage());
            }
            
            %>
    </body>
</html>
