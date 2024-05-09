<%-- 
    Document   : bookticket
    Created on : 09-May-2024, 12:30:00 pm
    Author     : manjeet singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="airrline.css"/>
    </head>
    <body bgcolor="black">
        
        
        <%  
             String from = session.getAttribute("from").toString();
             String to = session.getAttribute("to").toString();
        
        %>
        <div class="form-popup" id="myForm">
        <form action="book.jsp" class="form-container">
            <h1>Passenger Details</h1>

            
            <input type="text" placeholder="Enter name" name="name" required>

            
            <input type="text"  placeholder=" Aadhar no" contenteditable="true" name="adhar" value=""  required>
            
            <input type="text" placeholder="-----selct class---"name="classs"  list="class"required>
            <datalist id="class">
                <option>-----Select class----</option>
                <option>Economy</option>
                 <option>Business</option>
                  
            </datalist>
            
            <input type="text" placeholder="Flightcode" name="fcode" value="<%=request.getParameter("t1")%>" disabled="" required>
             
            <input type="text" placeholder="Age" name="age" required>
             
            <input type="text" placeholder="From" name="from" disabled=""  value="<%= from%>" disabled="" required>
            
            <input type="text" placeholder="To" name="to" disabled="" value="<%= to %>" disabled=""required><br>
            Male<input type="radio" name="gender" value="Male"required>
            Female<input type="radio"  name="gender"  value="Female"required>
            prefer not to say<input type="radio"  name="gender"  value="Female"required>
            <section class="button">
                <button type="submit" class="btn">Book Now</button>
                <button type="button" class="btn cancel" onclick="closeForm1()">Close</button></section>
        </form>
    </div>
    </body>
</html>
