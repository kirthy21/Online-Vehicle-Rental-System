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
  <title>Online Vehicle Rentsl | Payment</title>
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
  <link rel="shortcut icon" href="images/favicon.ico">
  <script>
      function hai(x)
      {
          var a=parseInt(x);
          var b=document.getElementById("amn").value;
          var a1=parseInt(b);
          var c=a*a1;
          document.getElementById("total").value=c;
      }
       function hai1(x)
      {
         
          var a=parseInt(x);
          //alert(a);
         
          var c=a/2;
        //alert(c);
          document.getElementById("tocken").value=c;
      }
      </script>
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
              <h1><img class="img-responsive" src="images/logo_1.png" width="50" height="50" alt="logo"></h1>
          </a>                    
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">                 
           <li class="scroll"><a>Search >></a></li>
              <li class="scroll"><a>Date >></a></li> 
              <li class="scroll active"><a>Payment>></a></li> 
             <li class="scroll"><a href="userhome.jsp">Home</a></li> 
                  
                  
          </ul>
       </div>
      </div>
    </div><!--/#main-nav-->
  </header><!--/#home-->

   
  <%
    String s=(String)session.getAttribute("username");
    
    String date=request.getParameter("date");
   String slot=(String)session.getAttribute("amount");
   int a=Integer.parseInt(slot);
   int tocken=0;
   tocken=a/2;
   
    //session.setAttribute("slid",id);
    //session.setAttribute("amount",slot);
    %>

 <section id="team">

     <!--   <div id="google-map" class="wow fadeIn" data-latitude="52.365629" data-longitude="4.871331" data-wow-duration="1000ms" data-wow-delay="400ms"></div>-->
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2>PAYMENT & CONFIRMATION</h2>
          
          </div>
        </div>
        <div class="contact-form wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="row">
            <div class="col-sm-6">
              <form id="" name="contact-form" method="post" action="../book">
                <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                     <div class="form-group">
                    <input type="hidden" name="amn" value="<%=slot%>" id="amn">
                    <input type="hidden" name="date" value="<%=date%>">
                        no.of days<input type="text" name="days" id="message" class="form-control" rows="4" placeholder="no.of days" required="required" onchange="hai(this.value)">
                         </div> 
                     <div class="form-group">
                         
                         <input type="text" name="amount" id="total" class="form-control" rows="4" placeholder="total amount" required="required" onclick="hai1(this.value)" readonly="" style="color:black">
                </div> 
                  <div class="form-group">
                         
                         do you need a driver?:<input type="radio" name="driver" class="" rows="4" value="yes">yes<input type="radio" name="driver"  class="" rows="4" value="no">no
                </div> 
                 <div class="form-group">
                         
                     do you want a guide?:<input type="radio" name="guide"  class="" rows="4" value="yes">yes<input type="radio" name="guide" class="" rows="4" value="no">no
                </div> 
                <div class="form-group">
               ACCOUNT NUMBER:<input type="text" name="account" id="message" class="form-control" rows="4" placeholder="account number" required="required">
                </div> 
                SECURITY KEY:<div class="form-group">
                  
                 <input type="text" name="sec" id="message" class="form-control" rows="4" placeholder="security key" required="required" onchange="hai(this.value)">
                </div> 
                     <div class="form-group">
                         
                         <input type="text" name="tocken" id="tocken" class="form-control" rows="4" placeholder="token_advance" required="required" readonly="" style="color:black">
                </div> 
                 
              
                <div class="form-group">
                  <button type="submit" class="btn-submit">Find</button>
                </div>
              
            </div>
                  </form>   
           
          </div>
        </div>
      </div>
    </div>

    </div><!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
  

  
  <footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
      <div class="container text-center">
        <div class="footer-logo">
            <a href="index.html"><img class="img-responsive" src="images/logo_1.png" width="50" height="50" alt=""></a>
        </div>
      
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          
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
