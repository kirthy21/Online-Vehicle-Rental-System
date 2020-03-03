<%-- 
    Document   : index
    Created on : Apr 21, 2017, 10:53:21 AM
    Author     : lenovo
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
  <title>Online Vehicle Rental | Search</title>
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
              <li class="scroll active"><a>Search >></a></li>
              <li class="scroll"><a>Date >></a></li> 
              <li class="scroll"><a>Payment>></a></li> 
             <li class="scroll"><a href="userhome.jsp">Home</a></li> 
                  
          </ul>
       </div>
      </div>
    </div><!--/#main-nav-->
  </header><!--/#home-->

   
     
  <%
      String type=request.getParameter("type");
      String cat=request.getParameter("cat");
       String sql="select *from vehicle_list where vehicletype='"+type+"' and category='"+cat+"'";
      %>
 <section id="services">
    <div class="container">
      <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
        <div class="row">
          <div class="text-center col-sm-8 col-sm-offset-2">
            <h2>Available Vehicles</h2>
            <!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam</p>-->
          </div>
        </div> 
      </div>
      <div class="text-center our-services">
        <div class="row">
          
         <%
               String status="";
                ResultSet rs=connect.getData(sql);
                                    while(rs.next())
                                    {
                                        status=rs.getString("status");
               %>
          <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="service-icon">
                <img src="../images/<%=rs.getString("img")%>" width="150" height="100">
            </div>
            <div class="service-info">
              <h3>VEHICLE NAME:<%=rs.getString("vehiclename")%></h3>
              <br>
              COLOUR:<%=rs.getString("colour")%>
              <br>
              MODEL:<%=rs.getString("model")%>
              <br>
              MILEAGE:<%=rs.getString("mileage")%>
              <br>
              <br>
              PAYMENT:<%=rs.getString("payment")%>
              <br>
              <%
                  if(status.equals("0"))
                  {
                  %>
              <a href="UserDate.jsp?id=<%=rs.getString("vehicle_id")%>&&sl=<%=rs.getString("payment")%>">booknow</a>
              <%
                  }
else
{
out.println("the vehicle is not available");
}
                  %>
            </div>
          </div>
               <%
                   }
%>
    
        </div>
      </div>
    </div>
  </section><!--/#services-->
  

  
  <footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
      <div class="container text-center">
        <div class="footer-logo">
          <a href="index.html"><img class="img-responsive" src="images/logo_1.png" width="50" height="50" alt=""></a>
        </div>
        <div class="social-icons">
       
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <p></p>
          </div>
        
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
