<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Airline Website</title>
        <link rel="stylesheet" href="airrline.css">
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
                        <li><span><img src="img/bus.png"/></span><br><a href="">Buses</a></li>
                        
                    </ul>
                    <img src="img/profile.png" style="max-width: 90px;max-height: 40px" onclick="openForm()"/>
                </nav>
            </div>
        </header>
        <div class="main" style="display: none" id="login">
            <h1>LOGIN</h1><button onclick="closeForm()">X</button>
            <div class="inputs">
                <input type="text" name="username" placeholder="username" required/>
            </div>
            <div class="inputs">
                <input type="password" name="password" placeholder="password" required/>
            </div> 
            <div class=" rember-forgot">
                <label><input type="checkbox">remember me</label>
                <a href="">Forgot password</a>
            </div>
            <form action="login">

                <button type="submit" class="batan">Login</button>
            </form>
            <div class="register">
                <p>Don't have an account ?<a href="">Register</a></p>
            </div>

        </div>


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
    <table  class="cont">
        <thead><tr><td>Flight code</td><td>Airline name</td><td>  From </td><td>  To  </td><td>Economy price</td><td>Business price</td><td>First class price</td><td>Remark</td>

        </thead>
        <%
            
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airways?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "root");
                PreparedStatement ps = con.prepareStatement("Select * from flight where source=? and destination=?");
                ps.setString(1, request.getParameter("d1"));
                ps.setString(2, request.getParameter("d2"));
                ResultSet rs = ps.executeQuery();
                session.setAttribute("from",request.getParameter("d1") );
                 session.setAttribute("to",request.getParameter("d2") );

                while (rs.next()) {
        %>
        <form action="bookticket.jsp">
       
              <tr>
            <td><%=  rs.getString(11)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(10)%></td>
           
                  <td>
                <input type="submit" value="Book Ticket"/>
                
           </td>
           <td>
              <input type="hidden" name="t1" value="<%=  rs.getString(11)%>"/>
              <input type="hidden" name="efare" value="<%=  rs.getString(6)%>"/>
              <input type="hidden" name="bfare" value="<%=  rs.getString(8)%>"/>
              <input type="hidden" name="ffare" value="<%=  rs.getString(10)%>"/>
           </td>
             
            
        </tr>
       
        </form>
       
        




        <%}
            } catch (Exception e) {
                out.println(e.getMessage());
            }


        %>
    </table>
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
    <!-- A button to open the popup form -->
    <!--
    <button class="open-button" onclick="openForm()">Open Form</button>
    -->
    <!-- The form -->
    
    </div>
    <script>
        function openForm() {
            document.getElementById("login").style.display = "block";
        }
        function openForm1() {
            document.getElementById("myForm").style.display = "block";
        }
        function closeForm1() {
            document.getElementById("myForm").style.display = "none";
        }

        function closeForm() {
            document.getElementById("login").style.display = "none";
        }

    </script>

    <footer>
        <div class="container">
            <p>&copy; 2024 Airline. All rights reserved.</p>
        </div>
    </footer>

</body>
</html>
