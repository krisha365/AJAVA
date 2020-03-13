<%-- 
    Document   : a2program5.jsp
    Created on : Jan 24, 2020, 5:30:58 PM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.vvp.web.Product" %>
<%@page import="java.util.HashMap,java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
    <%
                                   Connection con = (Connection)application.getAttribute("connection");
                                   Statement stmt1 = con.createStatement();
                                   String msg = "";
                                   int totalItems = 0;
    %>
   <%
    int productStock = 0;
    String userSession = "";
    if(request.getParameter("msg")!=null)
    {
          msg = request.getParameter("msg");
    }
    if(session.getAttribute("user")!= null)
     {
        //SELECT USERID FROM USERS
        int usid = 0;
        userSession = session.getAttribute("user").toString();
        String query1 = "select user_id from users where email = '"+userSession+"'";
        ResultSet rs1 = stmt1.executeQuery(query1);
        while(rs1.next())
        {
             usid = rs1.getInt(1);
        }
        
        //CHECK FOR CART ITEMS
        String query = "select * from orders where userid = "+usid+"";
        ResultSet rs = stmt1.executeQuery(query);
        rs.last();
        int rows = rs.getRow();
        rs.beforeFirst();
        if(rows>0)
        {
            totalItems = rows;
        }
        
        //CHECK FOR ADD TO CART
        if(request.getParameter("addToCart")!=null)
        {
            int pid = Integer.parseInt(request.getParameter("pid"));
            int quantity = Integer.parseInt(request.getParameter("qty"));
            if(quantity > productStock)
            {
                msg = "Quantity not available";
            }
            productStock = productStock-quantity;
            String query4 = "UPDATE products set stock = '"+productStock+"' where pid='"+pid+"'";
            int updatedRow = stmt1.executeUpdate(query4);
            String query2 = "INSERT INTO orders(userid, pid, qty) VALUES("+ usid +", "+ pid + ","+quantity+")";
            int affectedRows = stmt1.executeUpdate(query2);
            msg = "Inserted Products "+affectedRows;
            response.sendRedirect("a2program5.jsp?msg="+msg); //PRODUCT PAGE
        }
    }else{
        //IF CANNOT LOGIN
        response.sendRedirect("a3program2.jsp"); //LOGIN PAGE
    }
%>
<html lang="zxx" class="no-js">
  <!--  
       /*     Product product1 = new Product(1, "Java Programming", "The wikibooks", 950, 2);
            Product product2 = new Product(2, "Java Programming", " Begginers Guide", 800, 4);
            Product product3 = new Product(3, "Java 2", "Complete Reference", 600, 5);
            
            //FOR STORING PRODUCT IN APPLICATION SCOPE
            HashMap<Integer, Product> products = new HashMap<Integer, Product>();
            products.put(product1.getProductId(), product1);
            products.put(product2.getProductId(), product2);
            products.put(product3.getProductId(), product3);
            
            if(application.getAttribute("Products") == null)
            {
                application.setAttribute("Products",products);
            }*/
            
    //check if cart has items - pid,qty
    /*int totalCartItems = 0;
    HashMap<Integer,Integer> cartItems = new HashMap<Integer, Integer>();
    if(session.getAttribute("cart") != null)
    {
        //cast to hashmap as it will return object
        cartItems = (HashMap<Integer, Integer>)session.getAttribute("cart");
    }
    if(request.getParameter("addToCart") != null){
       // HashMap<Integer, Product> products= (HashMap<Integer,Product>)application.getAttribute("Products");
        int pid = Integer.parseInt(request.getParameter("pid"));
        int qty = Integer.parseInt(request.getParameter("qty"));
        Product p = products.get(pid);
        p.setStock((p.getStock())-1);
        //cartItems.put(new Integer(request.getParameter("pid")), new Integer(request.getParameter("qty")));
        cartItems.put(pid,qty);

        session.setAttribute("cart", cartItems);
    }

    try
    {
        totalCartItems = ((HashMap<Integer,Integer>)session.getAttribute("cart")).size();
    }catch(Exception e){
        e.getMessage();
    }*/
    
    %>-->
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
			<!--CSS============================================= -->
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
        <!---->
      
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

                      <li class="menu-has-children"><a href="a3program2.jsp"><%= userSession %></a>
			          </li>
                      <li>
                          <a href="cartCheckout.jsp">Items :
                                <%= totalItems  %>
                          </a>
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
                        <h1><%=msg%></h1>
				<!--	<form class="form-wrap" action="a2program5.jsp" method="get">
						<div class="col-lg-4" style="box-shadow: 0px 1px 16px 0px #DCDCDC;">-->
                            <%
                           
                                    String query1 = "select * from products";
                                    ResultSet rs = stmt1.executeQuery(query1);
                                    productStock = rs.getInt(3);
                                    while(rs.next()){
                                        out.println("<div class='col-lg-4' style='box-shadow: 0px 1px 16px 0px #DCDCDC;'>" +
                                                "<form class='form-wrap' action='a2program5.jsp' method='get'>" +
                                                "<h3>"+rs.getString(2)+"</h3>" +
                                                "<p>Price: "+rs.getString(4)+"Rupees</p>" +
                                                "<input type='hidden' name='pid' value="+rs.getInt(1)+">" +
                                                "<input type='number' class='form-control' name='qty' placeholder='Quantity' onfocus='this.placeholder = ''' onblur='this.placeholder = ''' >" +
                                                "<input type='submit' name='addToCart' class='primary-btn text-uppercase' value='Add to Cart'/></form></div>"
                                                );
                                        
                                    }
                                       %>
							
                               <!-- <img src="img/javabook1.jpg" height="300px"/>
                                 <input type="hidden" name="pid" value="1">
                                 <input type="number" class="form-control" name="qty" placeholder="Quantity" onfocus="this.placeholder = ''" onblur="this.placeholder = ''" >
                                 <input type="submit" name="addToCart" class="primary-btn text-uppercase" value="Add to Cart"/>
							</form>

						</div>
                        <div class="col-lg-4" style="box-shadow: 0px 1px 16px 0px #DCDCDC;">
                            
							<form class="form-wrap" action="a2program5.jsp" method="get">
                                <img src="img/javabook2.jpg" height="300px"/>
                                <h3>  </h3>
                                <p>Price:Rupees</p>
                                 <input type="hidden" name="pid" value="2">
                                 <input type="number" class="form-control" name="qty" placeholder="Quantity" onfocus="this.placeholder = ''" onblur="this.placeholder = ''" >
                                 <input type="submit" name="addToCart" class="primary-btn text-uppercase" value="Add to Cart"/>
							</form>

						</div>
                        <div class="col-lg-4" style="box-shadow: 0px 1px 16px 0px #DCDCDC;">
							<form class="form-wrap" action="a2program5.jsp" method="get">
                                <img src="img/javabook3.jpg" height="300px" />
                                <h3> </h3>
                                <p>Price:  Rupees</p>
                                 <input type="hidden" name="pid" value="3">
                                 <input type="number" class="form-control" name="qty" placeholder="Quantity" onfocus="this.placeholder = ''" onblur="this.placeholder = ''" >
                                 <input type="submit" name="addToCart" class="primary-btn text-uppercase" value="Add to Cart"/>
							</form>

						</div>-->
                        <br>
                        
					</div>
                     <div class="row">
                        <a href="checkout.jsp" class="primary-btn" name="checkout" style="margin-bottom:30px;"> Checkout</a>
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

