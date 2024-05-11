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
        <link rel="stylesheet" href="airrline.css"/>
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
        
                <header>
            <div class="container">
                <nav>
                    <div class="logo" >
                        <img src="img/logo-removebg-preview.png" alt="Airline Logo" href="index.html">
                    </div>
                    <ul class="navbar">

                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="img/travelling.png"/></span><br><a href="#search-flight">Book Flight</a></li>
                        <li><span><img src="img/motorcycle.png"/></span><br><a href="#ride">Ride</a></li>
                        <li><span><img src="img/bus.png"/></span><br><a href="">Buses</a></li>
                        <li><span><img src="https://via.placeholder.com/150"/></span><br><a href="">My Tickets</a></li>
                    </ul>
                    <img src="img/profile.png" style="max-width: 90px;max-height: 40px" onclick="openForm()"/>
                </nav>
            </div>
        </header>  
                <section class="hero">
            <div class="container">
                <h1>Welcome to our Airline</h1>
                <p>Book your flights with ease and comfort.</p>
            </div>
        </section>
        <!-- Search Flight Section -->
    <center>
        <div class="search-flight" id="search-flight">
            <h2>Search Flights</h2>
            <form action="search.jsp">

                <input type="text" name="d1" placeholder="departure City" list="departureCities">
                <datalist id="departureCities" class="i1" >
                    <option value="Mumbai">
                    <option value="Goa">
                    <option value="New Delhi">

                </datalist>

                <input type="text" name="d2" placeholder="Destination City" list="DestinationCity">
                <datalist id="DestinationCity" class="i1">
                    <option value="Hyderabad">
                    <option value="New Delhi">
                    <option value="Pune">

                </datalist>

                <button type="submit">Search</button>
            </form>
        </div>
    </center>
    <section class="features">
        <div class="container">
            <h2>Why Choose Us?</h2>
            <div class="feature-item">
                <img src="img/0d7fd967-3f18-439c-8bf7-1e73904911ad.jpeg" alt="Feature Image">
                <h3>Comfortable Flights</h3>
                <p>We provide comfortable and luxurious flights for your journey.</p>
            </div>
            <div class="feature-item">
                <img src="img/Premium AI Image _ Tourism with white background high quality ultra hd.jpeg" alt="Feature Image">
                <h3>Wide Range of Destinations</h3>
                <p>Explore a wide range of destinations with our extensive flight network.</p>
            </div>
            <div class="feature-item">
                <img src="https://via.placeholder.com/150" alt="Feature Image">
                <h3>Easy Booking Process</h3>
                <p>Our booking process is simple and hassle-free.</p>
            </div>
        </div>
    </section>

    <section class="gallery">
        <div class="container">
            <h2>Explore Our Gallery</h2>
            <div class="gallery-images">
                <img src="img/Dubai cityscape.jpeg" alt="Gallery Image">
                <img src="img/Golden Route Japan itinerary DIY for first trip to Japan 🍵 Japan travel blog - Flashpacking Japan.jpeg" alt="Gallery Image">
                <img src="img/One day in Goa itinerary – Top things to do in Goa, India.jpeg" alt="Gallery Image">
                <img src="img/Using Air Travel Passes to Maximize International Travel - The Points Guy.jpeg" alt="Gallery Image">
            </div>
        </div>
    </section>
  
    
    </div>
   
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
