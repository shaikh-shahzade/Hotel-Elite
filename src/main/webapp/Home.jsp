<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					<a href="index.html" ><h1  style="color: black; text-align: center;  margin-top: 20px; " class="">Hotel Elite</h1></a>
				</div>
				<div class="col-sm-6">
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                           <a class="nav-item nav-link" href="/home">Home</a>
                           <a class="nav-item nav-link" href="browse ads.html">Booking</a>
                           <a class="nav-item nav-link" href="about.html">About us</a>
                           <a class="nav-item nav-link" href="clients.html">Clients</a>
                           <a class="nav-item nav-link" href="contact.html">Contact</a>
                        </div>
                    </div>
                    </nav>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="search_main">
                    <button class="submit_bt"><a href="#"><span class="doctor"></span>Login</a></button>
				    </div>
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
						<a href="about.html">
						<button class="read_bt">Read More</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner section end -->
	<!-- search box start --><form method="POST" target="/">
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
	
	<!-- section POPULAR STORES start -->
    <div class="layout_padding popular_section">
    	<div class="container">
    		<h1 class="popular_taital">Holiday <span style="border-bottom: 5px solid #db2c2c;">Packages</span></h1>
    		<div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="popular_section_2">
    			    <div class="slider_img"><img src="images/img-5.png" style="max-width: 100%;"></div>
    			        <h2 class="electronic_text">Electronic shop</h2>
    			        <p class="contrary_text">Contrary to popular belief, Lorem 
                        Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>
                        <button class="view_bt"><a href="#">VIEW ADS</a></button>
    		        </div>
                </div>
            <div class="carousel-item">
                <div class="popular_section_2">
    			    <div class="slider_img"><img src="images/img-5.png"style="max-width: 100%;"></div>
    			        <h2 class="electronic_text">Electronic shop</h2>
    			        <p class="contrary_text">Contrary to popular belief, Lorem 
                        Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>
                        <button class="view_bt"><a href="#">VIEW ADS</a></button>
    		        </div>
                </div>
            <div class="carousel-item">
                <div class="popular_section_2">
    			    <div class="slider_img"><img src="images/img-5.png"style="max-width: 100%;"></div>
    			    <h2 class="electronic_text">Electronic shop</h2>
    			    <p class="contrary_text">Contrary to popular belief, Lorem 
                    Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>
                    <button class="view_bt"><a href="#">VIEW ADS</a></button>
    		    </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i>
        </a>
        <a class="carousel-control-next" href="#main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-right"></i>
        </a>

    </div>
    </div>
    </div>
	



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
    				<h1 class="promoted_text">Guests <span style="border-bottom: 5px solid #db2c2c;">REVIEW</span></h1>
    				<div class="client_img"><img src="images/client-img.png"></div>
    				<h1 class="client_text">JHON DUE</h1>
    				<p class="adiser_text">(adiser)</p>
    				<p class="long_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to</p>
    			</div>
    		</div>
    </div>
    <div class="carousel-item">
      <div class="row">
    			<div class="col-sm-12">
    				<h1 class="promoted_text">CLIENTS <span style="border-bottom: 5px solid #db2c2c;">REVIEW</span></h1>
    				<div class="client_img"><img src="images/client-img.png"></div>
    				<h1 class="client_text">JHON DUE</h1>
    				<p class="adiser_text">(adiser)</p>
    				<p class="long_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to</p>
    			</div>
    		</div>
    </div>
    <div class="carousel-item">
      <div class="row">
    			<div class="col-sm-12">
    				<h1 class="promoted_text">CLIENTS <span style="border-bottom: 5px solid #db2c2c;">REVIEW</span></h1>
    				<div class="client_img"><img src="images/client-img.png"></div>
    				<h1 class="client_text">JHON DUE</h1>
    				<p class="adiser_text">(adiser)</p>
    				<p class="long_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to</p>
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