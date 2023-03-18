<%@page import="java.sql.ResultSet"%>
<%@page import="connection.Queries"%>
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

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
        <style>
            table
            {
                background-color: lightskyblue;
                margin-top: 100px;
            }
            table tr td
            {
                padding: 10px;
                text-decoration:red;
                
            }
        </style>
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
							<li><a href="StudentHome.jsp">Home</a></li>
							<li><a href="StudentReg.jsp">Counseling Forms</a></li>
							<li><a href="Prof_Details.jsp">professional details</a>
								
							</li>
                                                        <li  class="active"><a href="Give_FeedBack.jsp">Give FeedBack </a>
								
							</li>
							<li><a href="Student.jsp">Logout</a></li>
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
                                    <h2><center>FeedBack Here</center></h2>
				</div>
			</div>
		</div>
		<aside id="fh5co-hero">
			<div class="flexslider">
				<ul class="slides">
                                    <h2><center></center></h2>
                                    <%
                                    String uname=(String)session.getAttribute("uname");
                                     String rollno=(String)session.getAttribute("rollno");
                                    
                                    %>
                                    <h4>Student Name :<%=uname%></h4>
                                   
                                        <table style="float:right">
                                           <tr><th><h4> FeedBack Response from Counselor</h4></th></tr> 
                                           <tr><th>Feed Back</th></tr>
                                           <%try{
                                         ResultSet r=Queries.getExecuteQuery("select * from feedback where status!='waiting' and rollno='"+rollno+"'");
                                          while(r.next()){
                                              %>
                                           <tr> <td><textarea cols="30" rows="4"><%=r.getString("response")%>
                                           </textarea></td></tr>   
                                           <%
                                          } 
                                           }catch(Exception e){
                                              out.println(e); 
                                           }
                                           %>
                                      
                                       
                                        
                                   
   </table>
                                         <form action="FeedBackAction.jsp" method="post">
                                        <table>
                                            <tr><th><h4>Write FeedBack Here</h4></th></tr>
                                        <tr><th>Write Feed Back</th><td><textarea cols="50" rows="20" name="feedback">
                                            
</textarea></td></tr>
                                       
                                        
                                     <tr><th><input type="submit" value="Post"></th></tr>
   </table>
                                </form>
	
			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						
					</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i class="icon-twitr"></i></a></li>
							<li><a href="#"><i class="icon-faceb"></i></a></li>
							<li><a href="#"><i class="icon-linked"></i></a></li>
							<li><a href="#"><i class="icon-dribbb"></i></a></li>
						</ul>
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

