<%-- 
    Document   : a3program1
    Created on : 26 Feb, 2020, 4:43:13 PM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
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
                      <li class="menu-has-children"><a href="#">Assignment 3</a>
			            <ul>
			              <li><a href="a3program1.jsp">SignUp</a></li>
						  <li><a href="a3program2.jsp">Login</a></li>
                          <li><a href="a3program3.jsp">E-commerce Application</a></li>
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
                                <%
if(request.getParameter("message") != null)
    {
        out.println("<h1>"+request.getParameter("message")+"</h1>");
    }
%>					</div>
						<div class="col-lg-6 col-md-6 appointment-right pt-60 pb-60" style="
						box-shadow: 0px 1px 16px 0px #DCDCDC;">
							<form class="form-wrap" action="" method="post">
								<h3 class="pb-20 text-center mb-30">SIGN UP</h3>
								<input type="text" class="form-control" name="uname" placeholder="USERNAME" onfocus="this.placeholder = ''" onblur="this.placeholder = 'USERNAME'" >
								<input type="password" class="form-control" name="pwd" placeholder="PASSWORD" onfocus="this.placeholder = ''" onblur="this.placeholder = 'PASSWORD'" >
								<input type="password" class="form-control" name="cpwd" placeholder="CONFIRM PASSWORD" onfocus="this.placeholder = ''" onblur="this.placeholder = 'CONFIRM PASSWORD'" >
								<input type="email" class="form-control" name="email" placeholder="EMAIL" onfocus="this.placeholder = ''" onblur="this.placeholder = 'EMAIL'" >
								<input type="text" class="form-control" name="phone" placeholder="PHONE NUMBER" onfocus="this.placeholder = ''" onblur="this.placeholder = 'PHONE NUMBER'" >
								<input type="number" class="form-control" name="sem" placeholder="SEMESTER" min="1" max="10" onfocus="this.placeholder = ''" onblur="this.placeholder = 'SEMESTER'" >
								<select class="form-control" name="branch">
									<option value="it">IT</option>
									<option value="ec">EC</option>
									<option value="computer">Computer</option>
									<option value="civil">Civil</option>
									<option value="nano">Nano</option>
									<option value="biotech">Bio Tech</option>
									<option value="chemical">Chemical</option>
									<option value="electrical">Electrical</option>
									<option value="mechanical">Mechanical</option>
								</select>
								</br>
									<label>MALE&nbsp;&nbsp;<input type="radio" name="gender" value="male" checked="checked"/> </label> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
									<label>FEMALE&nbsp;&nbsp;<input type="radio" name="gender" value="female"/> </label>  </br>
								</br>
									<label>HOBBIES:</label><br/>
									<input type="checkbox" name="hobby" value="Dancing"/> DANCING &nbsp;&nbsp;&nbsp;&nbsp;
									<input type="checkbox" name="hobby" value="Singing"/> SINGING &nbsp;&nbsp;&nbsp;&nbsp;
									<input type="checkbox" name="hobby" value="Painting"/> PAINTING &nbsp;&nbsp;&nbsp;&nbsp;
									<input type="checkbox" name="hobby" value="Reading"/> READING &nbsp;&nbsp;&nbsp;&nbsp; </br>
									</br>
									<textarea class="common-textarea form-control" name="address" placeholder="ADDRESS" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ADDRESS'" required=""></textarea>
									<input type="submit" name="submit" value="REGISTER" class="primary-btn text-uppercase"/>

							</form>
                            <%
                            if(request.getParameter("submit") != null)
                                {
                                String msg = "";
                                String uname = request.getParameter("uname");
                                String pwd = request.getParameter("pwd");
                                String cpwd = request.getParameter("cpwd");
                                String email = request.getParameter("email");
        String mobileno = request.getParameter("phone");
        String sem = request.getParameter("sem");
        String branch = request.getParameter("branch");
        String gender = request.getParameter("gender");
        String hobby[] = request.getParameterValues("hobby");
        String address = request.getParameter("address");
        int x= hobby.length;
            
            if(uname.length()<6 || uname.length()>20)
            {
                msg="Atleast 6-20 characters";
                response.sendRedirect("a3program1.jsp?message="+msg);
            }else if(pwd.length()< 6 || pwd.length()> 20)
            {
               msg="Atleast 6-20 characters";
                response.sendRedirect("a3program1.jsp?message="+msg);
            }else if(mobileno.length()!=10)
            {
                 msg = "length should be 10 numbers";
                response.sendRedirect("a3program1.jsp?message="+msg);
            }else if(!(pwd.equals(cpwd)))
            {
                msg = "Incorrect Password";
                response.sendRedirect("a3program1.jsp?message="+msg);
            }else if(!(x!=3)){
                msg = "Minimum 3 hobbies";
                response.sendRedirect("a3program1.jsp?message="+msg);
               // out.println("<h1></h1>");
            }
        else{
            String hobbies="";
            for(int i=0;i<x;i++)
            {
                hobbies += hobby[i] + " ";
            }
 
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "krishna", "krishna");
            //Array hobbies = con.createArrayOf("VARCHAR", hobby);
            String qry1 = "select * from users where email = '"+email+" or username = '"+uname+"'";
            String qry = "INSERT INTO users(username, password, email, phone, semester, branch, gender, hobby) VALUES ('" + uname +"', '"+ pwd +  "','"+email+"', '"+mobileno+"','"+sem+"','"+branch+"','"+gender+"','" + hobbies + "')";
    
            Statement stmt = con.createStatement();
            int affectedRows = stmt.executeUpdate(qry);
            if(affectedRows != 0)
            {
               msg = "Successfully Signed up";
                response.sendRedirect("a3program1.jsp?message="+msg);
            }else{
                 msg = "Error Signing Up";
                response.sendRedirect("a3program1.jsp?message="+msg);
            }}
            }
                            %>
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

