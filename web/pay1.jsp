<%@page import="java.sql.ResultSet"%>
<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String iid=request.getParameter("id");
    String bal="";
    String ss="select *from payment where number='"+iid+"'";
    ResultSet rs=connect.getData(ss);
    if(rs.next())
    {
        bal=rs.getString("balance");
    }
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Add Driver</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<!--<link rel="stylesheet" href="css/style-xlarge.css" />-->
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="landing">

		<!-- Header -->
			<header id="header">
				
				<nav id="nav">
					<ul>
							<li><a href="addvehiclet.jsp">Add Vehicle</a></li>
						<li><a href="vievehicle.jsp">View Vehicle</a></li>
						<li><a href="vieuser.jsp">View User</a></li>
                                                <li><a href="addriver.jsp">Add Driver</a></li>
                                                <li><a href="viedriver.jsp">View Driver</a></li>
                                                <li><a href="adguide.jsp">Add Guide</a></li>
                                                <li><a href="vieguide.jsp">View Guide</a></li>
                                                  <li><a href="feedback.jsp">View Feedback</a></li>
                                                  <li><a href="AdminViewBooking.jsp">View Statistics</a></li>
                                                   <li><a href="AdminSearchLocations.jsp">Locate</a></li>
                                                  <li><a href="login/index.jsp">Logout</a></li>
					</ul>
				</nav>
			</header>

		<!-- Banner -->
			<section id="banner">
				<h2>Payment</h2>
            
    
    <body>
    <center>
        
    <form action="">
        <table>
    
        <tr><td>BOOKING NUMBER</td><td><input type="text" name="gname" value="<%=iid%>"></td></tr>

<tr><td>BALANCE</td><td><input type="number" name="gphno" value="<%=bal%>"></td></tr>
<tr><td>EXTRA FEES</td><td><input type="text" name="gemail"></td></tr>
<tr><td></td><td></td><td><input type="submit" value="Submit" name="save"></td></tr>

  
</table>
        </form>


    	</section>          
    </body>
				
		

		<!-- One 
			<section id="one" class="wrapper style1 align-center">
				<div class="container">
					<header>
						<h2>Consectetur adipisicing elit</h2>
						<p>Lorem ipsum dolor sit amet adipisicing elit. Delectus consequatur sed tempus.</p>
					</header>
					<div class="row 200%">
						<section class="4u 12u$(small)">
							<i class="icon big rounded fa-clock-o"></i>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim quam consectetur quibusdam magni minus aut modi aliquid.</p>
						</section>
						<section class="4u 12u$(small)">
							<i class="icon big rounded fa-comments"></i>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium ullam consequatur repellat debitis maxime molestiae.</p>
						</section>
						<section class="4u$ 12u$(small)">
							<i class="icon big rounded fa-user"></i>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque eaque eveniet, nesciunt molestias. Ipsam, voluptate vero.</p>
						</section>
					</div>
				</div>
			</section>

		<!-- Two 
			<section id="two" class="wrapper style2 align-center">
				<div class="container">
					<header>
						<h2>Lorem ipsum dolor sit</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio, autem.</p>
					</header>
					<div class="row">
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic01.jpg" alt="" />
							<h3 class="title">Lorem ipsum dolor</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore ipsa voluptate, quae quibusdam. Doloremque similique, reiciendis sit quibusdam aperiam? Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic02.jpg" alt="" />
							<h3 class="title">Esse, fugiat, in</h3>
							<p>Natus perspiciatis fugit illum porro iusto fuga nam voluptas minima voluptates deserunt, veniam reiciendis harum repellat necessitatibus. Animi, adipisci qui. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						</section>
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic03.jpg" alt="" />
							<h3 class="title">Voluptates, repudiandae, dolor</h3>
							<p>Voluptatibus repellendus tempora, quia! Consequuntur atque, rerum quis, ullam labore officiis ipsa beatae dolore, assumenda eos harum repudiandae, qui ab! Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic04.jpg" alt="" />
							<h3 class="title">Eveniet, reiciendis, veniam</h3>
							<p>Rem nulla molestiae inventore quibusdam repudiandae doloremque eveniet ullam, qui autem possimus saepe laudantium numquam sapiente vel. Repudiandae, nihil tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						</section>
					</div>
					<footer>
						<ul class="actions">
							<li>
								<a href="#" class="button alt big">Learn More</a>
							</li>
						</ul>
					</footer>
				</div>
			</section>

		<!-- Footer -->
                <!--
			<footer id="footer">
				<div class="container">
					<div class="row">
						<section class="4u 6u(medium) 12u$(small)">
							<h3>Lorem ipsum</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, cumque!</p>
							<ul class="alt">
								<li><a href="#">Lorem ipsum dolor sit amet.</a></li>
								<li><a href="#">Quod adipisci perferendis et itaque.</a></li>
								<li><a href="#">Itaque eveniet ullam, veritatis reiciendis?</a></li>
								<li><a href="#">Accusantium repellat accusamus a, soluta.</a></li>
							</ul>
						</section>
						<section class="4u 6u$(medium) 12u$(small)">
							<h3>Nostrum, repellat!</h3>
							<p>Tenetur voluptate exercitationem eius tempora! Obcaecati suscipit, soluta earum blanditiis.</p>
							<ul class="alt">
								<li><a href="#">Lorem ipsum dolor sit amet.</a></li>
								<li><a href="#">Id inventore, qui necessitatibus sunt.</a></li>
								<li><a href="#">Deleniti eum odit nostrum eveniet.</a></li>
								<li><a href="#">Illum consectetur quibusdam eos corporis.</a></li>
							</ul>
						</section>
						<section class="4u$ 12u$(medium) 12u$(small)">
							<h3>Contact Us</h3>
							<ul class="icons">
								<li><a href="#" class="icon rounded fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon rounded fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon rounded fa-pinterest"><span class="label">Pinterest</span></a></li>
								<li><a href="#" class="icon rounded fa-google-plus"><span class="label">Google+</span></a></li>
								<li><a href="#" class="icon rounded fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="tabular">
								<li>
									<h3>Address</h3>
									1234 Somewhere Road<br>
									Nashville, TN 00000
								</li>
								<li>
									<h3>Mail</h3>
									<a href="#">someone@untitled.tld</a>
								</li>
								<li>
									<h3>Phone</h3>
									(000) 000-0000
								</li>
							</ul>
						</section>
					</div>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li>
						<li>Design: <a href="http://templated.co">TEMPLATED</a></li>
						<li>Images: <a href="http://unsplash.com">Unsplash</a></li>
					</ul>
				</div>
			</footer>
-->
</html>
<%
    if(request.getParameter("save")!=null)
    {
        String a=request.getParameter("gname");
            
            String c=request.getParameter("gphno");
              String d=request.getParameter("gemail");
              int a1=Integer.parseInt(c);
              int b1=Integer.parseInt(d);
              int to=a1+b1;
                  
                String sql1="UPDATE payment SET payed = payed +'"+to+"',status='1',balance='0' where number='"+a+"'";
                String sqq="update booking set fstatus='1' where number='"+a+"'";
                int i2=connect.insertData(sqq);
        int i1=connect.insertData(sql1);
        if(i1==1&&i2==1)
        {
            %>
            <script>
                alert("successfully added");
                window.location="AdminViewBooking.jsp";
                </script>
            <%
        }
    }
    %>