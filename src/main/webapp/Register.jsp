<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>Hotel Elite</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
</head>
<body  >
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
                    <a  class="nav-item nav-link"  href="./Bookings.jsp">My Bookings</a>
                   <%} %>
                     <% 
                    	if(request.getSession().getAttribute("username")!=null){
                    	%>
                    <a  class="nav-item nav-link"  href=""><%=request.getSession().getAttribute("username") %></a>
                   <%} %>
                        </div>
                    </div>
                    </nav>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="search_main">
                    <button class="submit_bt">
                    <% 
                    	if(request.getSession().getAttribute("username")!=null){
                    	%>
                    	<a href="./LogOut"><span class="doctor"></span>LogOut</a>
                    <%} 
                    else {%>
                    <a href="./LogIn.jsp"><span class="doctor"></span>Login</a>
                   <%} %>
                    
                    </button>
                    <a class="nav-item nav-link" href=""></a>
                    
				    </div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="layout_padding banner_section" >
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h1 class="banner_taital" style=" align-content: center; margin-top: 80px; margin-bottom: 100px" >LOG IN </h1>
					
					

					<form method="POST" action="./Register" >
						<div class="container">
							<div class="search_box" style="   color: white; background: none; background-color: transparent; border: none; box-shadow: none;">
								<div class="row"  style="margin-left: 10%; ">
									
									<div class="col-sm-8">
										<div class="form-group">
											Name:  <input type="text" class="email_boton" placeholder="Name" name="name" required="required">
										</div>
									</div>
									
									<div class="col-sm-8">
										<div class="form-group">
											Email:  <input type="email" class="email_boton" placeholder="Email" name="Email" required="required" >
										</div>
									</div>
									<div class="col-sm-8">
										<div class="form-group">
											Password: <input type="password" class="email_boton" placeholder="Password" name="password" required="required">
										</div>
									</div>

									<div class="col-sm-7">
										<div class="form-group">
										   <br> <button class="search_bt" type="submit" >Register</button>
										   
										</div>
										</div>
									</div>

									<br><div style=" font-size: larger; color: rgb(14, 55, 190); margin-left:30%; margin-right: 30%; text-align: right;">
								
										<a>forgot password?</a>
								</div>
								
								</div>
							
								
							</div>
						</div>
					</form>

					

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