<%-- 
    Document   : AdminHome
    Created on : Feb 19, 2020, 1:00:35 PM
    Author     : Venkat
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Student Counselling Management System</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="freehtml5.co" />

	

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Playfair+Display" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="table.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="container">
			<div class="top-menu">
				<div class="row">
					<div class="">
                                            <div id=""><a href="index.html"><span><font size="5">Student Counselling Management System</font></span></a></div>
					</div>
					<div class="col-sm-10 text-right menu-1">
						<ul>
							<li><a href="AdminHome.jsp">Home</a></li>
							<li class="active"><a href="ViewStudent.jsp">View Students</a></li>
							<li class="has-dropdown"><a href="ViewCounsellor.jsp">View Counsellor</a>
								
							</li>
                                                        <li class="has-dropdown"><a href="ViewStudentReport.jsp">View Students Report</a>
								
							</li>
							<li><a href="index.html">Logout</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
	<div class="container">
		<div id="fh5co-intro">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 col-md-pull-2">
					<h2>View Students</h2>
				</div>
			</div>
		</div>
		<aside id="fh5co-hero">
			<div class="flexslider">
				<ul class="slides">
                                    <p align="justify" style="margin: 80px;">
                                    <table>
                                        <tr>
                                            <th>First Name</th>
                                             <th>Last Name</th>
                                              <th>Email</th>
                                               <th>Mobile</th>
                                                <th>Address</th>
                                                <th>Gender</th>
                                                
                                                    <th>Status</th>
                                        </tr>
                                        <%try{
                                          String query="select * from student";
                                          
                                          ResultSet r=Queries.getExecuteQuery(query);
                                          while(r.next()){
                                            String status=r.getString("status");  
                                            
                                            %>
                                            <tr>
                                                <td><%=r.getString("fname")%></td>
                                                 <td><%=r.getString("lname")%></td>
                                                  <td><%=r.getString("email")%></td>
                                                   <td><%=r.getString("mobile")%></td>
                                                   <td><%=r.getString("address")%></td>
                                                   <td><%=r.getString("gender")%></td>
                                                    
                                                    <%
                                                        if(status.equals("waiting")){
                                                     %>
                                                     <td><a href="Authorize.jsp?id=<%=r.getString("id")%>">Authorize</a></tD>
                                                     <%
                                                    }else{
%>
                                                     <td><%=r.getString("status")%></tD>
                                                     <%

}
                                                        %>
                                                                
                                                                
                                            </tr>
                                            
                                            <%
                                          }
                                            
                                            
                                            
                                            
                                        }catch(Exception e){
                                          out.println(e);  
                                        }
                                        
                                        
                                        
                                        
                                        %>
                                    </table>
                                        
                                        
                                        
                                        
                                    </p>
			   		
	
			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
							</p>
					<p>
						<li><a href="#"><i class="icon"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
					</p>
				</div>
			</div>
		</footer>
	</div><!-- END container -->
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

