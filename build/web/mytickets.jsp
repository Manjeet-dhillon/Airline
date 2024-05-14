<%-- 
    Document   : mytickets
    Created on : 14-May-2024, 12:19:23 pm
    Author     : manjeet singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="airrline.css"/>
    </head>
    <body>
       <header>
            <div class="container">
                <nav>
                    <div class="logo" >
                        <img src="img/logo-removebg-preview.png" alt="Airline Logo" href="index.html">
                    </div>
                    <ul class="navbar">

                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="img/travelling.png"/></span><br><a href="#search-flight">Book Flight</a></li>
                        <li><span><img src="img/motorcycle.png"/></span><br><a href="#ride">Ride</a></li>
                        <li>&nbsp;<span><img src="img/bus.png"/></span><br><a href="">Buses</a></li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="img/ticket (1).png"/></span><br><a href="">My Tickets</a></li>
                    </ul>
                    <img src="img/profile.png" style="max-width: 90px;max-height: 40px" onclick="openForm()"/>
                </nav>
            </div>
        </header>  
    </body>
</html>
