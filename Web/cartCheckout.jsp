<%-- 
    Document   : cartCheckout
    Created on : 13 Mar, 2020, 5:11:35 PM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <%
                                   Connection con = (Connection)application.getAttribute("connection");
                                    Statement stmt1 = con.createStatement();
                                    String msg;
                                    int totalItems = 0;
                            %>
   <%
String userSession = "";
int usid = 0;
int pid = 0;
int productStock = 0;
int quantity = 0;
if(session.getAttribute("user")!= null)
     {
        userSession = session.getAttribute("user").toString();
        userSession = session.getAttribute("user").toString();
        String query1 = "select user_id from users where email = '"+userSession+"'";
        ResultSet rs1 = stmt1.executeQuery(query1);
        while(rs1.next())
        {
             usid = rs1.getInt(1);
        }
        String query = "select * from orders where userid = "+usid+"";
        ResultSet rs = stmt1.executeQuery(query);
        rs.last();
        int rows = rs.getRow();
        rs.beforeFirst();
        if(rows>0)
        {
            totalItems = rows;
        }
        if(request.getParameter("remove") != null){
            String query2 = "delete from orders where orderid='"+request.getParameter("val")+"' and userid = "+usid+"";
            int affectedRows = stmt1.executeUpdate(query2);
            productStock = productStock+quantity;
            String query4 = "UPDATE products set stock = '"+productStock+"' where pid='"+pid+"'";
            int updatedRow = stmt1.executeUpdate(query4);
            response.sendRedirect("cartCheckout.jsp"); //CHECKOUT PAGE
        }
    }else{
        response.sendRedirect("a3program2.jsp"); //LOGIN PAGE
    }
%>
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
                <style>
                    .table-bordered th, .table-bordered td {
                        padding:20px;
                    }
                </style>
		</head>
		<body>
		  <header id="header">

		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <h2 style="color:white;"><a href="a2program5.jsp">KRISHNA</a></h2>
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

                      <li class="menu-has-children"><a href="a3program2.jsp"><%= userSession %></a>
			          </li>
                      <li class="menu-has-children"><a href="cartCheckout.jsp">Items: <%= totalItems %></a>
			          </li>
                       <li class="menu-has-children"><a name="logout" href="a3program3.jsp">LOGOUT</a>
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
						<div class="col-lg-12 col-md-12 appointment-right pt-60 pb-60" style="box-shadow: 0px 1px 16px 0px #DCDCDC;">
                           <form class="form-wrap" action="cartCheckout.jsp" method="post">
                              <div style="float:left;" width="35%">
                                <select class="form-control" name="searchBy" >
                                    <option default selected></option>
                                    <option value="pname">NAME</option>
                                    <option value="qty">QTY</option>
                                    <option value="price">PRICE</option>
                                    <option value="des">DESCRIPTION</option>
                                </select>
                                </div>
                                <div  style="float:left;margin-left:20px;" >
                                <input type="text" class='form-control' name="searchVal" placeholder="SEARCH BY" onfocus="this.placeholder = ''" onblur="this.placeholder = 'SEARCH BY'" >
                              </div>
                              <div  style="float:right;margin-right:20px;"  width="50%" >
                                <input type="submit" class='primary-btn text-uppercase' value="SEARCH" name="searchBtn" >

                              </div>
                            <table class="table-bordered form-wrap" style="border-color:black !important;" width="100%">
                                <tr>
                                    <th>Product</th>
                                    <th>Qty</th>
                                    <th>Price</th>
                                    <th>Description</th>
                                    <th>Action</th>
                                </tr>
                                <%
                                String query;
                                if(request.getParameter("searchBtn")!=null)
                                {
                                    String searchBy = request.getParameter("searchBy");
                                    String searchVal = request.getParameter("searchVal");
                                    query = "SELECT orders.orderid, orders.pid, orders.qty, products.pname, products.price, products.des FROM orders INNER JOIN products ON orders.pid=products.pid where products."+searchBy+" like '%"+searchVal+"%' and orders.userid ="+usid+"";
                                    ResultSet rs = stmt1.executeQuery(query);
                                   
                                    while(rs.next())
                                    {
                                        out.println("<tr>" +
                                                "<td>"+rs.getString(4)+"</td>"+
                                                "<td>"+rs.getInt(3)+"</td>"+
                                                "<td>"+rs.getString(5)+"</td>"+
                                                "<td>"+rs.getString(6)+"</td>"+
                                                "<td><input class='primary-btn text-uppercase' type='submit' name='remove' value='remove'/><input class='form-control' type='hidden' name='val' value='"+rs.getInt(1)+"'/></td>"+
                                                "</tr>");
                                    }
                                }
                                //query = "select * from products";
                                 query = "SELECT orders.orderid, orders.pid, orders.qty, products.pname, products.price, products.des, products.stock FROM orders INNER JOIN products ON orders.pid=products.pid where orders.userid ="+usid+"";
                                 ResultSet rs = stmt1.executeQuery(query);
                                 productStock = rs.getInt(7);
                                 quantity = rs.getInt(3);
                                 pid = rs.getInt(2);
                                //ResultSet rs = stmt1.executeQuery(query);
                                    while(rs.next())
                                    {
                                        out.println("<tr>" +
                                                "<td>"+rs.getString(4)+"</td>"+
                                                "<td>"+rs.getInt(3)+"</td>"+
                                                "<td>"+rs.getString(5)+"</td>"+
                                                "<td>"+rs.getString(6)+"</td>"+
                                                "<td><input class='primary-btn text-uppercase' type='submit' name='remove' value='remove'/><input class='form-control' type='hidden' name='val' value='"+rs.getInt(1)+"'/></td>"+
                                                "</tr>");
                                    }

                                %>



                            </table>
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
