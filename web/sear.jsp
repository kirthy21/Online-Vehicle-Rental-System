<!DOCTYPE html>
<!--
	Interphase by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>ADMIN ADD GUIDE</title>
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
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="landing">

		<!-- Header -->
			<header id="header">
				<h1><a href="adhome.jsp">Admin</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="addvehiclet.jsp">Add Vehicle</a></li>
						<li><a href="vievehicle.jsp">View Vehicle</a></li>
						<li><a href="vieuser.jsp">View User</a></li>
                                                <li><a href="addriver.jsp">Add Driver</a></li>
                                                <li><a href="viedriver.jsp">View Driver</a></li>
                                                <li><a href="adguide.jsp">Add Guide</a></li>
                                                <li><a href="vieguide.jsp">View Guide</a></li>
                                                  <li><a href=".viewguide.jsp">View Feedback</a></li>
                                                  <li><a href=".viewguide.jsp">View Statistics</a></li>
					</ul>
				</nav>
			</header>

		<!-- Banner -->
			<section id="banner">
				<h2>Admin - Add Guide</h2>
            
    
    <body>
  <center>
        <table>
    <form action="">
 <tr><td>NAME</td><td><input type="text" name="gname"></td></tr>
<tr><td>ADDRESS</td><td><textarea name="gaddress"></textarea></td></tr>
<tr><td>PHONE NUMBER</td><td><input type="number" name="gphno"></td></tr>
<tr><td>EMAIL</td><td><input type="email" name="gemail"></td></tr>
<tr><td>EXPERIENCE</td><td><input type="number" name="years"></td><td>(in years)</td></tr>
<tr><td>AGE</td><td><input type="text" name="gage"></td></tr>
  <tr><td>GENDER</td><td><input type="radio" value="Male" name="gender" checked>Male<input type="radio" value="Female" name="gender">Female</td></tr>

<tr><td>IMAGE</TD><TD><input type="file" name="gimg"></td></tr></table>
</table>              
<table>
<tr><td>Scanned copy of driving license</td><td><input type="FILE"value="Upload"></td></tr>
<tr><td>Scanned copy of any id proof</td><td><select><option>Aadhar</option><option>Passport</option><option>Pan card</option><option>Voter id</option></select></td></tr><tr><td></td><td><input type="FILE"value="Upload"></td></tr></tr>

</table>
<table>
<tr><td></td><td></td><td><input type="submit" value="Submit" name="save"></td></tr>
      
              
    </body>
				
			</section>

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
	</body>
</html>
<%
    if(request.getParameter("save")!=null)
    {
        String a=request.getParameter("gname");
            String b=request.getParameter("gaddress");
            String c=request.getParameter("gphno");
              String d=request.getParameter("gemail");
               String e=request.getParameter("years");
               String f=request.getParameter("gage");
               String g=request.getParameter("gender");
                 String h=request.getParameter("gimg");
                   out.println(a);
                out.println(b);
                out.println(c);
                out.println(d);
                out.println(e);
                out.println(f);
                out.println(g);
                String sql1="insert into guide(guidename,address,phoneno,age,gender,emailid,experience,image)values('"+a+"','"+b+"','"+c+"','"+f+"','"+g+"','"+d+"','"+e+"','"+h+"')";
        int i1=connect.insertData(sql1);
        if(i1==1)
        {
            %>
            <script>
                alert("successfully added");
                </script>
            <%
        }
    }
    %>

   
       
 