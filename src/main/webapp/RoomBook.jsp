<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">

<title>Hotel Elite</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="css/style.css">
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
	

	
	

	<div class=" layout_padding promoted_sectipon ">
		<div class="container mx-auto">
			<h1 class="promoted_text">
				<span style="border-bottom: 5px solid #db2c2c;">ADMIN PANEL</span>
			</h1>
			<div class="images_main ">
				<div class="row ">
					<div class="col-sm-6 col-md-6 col-lg-6 my-5">
						<div class="images">
							</div>



						<button type="button" class="btn  btn-primary mobile_bt"
							data-bs-toggle="modal" data-bs-target="#exampleModal1">
							<a href="#">ROOMS</a>
						</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal1" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class=" modal-dialog modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">ROOMS</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">

										CODE TO SHOW ROOMS
										<div class="container">
											<div class="row">
												<%@ page import="java.sql.*"%>
												<%@ page import="DataBase.ConnectDataBase"%>

												<%
												ConnectDataBase conDB = new ConnectDataBase();
												try {
													Connection con = conDB.getCon();
													String sqlQ = "select * from rooms; ";
													Statement st = con.createStatement();
													ResultSet rs = st.executeQuery(sqlQ);
													ResultSetMetaData rsmd = rs.getMetaData();
													int columnsNumber = rsmd.getColumnCount();
													int i=0;
													while (rs.next()) {
														
														
														%>
														
														<div class="col-sm-5 my-5">
													<div class="images">
														<img src="images/img-2.png" style="width: 100%;">
													</div>
													<button class="promoted_bt"><%= rs.getString("name") %></button>
													
													<div class="numbar_text">
														Price Per Day: <span class="like-icon"><%= rs.getString("PricePerDay") %></span>
													</div>
													
													<div class="numbar_text">
														Total Rooms : <span class="like-icon"><%= rs.getString("TotalRoom") %></span>
													</div>
													
													<div class="numbar_text">
														Capacity : <span class="like-icon"><%= rs.getString("capacity") %></span>
													</div>
											 
													
													
													
													<button class="mobile_bt">
													
														<a href="./RoomDelete?pagename=<%=rs.getString("name")%>">DELETE</a>
													</button>
												</div>
														
														
														<% 
														
														
													}
												} catch (Exception ex) {
													//out.println("Unable to connect to database"+ex);
												}
												%>





												

												

											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>

									</div>
								</div>
							</div>
						</div>




					</div>



					<div class="col-sm-6 col-md-6 col-lg-6 my-5 ">
						<div class="images">
							
						</div>



						<button type="button" class="btn btn-primary mobile_bt"
							data-bs-toggle="modal" data-bs-target="#exampleModal_add">
							<a href="#">ADD ROOM</a>
						</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal_add" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class=" modal-dialog modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Modal
											title</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">



										<form action="./Rooms" method="post">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Name
													</label> <input type="text" class="form-control" name="name"
													id="exampleInputEmail1" aria-describedby="emailHelp">
												
											</div>
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Capacity
													</label> <input type="number" name="capacity" class="form-control"
													id="exampleInputEmail1" aria-describedby="emailHelp">
												
											</div>
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Total Room
													</label> <input type="number" name="totalroom" class="form-control"
													id="exampleInputEmail1" aria-describedby="emailHelp">
												
											</div>
											
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Price Per day
													</label> <input type="number" name="PricePerDay" class="form-control"
													id="exampleInputEmail1" aria-describedby="emailHelp">
												
											</div>
											
										
											
											<button type="submit" class="btn btn-primary">Submit</button>
										</form>


									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>




					</div>




					<div class="col-sm-6 col-md-6 col-lg-6 my-5">
						<div class="images">
							
						</div>



						<button type="button" class="btn btn-primary mobile_bt"
							data-bs-toggle="modal" data-bs-target="#exampleModal2">
							<a href="#">ROOMS</a>
						</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal2" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class=" modal-dialog modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Modal
											title</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">HELLO MODAL 2</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>




					</div>

					<div class="col-sm-6 col-md-6 col-lg-6  my-5">
						<div class="images">
							
						</div>



						<button type="button" class="btn btn-primary mobile_bt"
							data-bs-toggle="modal" data-bs-target="#exampleModal3">
							<a href="#">ROOMS</a>
						</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal3" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class=" modal-dialog modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Modal
											title</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">HELLO MODEL #</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>




					</div>









				</div>
			</div>

		</div>
	</div>







	<div class="copyright">
		<p class="copyright_text">Made By Shaikh Shahzade, 19223081</p>
	</div>



	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery-3.0.0.min.js"></script>
	<script src="js/plugin.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>

	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/custom.js"></script>

	<script src="js/owl.carousel.js"></script>
	<script
		src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".fancybox").fancybox({
				openEffect : "none",
				closeEffect : "none"
			});

			$(".zoom").hover(function() {

				$(this).addClass('transition');
			}, function() {

				$(this).removeClass('transition');
			});
		});
	</script>

</body>
</html>