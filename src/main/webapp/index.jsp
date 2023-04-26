<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import="java.sql.*" %>
    <%@ page import="DataBase.ConnectDataBase" %>
    
      
    <% ConnectDataBase conDB = new ConnectDataBase();
    try {
        Connection con = conDB.getCon();
        String sqlQ="show tables;";
        Statement st = con.createStatement();
        ResultSet rs =st.executeQuery(sqlQ);
        ResultSetMetaData rsmd = rs.getMetaData();
        int columnsNumber = rsmd.getColumnCount();
        while (rs.next()) {
            for (int i = 1; i <= columnsNumber; i++) {
               // if (i > 1) out.print(",  ");
               // String columnValue = rs.getString(i);
               // out.print(columnValue + " " );
            }
            //out.println("");
        }
    }catch(Exception ex){
        //out.println("Unable to connect to database"+ex);
    }   
    	
    %>
    
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
	
	
	
	<div class="layout_padding banner_section" >
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h1 class="banner_taital">Hotel Elite</h1>
					<p class="browse_text">Welcome , Find an escape close to home with Elite Hotels</p>
					<div class="banner_bt">
						<a href="./about.jsp">
						<button class="read_bt">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner section end -->
	<!-- search box start -->
	<form method="post" action="./search">
	<div class="container">
		<div class="search_box">
			<div class="row">
				
				<div class="col-sm-5">
					<div class="form-group">
						Check In:  <input type="date" class="email_boton" placeholder="Check In" name="Email">
                    </div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						Check Out: <input type="date" class="email_boton" placeholder="Loction in" name="Email">
                    </div>
				</div>
			
			</div>


			<div class="row">
				<div class="col-sm-4">
					<div class="form-group">
                        
						Guests: <input type="number" min="1" class="email_boton" placeholder="Nunber of Guests" name="Email">
                   
                    </div>
				</div>
				<div class="col-sm-4">
					<div class="form-group">
                        Rooms: <input type="number"  min="1" class="email_boton" placeholder="Nunber of Rooms" name="Email">
                    </div>
				</div>
				
				<div class="col-sm-3">
					<div class="form-group">
                       <br> <button class="search_bt" type="submit" >Find Rooms</button>
                    </div>
				</div>

			</div>
		</div>
	</div>
</form>
	
	

    <div class="layout_padding clients_section">
    	<div class="container">
    		<div id="client_slide" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#client_slide" data-slide-to="0" class="active"></li>
    <li data-target="#client_slide" data-slide-to="1"></li>
    <li data-target="#client_slide" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="row">
    			<div class="col-sm-12">
    				<h1 class="promoted_text">CLIENTS <span style="border-bottom: 5px solid #db2c2c;">REVIEW</span></h1>
    				<div class="client_img"><img src="images/client-img.png"></div>
    				<h1 class="client_text">JHON DUE</h1>
    				<p class="adiser_text">(Guest)</p>
    				<p class="long_text">It was a wonderful experience. Good hospitality</p>
    			</div>
    		</div>
    </div>
    <div class="carousel-item">
      <div class="row">
    			<div class="col-sm-12">
    				<h1 class="promoted_text">CLIENTS <span style="border-bottom: 5px solid #db2c2c;">REVIEW</span></h1>
    				<div class="client_img"><img src="data:image/jpeg;base64,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"></div>
    				<h1 class="client_text">JHON DUE</h1>
    				<p class="adiser_text">Alex</p>
    				<p class="long_text">My stay was extremely comfortable. A beautiful hotel surrounded by wonderful staff in a great location.</p>
    			</div>
    		</div>
    </div>
    <div class="carousel-item">
      <div class="row">
    			<div class="col-sm-12">
    				<h1 class="promoted_text">CLIENTS <span style="border-bottom: 5px solid #db2c2c;">REVIEW</span></h1>
    				<div class="client_img"><img src="data:image/jpeg;base64,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"></div>
    				<h1 class="client_text">Angelina</h1>
    				<p class="adiser_text">((Guest))</p>
    				<p class="long_text">The staff were very approachable and helpful. The breakfast was good. They arranged for a taxi to pick us up from the airport and then back again at the end of our stay. The suite was very good with comfortable furniture and the bed was comfortable too. We would definitely stay here again.</p>
    			</div>
    		</div>
        </div>
    </div>
    </div>
    </div>
    </div>
	
	
	
	
	
	
	
    <div class="contact_section " style="padding: 100px 25% 100px 25%;">
		<h1 > <span style="border-bottom: 5px solid #db2c2c; color: antiquewhite; margin-bottom: 50px;">Our Hotel Location</span></h1>
    				
    	<div class="container" style="margin-top: 50px; align-content: center;">
    		<div class="row">
    			
    			<div class="col-md-12">
                    <div class="map-responsive">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3718.548956964601!2d81.60284041441105!3d21.249727185575075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a28dde213f66723%3A0x21543965c50c43c7!2sNational%20Institute%20of%20Technology%2C%20Raipur!5e0!3m2!1sen!2sin!4v1617150012909!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
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