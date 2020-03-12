<%-- 
    Document   : updateProduct
    Created on : 27 Feb, 2020, 9:08:43 AM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
                    input{
                        margin:20px;
                    }
                </style>
    </head>
    <body>
<section class="appointment-area">
				<div class="container">
					<div class="row justify-content-between align-items-center pb-120 appointment-wrap">
						<div class="col-lg-5 col-md-6 appointment-left">
							<h1>

							</h1>
                         </div>
						<div class="col-lg-6 col-md-6 appointment-right pt-60 pb-60" style="box-shadow: 0px 1px 16px 0px #DCDCDC;margin-top:50px;">
                            
							<form class="form-wrap" action="" method="post">
								<h3 class="pb-20 text-center mb-30">Modify Product</h3>
                            <%
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "krishna", "krishna");
                                     Statement stmt = con.createStatement();
                                     String query,msg;
                                     
                            %>
                            <%
                                    String id = request.getParameter("id");
                                    if(request.getParameter("id") != null){
                                       query = "select * from products where pid = '"+id+"'";
                                       ResultSet rs = stmt.executeQuery(query);
                                      
                                    while(rs.next())
                                    {
                                       out.println("" +
                                               "<input type='text' value='"+rs.getString(2)+"' class='form-control' name='pname' placeholder='pname'/>" +
                                               "<input type='number' value='"+rs.getInt(3)+"' class='form-control' name='pstock' placeholder='pstock'/>" +
                                                "<input type='text' value='"+rs.getString(4)+"' class='form-control' name='price' placeholder='price'/>"+
                                                "<input type='text' value='"+rs.getString(5)+"' class='form-control' name='des' placeholder='des'/>" +
                                                "<input type='submit' class='primary-btn text-uppercase' name='up' value='update'/>");
                                   }
                                    }else{
                                        out.println("<input type='text' class='form-control' name='pname' placeholder='pname'/>"+
                                                "<input type='number' class='form-control' name='pstock' placeholder='pstock'/>" +
                                                "<input type='text' class='form-control' name='price' placeholder='price'/>" +
                                                 "<input type='text' class='form-control' name='des' placeholder='des'/>" +
                                                "<input type='submit' class='primary-btn text-uppercase' name='insertProduct' value='insert'/>");

                                    }


                                    if(request.getParameter("up") != null)
                                        {

                                           String pname = request.getParameter("pname");
                                           String pstock = request.getParameter("pstock");
                                           String price = request.getParameter("price");
                                           String des = request.getParameter("des");

                                        String query1 = "UPDATE products set pname = '"+pname+"',stock = '"+pstock+"',price = '"+price+"',des='"+des+"' where pid='"+id+"'";
                                       
                                        int affectedRows = stmt.executeUpdate(query1);
                                         msg = "Updated Products: "+affectedRows;
                                         response.sendRedirect("a3program3.jsp?msg="+msg);
                                    }

                                    if(request.getParameter("insertProduct")!=null)
                                    {
                                        String pname = request.getParameter("pname");
                                           String pstock = request.getParameter("pstock");
                                           String price = request.getParameter("price");
                                           String des = request.getParameter("des");

                                        String query2 = "INSERT INTO products(pname, stock, price, des) VALUES ('" + pname +"', "+ pstock + ",'"+price+"', '"+des+"')";
                                   
                                         int affectedRows = stmt.executeUpdate(query2);
                                         msg = "Inserted Products "+affectedRows;
                                         response.sendRedirect("a3program3.jsp?msg="+msg);
                                    }
        %>
                            </form>

                        </div>
					</div>
				</div>
			</section>
    </body>
</html>
