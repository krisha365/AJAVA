<%-- 
    Document   : a2program1
    Created on : Jan 24, 2020, 10:21:05 AM
    Author     : PARTH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Advanced JAVA</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/jquery-ui.css">
			<link rel="stylesheet" href="css/nice-select.css">
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/jquery-ui.css">
			<link rel="stylesheet" href="css/main.css">
		</head>
		<body>
		  <header id="header">

		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <h2 style="color:white;">KRISHNA</h2>
			      </div>
			      <nav id="nav-menu-container">
			        <ul class="nav-menu">
			          <li class="menu-has-children"><a href="#">Assignment 1</a>
			            <ul>
			              <li><a href="a1program1.html">Login</a></li>
						  <li><a href="a1program2.html">Website Visits</a></li>
						  <li><a href="a1program3.html">Multiplication Table Generator</a></li>
			              <li><a href="a1program4.html">Sign Up</a></li>
			            </ul>
			          </li>
                      <li class="menu-has-children"><a href="#">Assignment 2</a>
			            <ul>
			              <li><a href="a2program1.jsp">Calculator</a></li>
						  <li><a href="a2program2.jsp">Login</a></li>
						  <li><a href="a2program3.jsp">Temperature Converter</a></li>
			              <li><a href="a2program4.jsp">Dynamic Field Generation</a></li>
                          <li><a href="a2program5.jsp">E-commerce Application</a></li>
			            </ul>
			          </li>	
			          <!-- <li class="menu-has-children"><a href="">Pages</a>
			            <ul>
			            	  <li><a href="elements.html">Elements</a></li>
			            	  <li><a href="#">Item One</a></li>
			            	  <li><a href="#">Item Two</a></li>
					          <li class="menu-has-children"><a href="">Level 2 </a>
					            <ul>
					              <li><a href="#">Item One</a></li>
					              <li><a href="#">Item Two</a></li>
					            </ul>
					          </li>
			            </ul>
			          </li>	-->
			        </ul>
			      </nav><!-- #nav-menu-container -->
		    	</div>
		    </div>
		  </header><!-- #header -->

			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-center">
						<div class="banner-content col-lg-8 col-md-12">
							<h1>
								ADVANCED JAVA
							</h1>
						</div>
					</div>
				</div>
			</section>
			<!-- End banner Area -->

			<!-- Start appointment Area -->
			<section class="appointment-area">
				<div class="container">
					<div class="row justify-content-between align-items-center pb-120 appointment-wrap">
						<div class="col-lg-5 col-md-6 appointment-left">
							<h1>

							</h1>						</div>
						<div class="col-lg-6 col-md-6 appointment-right pt-60 pb-60" style="
						box-shadow: 0px 1px 16px 0px #DCDCDC;">
							<form class="form-wrap" action="">
								<h3 class="pb-20 text-center mb-30">Calculator</h3>
								<input type="number" class="form-control" name="num1" placeholder="Number 1" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Number'" >
                                <input type="number" class="form-control" name="num2" placeholder="Number 2" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Number'" >
								<input type="submit" name="submit" value="+" class="primary-btn text-uppercase"/>
                                <input type="submit" name="submit" value="-" class="primary-btn text-uppercase"/>
                                <input type="submit" name="submit" value="x" class="primary-btn text-uppercase"/>
                                <input type="submit" name="submit" value="/" class="primary-btn text-uppercase"/>
                                <!%
                                double addition(double x,double y){
                                    return (x+y);
                                }
                                double sub(double x,double y){
                                    return (x-y);
                                }
                                double mul(double x,double y){
                                    return (x*y);
                                }
                                double div(double x,double y){
                                    return (x/y);
                                }
                            %>
                            <%
                            try{
                            if(request.getParameter("submit") != ""){
                                double num1 = Double.parseDouble(request.getParameter("num1"));
                                double num2 = Double.parseDouble(request.getParameter("num2"));
                                double result = 0;
                                char op = request.getParameter("submit").charAt(0);

                                switch(op){
                                    case '+': result = num1 + num2;
                                              break;
                                    case '-': result = num1 - num2;
                                              break;
                                    case 'x': result = num1 * num2;
                                              break;
                                    case '/': result = num1 / num2;
                                              break;
                                }

                                out.println("<input class='form-control' type='text' readonly='readonly' value='" +result+ "'/> ");
                            }}
                            finally{
                                out.close();
                            }
                            %>
							</form>
						</div>
					</div>
				</div>
			</section>
			<!-- End appointment Area -->

			<!-- start footer Area -->
			<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-2  col-md-6">
							<div class="single-footer-widget">

							</div>
						</div>
						<div class="col-lg-4  col-md-6">
							<div class="single-footer-widget mail-chimp">

							</div>
						</div>
						<div class="col-lg-6  col-md-12">
							<div class="single-footer-widget newsletter">

							</div>
						</div>
					</div>

					<div class="row footer-bottom d-flex justify-content-between">
					</div>
				</div>
			</footer>
			<!-- End footer Area -->


			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/vendor/bootstrap.min.js"></script>
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
 			<script src="js/jquery-ui.js"></script>
  			<script src="js/easing.min.js"></script>
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>
    		<script src="js/jquery.tabs.min.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>
			<script src="js/owl.carousel.min.js"></script>
			<script src="js/mail-script.js"></script>
			<script src="js/main.js"></script>
		</body>
	</html>
