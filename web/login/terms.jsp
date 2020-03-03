<%-- 
    Document   : index
    Created on : Apr 21, 2017, 10:53:21 AM
    Author     : cit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="hello.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Online Vehicle Rental</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet"> 
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/lightbox.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">

  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
  <![endif]-->
  
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="images/log.ico">
</head><!--/head-->

<body>

  <!--.preloader-->
  <div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
  <!--/.preloader-->

  <header id="home">
   
    </div><!--/#home-slider-->
    <div class="main-nav">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">
            <h1><img class="img-responsive" src="images/logo_1.png" width="50" height="50" alt="logo_1"></h1>
          </a>                    
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">                 
            <li class="scroll"><a href="index.jsp">Home</a></li>
           
             <li class="scroll"><a href="#team">Terms and Conditions</a></li> 
           
                  
          </ul>
       </div>
      </div>
    </div><!--/#main-nav-->
  </header><!--/#home-->

   
  <%
    //String s=(String)session.getAttribute("username");
    
    %>

 <section id="team">
     <div id="contact-us" class="parallax">
         <div class="container"><center>
                   <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            
          
          </div>
        </div>
                 <center><h1><text style="color: darkgreen"> Terms and Conditions</h1></center>
            
     <!--   <div id="google-map" class="wow fadeIn" data-latitude="52.365629" data-longitude="4.871331" data-wow-duration="1000ms" data-wow-delay="1000ms"></div>-->
    
                            <body>
                                <b><h4><text style="color: #00A243"> 1. Who May Drive The Vehicle</h4></b>
                                <p><text style="color: #00A243"> You agree that we have the right to verify that your license has been validly issued and is in good standing; and that we may in our 
 sole discretion refuse to rent to you if your license has been suspended, revoked, otherwise restricted in any way. </p>
<b><h4><text style="color: #00A243">2. Return</h4></b>
<p><text style="color: #00A243">You agree to return the vehicle to us in the same condition you received it, ordinary wear and tear excepted, on the date,
 at the time, and to the location specified in the rental document. 
</p>

<b><h4><text style="color: #00A243">3. Taxes </h4></b>
<p><text style="color: #00A243"> You’ll also pay all applicable taxes as well as any additional charges provided on the rental agreement which are over and 
above the base rental rate.</p>

<b><h4><text style="color: #00A243">4. Fines, Expenses, Costs and Administrative Fees</h4></b>
<p><text style="color: #00A243">You’ll pay all fines, penalties and court costs for parking, traffic, toll and other
 violations, including storage liens and charge</p>

<b><h4><text style="color: #00A243">5. Owner Rights</h4></b>
<p><text style="color: #00A243">The owner has the right to terminate the hire and take immediate possession of the vehicle if the hirer fails to comply 
    with any of the terms of the Rental Agreement, or if the vehicle is damaged.</p>

<b><h4><text style="color: #00A243">6. Discounts</h4></b>
<p><text style="color: #00A243">Special rental rates apply only within the period offered and presuppose that the rental period complies with the one agreed to at the
  time of rental. If said period is exceeded or curtailed, the normal rate, instead of the special rate, shall apply to the whole rental period.</p>
               
    </body>
         </table>
  <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
          
          
          </div>
        </div>
           <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            
          
          </div>
        </div>
    </div><!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
  
<!--  <section id="twitter" class="parallax">
    <div>
      <a class="twitter-left-control" href="#twitter-carousel" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
      <a class="twitter-right-control" href="#twitter-carousel" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
      <div class="container">
        <div class="row">
          <div class="col-sm-8 col-sm-offset-2">
            <div class="twitter-icon text-center">
              <i class="fa fa-twitter"></i>
              <h4>Themeum</h4>
            </div>
            <div id="twitter-carousel" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="item active wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
                  <p>Introducing Shortcode generator for Helix V2 based templates <a href="#"><span>#helixframework #joomla</span> http://bit.ly/1qlgwav</a></p>
                </div>
                <div class="item">
                  <p>Introducing Shortcode generator for Helix V2 based templates <a href="#"><span>#helixframework #joomla</span> http://bit.ly/1qlgwav</a></p>
                </div>
                <div class="item">                                
                  <p>Introducing Shortcode generator for Helix V2 based templates <a href="#"><span>#helixframework #joomla</span> http://bit.ly/1qlgwav</a></p>
                </div>
              </div>                        
            </div>                    
          </div>
        </div>
      </div>
    </div>
  </section>/#twitter-->

  
  <footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
      <div class="container text-center">
        <div class="footer-logo">
          <a href><img class="img-responsive" src="images/logo_1.png" width="50" height="50" alt=""></a>
        </div>
       
      </div>
    </div>
   
     
  </footer>

  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="js/jquery.inview.min.js"></script>
  <script type="text/javascript" src="js/wow.min.js"></script>
  <script type="text/javascript" src="js/mousescroll.js"></script>
  <script type="text/javascript" src="js/smoothscroll.js"></script>
  <script type="text/javascript" src="js/jquery.countTo.js"></script>
  <script type="text/javascript" src="js/lightbox.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>

</body>
</html>