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

    <body bgcolor="white">
        <header>
            <div class="container">
                <nav>
                    <div class="logo">
                        <img src="img/logoair-removebg-preview.png" alt="Airline Logo">
                    </div>
                    <ul class="navbar">

                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="img/travelling.png"/></span><br><a href="#search-flight">Book Flight</a></li>
                        <li><span><img src="img/motorcycle.png"/></span><br><a href="#ride">Ride</a></li>
                        <li><span><img src="img/bus.png"/></span><br><a href="#buses">Buses</a></li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="img/ticket (1).png"/></span><br><a href="mytickets.jsp">My Tickets</a></li>

                    </ul>
                    <img src="img/profile.png" style="max-width: 90px;max-height: 40px" onclick="openForm()"/>
                </nav>
            </div>
        </header>


        <%
            String from = session.getAttribute("from").toString();
            String to = session.getAttribute("to").toString();

            


       String fcode=request.getParameter("t1");
        String aname=request.getParameter("aname");
           
     
       session.setAttribute("fc",fcode);
        session.setAttribute("air",aname);
     
        
        
               %>
                  
        <div class="form-popup" id="myForm">
            <form class="form-container" action="mytickets.jsp">
                <h1>Passenger Details</h1>


                <input type="text" placeholder="Enter name" name="name" required>


                <input type="text"  placeholder=" Aadhar no"  name="adhar" value=""  required>

                <input type="text" placeholder="-----selct class---"name="classs"  list="class"required>
                <datalist id="class">
                    <option>-----Select class----</option>
                    <option>Economy</option>
                    <option>Business</option>

                </datalist>

                <input type="hidden" name="efare" value="<%=request.getParameter("efare")%>"/>
                <input type="hidden" name="bfare" value="<%=request.getParameter("bfare")%>"/>
                <input type="hidden" name="ffare" value="<%=request.getParameter("ffare")%>"/>
                <input type="text" placeholder="Flightcode" name="fcode" value="<%=request.getParameter("t1")%>" disabled="" required>
            
                <input type="text" placeholder="Age" name="age" required>

                <input type="text" placeholder="From" name="from" disabled=""  value="<%= from%>" disabled="" required>

                <input type="text" placeholder="To" name="to" disabled="" value="<%= to%>" disabled=""required><br>
                Male<input type="radio" name="gender" value="Male"required>
                Female<input type="radio"  name="gender"  value="Female"required>
                prefer not to say<input type="radio"  name="gender"  value="Female"required>
                <section class="button">
                    <button type="submit" class="btn" href="mytickets.jsp">Book Now</button>
                    <button type="button" class="btn cancel" href="login.jsp">Close</button></section>
            </form>
        </div>

       


    </body>
</html>
