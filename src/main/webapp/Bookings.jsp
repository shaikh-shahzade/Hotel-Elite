<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>



<html lang="en">
<head>
<meta charset="utf-8">

<title>Hotel Elite</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>




<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<style type="text/css">




h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
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
	
	
	
	
	
	
	<section style="margin: 0;">
  <!--for demo wrap-->
  <h1 style="padding-top: 220px;padding-bottom: 50px;">Bookings</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th >#</th>
      <th >Room</th>
      <th >CustomerName</th>
      <th >No. of Guests</th>
      <th >Rooms</th>
      <th >CheckInDate</th>
      <th >CheckOutDate</th>
      <th >TotalFees</th>
      <th >Print</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        
        
        
        
        <%@ page import="java.sql.*"%>
												<%@ page import="DataBase.ConnectDataBase"%>

												<%
												int i=0;
												ConnectDataBase conDB = new ConnectDataBase();
												try {
													String username = request.getSession().getAttribute("username").toString();
													Connection con = conDB.getCon();
													String sqlQ = "select * from bookings " + "where customername = '"+username+"';";
													Statement st = con.createStatement();
													ResultSet rs = st.executeQuery(sqlQ);
													ResultSetMetaData rsmd = rs.getMetaData();
													int columnsNumber = rsmd.getColumnCount();
													
													while (rs.next()) {
														
														i++;
														%>
	<div  id="abc<%=i%>" hidden="true">
	
	<div style="padding-left: 20%">
<h1 style=" font-size: 50px; padding-left: 20%  ">HOTEL ELITE</h1>


<div>
</div>
<div style=" margin-top:50px;margin-bottom:50px; font-size: 30px;color:red;  ">
Your Reservation is Confirm.<br>
Thank You for Choosing Hotel Elite

</div>

<div style="font-size: 30px; padding-left: 30%  ">
<%= rs.getString("roomname") %>
</div>
<div style="font-size: 30px;  margin-top: 20px ">
<%= rs.getString("customername") %>
</div>

<div style="font-size: 20px;  margin-top: 20px ">
CHECKINDATE
<span>
<%= rs.getString("checkInDate") %> 
</span>
---------------------

CHECKOUTDATE
 <span >
<%= rs.getString("checkInDate") %>
</span>
</div>

<div style="font-size: 20px;  color:buttonshadow;  margin-top: 20px ">
<%= rs.getString("guests") %> Guests
/
<%= rs.getString("rooms") %> Rooms
</div>

<div style="font-size: 30px;  color:highlight;     margin-top: 20px ; margin-left: 50%">
Total Fees: <%= rs.getString("TotalFees") %> Rs
</div>

</div>
	
	
	
	</div>													
														
														
			<script type="text/javascript">

 
function <%=rs.getString("roomname").replace(" ", "")+i%>() {
	var doc = new jsPDF();
	var specialElementHandlers = {
	    '#editor': function (element, renderer) {
	        return true;
	    }
	};

	console.log($("#abc<%=i%>").html());
    doc.fromHTML($("#abc<%=i%>").html(), 15, 15, {
        'width': 700,
        'elementHandlers': specialElementHandlers
    });
    doc.save('sample_file.pdf');
}
</script>												
														
														
														
														
														

    <tr>
      <th scope="row"><%=i%></th>
      <td><%= rs.getString("roomname") %></td>
      <td><%= rs.getString("customername") %></td>
      <td><%= rs.getString("guests") %></td>
      <td><%= rs.getString("rooms") %></td>
      <td><%= rs.getString("checkInDate") %></td>
      <td><%= rs.getString("checkInDate") %></td>
      <td><%= rs.getString("TotalFees") %></td>
       <td><button  onclick="<%=rs.getString("roomname").replace(" ", "")+i%>()" >Print</button></td>
    </tr>

														
														
														
														
														
														
														
														<% 
														
														
													}
												} catch (Exception ex) {
													out.println("Unable to connect to database"+ex);
												}
												%>
        
        
        
      </tbody>
    </table>
  </div>
</section>
	
	
	
	

	
	
	
	

    <div class="copyright">
    	<p class="copyright_text">Made By Shaikh Shahzade, 19223081 </p>
    </div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>

	
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/plugin.js"></script>
     <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
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