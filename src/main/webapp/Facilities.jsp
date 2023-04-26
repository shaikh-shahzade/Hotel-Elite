<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import="java.sql.*" %>
    <%@ page import="DataBase.ConnectDataBase" %>
    
      
    
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>Hotel Elite</title>

    
<link rel="stylesheet"  href="./css/bootstrap.min.css">
<link rel="stylesheet"  href="./css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Noticia+Text|Lalezar');

:root{
  --padding: 21px;
  --bg-color: #f5f8eb;
  --text-color:#0a643a;
  --accent-color: #a0bb2e;
  --font-family: 'Noticia Text';
  --font-display: 'Lalezar';
}

html{
  margin: 0;
  padding: 0;
}

body{
  margin: 0 auto;
  color: var(--text-color);
  background: var(--bg-color);
  font-family: var(--font-family);
  line-height: 2;
  font-size: 21px;
  }

h2{
  font-size: 180%;
  transform: translateX(-5px);
  font-family: var(--font-display);
  margin-bottom: 0;
}

a{
  color: var(--text-color);
}

p{
  margin-bottom: 2em;
}

strong{
  display: inline-block;
  transform: translateX(-5px);
  font-size: 130%;
  line-height: 1;
  font-family: var(--font-display);
}

strong:before{
  content: '🎙️';
  margin-right: 5px;
  margin-top: 34px; 
  display: inline-block;
}

h2:after{
  content: '';
  display: block;
  height: 8px;
  background: var(--accent-color);
  max-width: 55px;
  transform: skewX(-21deg) translateY(-13px);
  border-radius: 3px;
}

</style>

</head>
<body>
<div class="header_section">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-3">
					<a href="./index.jsp" ><h1  style="color: black; text-align: center;  margin-top: 20px; " class="">Hotel Elite</h1></a>
				</div>
				<div class="col-sm-6">
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                           <a class="nav-item nav-link" href="./index.jsp">Home</a>
                           <a class="nav-item nav-link" href="./Rooms.jsp">Rooms</a>
                           <a class="nav-item nav-link" href="./Facilities.jsp">Facilities</a>
                           
                           <% 
                    	if(request.getSession().getAttribute("username")!=null){
                    	%>
                    <a  class="nav-item nav-link"  href="./Bookings.jsp">Bookings</a>
                   <%} %>
                     
                   <span style="margin-left: 50%; " class="doctor"></span>
                  <button  class="submit_bt">
                    <% 
                    	if(request.getSession().getAttribute("username")!=null){
                    	%>
                    	<a href="./LogOut"><span class="doctor"></span>LogOut</a>
                    <%} 
                    else {%>
                    <a href="./LogIn.jsp"><span class="doctor"></span>Login</a>
                   <%} %>
                    
                    </button>
                    
				  
				<% 
                    	if(request.getSession().getAttribute("username")!=null){
                    	%>
                    <a  class="nav-item nav-link" style="float: right; color: red; font-family: sans-serif; font-size: 110%;  text-shadow: purple;" href=""><%=request.getSession().getAttribute("username") %></a>
                   <%} %>
                   
                   
                        </div>
                    </div>
                    </nav>
				</div>
				
				
			</div>
		</div>
	</div>
	

	
	<div class="layout_padding banner_section" style="background: none;">
		<div class="container" >
			<div class="row">
				<div class="col-sm-12">
					<h1 class="banner_taital"></h1>
						<div id="content" class="container">
        <div class="row">
            <div class="description col-md-9 col-lg-9 my-4">
                <h1 class="banner_taital" style="color:black; "  > Hotel Elite FACI<span style="text-decoration: underline red;">LITIES</span></h1>
                <div class="spotText">
                    <p>Isfanbul Holiday Home &amp; Suites offers exclusive services and benefits for the comfort of its guests. Among many facilities that the hotel has to offer, guests can directly access  to the shopping mall and the theme &amp; amusement park by car park hotel entrance elevators. A various choice of restaurants and cafés are available at the shopping mall. The hotel's family-friendly and home-like accommodation concept also provide many advantages such as a supermarket, a pharmacy, a tobacco shop, a hair dresser and many more within a walking distance. </p>
                </div>
                <div id="properties">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h2 class="breakfast">Breakfast</h2>
                            <p>The hotel restaurant with both indoor and outdoor seating offers an open-buffet breakfast and is directly accessible from guestroom corridors.</p>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h2 class="roomService">Room Service</h2>
                           <p>Isfanbul Holiday Home &amp; Suites provides 24-hour room service. Please click <a href="#" target="_blank" style="font-weight:bold">here</a> for Room Service menu.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h2 class="parking">Parking</h2>
                            <p>Isfanbul Holiday Home &amp; Suites offers 24-hour indoor parking for its guests. The hotel is directly accessible from the indoor car park and guests can easily reach the shopping mall by using the elevators that are facing the car park hotel entrance. The indoor parking and valet services are free for accommodating hotel guests. Car washing service is also available with an additional cost.</p>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h2 class="businessCentre">Business Centre</h2>
                            <p>Isfanbul Holiday Home &amp; Suites provides significant services for a flawless business-travel experience. The hotel's business centre is designated to meet all your business travel needs and available to assist you with all office services such as scanning and emailing documents, fax services, photocopying, printing and offices supplies.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h2 class="shuttle">Free Shuttle Service</h2>
                            <p>The accommodating hotel guests can benefit of free shuttle service provided by Isfanbul Shopping &amp; Entertainment World based on availability. Please click <a href="http://isfanbul.com/temapark-servis.php" target="_blank" style="font-weight:bold">here</a> for free shuttle bus hours and destinations.</p>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h2 class="internet">Internet Access</h2>
                            <p>Isfanbul Holiday Home &amp; Suites offers free Internet access. High-speed wireless Internet connection is complimentary both in the rooms and public areas.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <h2 class="other">Other Facilities</h2>
							<ul>
                          
                                                        	<li>Rent-a-car</li>
                           	                            	<li>Airline reservation and confirmation</li>
                           	                            	<li>Babysitter upon request</li>
                           	                            	<li>Multilingual staff</li>
                           	                            	<li>24-hour currency exchange</li>
                           	                            	<li>24-hour Manager on Duty</li>
                           	                            	<li>Dry cleaning and laundry</li>
                           	                            	<li>Major credit cards accepted</li>
                           	
                            </ul>
                        </div>
                        
                    </div>
                </div>
                <hr>
                <div>
                <h2>Immediate Vicinity</h2>
 					<h2>Supermarket</h2><br>One of the biggest chains of supermarkets in Turkey, Migros Supermarket is located in Isfanbul Shopping Mall. In addition to basic groceries, Migros Supermarket offers a large spectrum of products such as stationary, glassware and many other non-food items. <br><br><h2>Tobacco Shop</h2><br>Located inside Isfanbul Shopping Mall, the Tobacco Shop stocks all kinds of tobacco goods, alcoholic and non-alcoholic beverages. <br><br><h2>Banks and ATM Machines </h2><br>There are two banks and ATM machines inside Isfanbul Shopping Mall. You can easily perform all your digital and mobile banking transactions at the banks. The ATM machines provide 24/7 service. <br><br><h2>Pharmacy</h2><br>Located inside Isfanbul Shopping Mall, the pharmacy sells cosmetics and skincare products in addition to medical and healthcare products. <br><br><h2>Hair Dresser</h2><br>Located in Isfanbul Shopping Mall, the unisex hairdresser serves both men and women. 				</div>
            </div>
            
            
        </div>
    </div>
				</div>
			</div>
		</div>
	</div>
	
	

	
	

    <div class="copyright">
    	<p class="copyright_text">Made By Shaikh Shahzade, 19223081 </p>
    </div>


	
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
     
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
         
         $(".zoom").hover(function(){
         
         $(this).addClass('transition');
         }, function(){
         
         $(this).removeClass('transition');
         });
         });
         
      </script> 
    
</body>
</html>