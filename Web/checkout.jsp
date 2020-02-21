<%-- 
    Document   : checkout
    Created on : Feb 14, 2020, 9:35:18 AM
    Author     : PARTH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.vvp.web.Product"  %>
<%@ page language="java" import="java.lang.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page import="java.util.HashMap" %>
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
             <%
        if(request.getParameter("productId") != null){
            Integer removeItem = Integer.parseInt(request.getParameter("productId"));
            HashMap<Integer, Integer> cartItems = (HashMap<Integer,Integer>) session.getAttribute("cart");
            cartItems.remove(removeItem);
            HashMap<Integer, Product> products= (HashMap<Integer,Product>)application.getAttribute("Products");
            Product p = products.get(removeItem);
            p.setStock((p.getStock())+1);
            if(cartItems.size() == 0)
            {
                response.sendRedirect("a2program5.jsp");
            }
            session.setAttribute("cart",cartItems);
        }
    %>
		  <table style="border:1px solid black;">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Remove</th>
        </tr>
    <%
        if(session.getAttribute("cart") != null){
            HashMap<Integer, Product> products = (HashMap<Integer,Product>)application.getAttribute("Products");
            HashMap<Integer, Integer> cartItems = (HashMap<Integer,Integer>) session.getAttribute("cart");
            Set<Integer> pidSet = cartItems.keySet();
            Collection<Integer> qtys = cartItems.values();
            Iterator qty = qtys.iterator();
            Iterator pids = pidSet.iterator(); //convert hashmap index to linear

            
            while(pids.hasNext()){
                Integer temp = (Integer)pids.next();
                Integer quantity = (Integer)qty.next();
                //use arraylist instead of collection
                Product p = products.get(temp);

                //int totalQuantity=0;
                //for(Integer i : qty){//i forgot this syntax let me check

                //}
                
                out.println("<tr>");
                out.println("<td>");
                out.println(p.getProductId());
                out.println("</td>");
                out.println("<td>");
                out.println(p.getProductName());
                out.println("</td>");
                out.println("<td>");
                out.println(p.getProductDescription());
                out.println("</td>");
                out.println("<td>");
                out.println(p.getProductPrice());
                out.println("</td>");
                out.println("<td>");
                out.println(quantity); // sir used collection
                out.println("</td>");
                out.println("<td>");
                out.println("<form action='checkout.jsp' method='post'> " +
                        "<input type='hidden' name='productId' value='" + temp + "'>" +
                        "<input type='submit' name='submit' value='delete'>" +
                        "</form>"
                );
                out.println("</td>");
                out.println("</tr>");
            }
        }
    %>
    </table>
		</body>
</html>
