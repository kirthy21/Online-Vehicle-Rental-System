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
  <link rel="shortcut icon" href="images/favicon.ico">
  <script>
        function seldist(x)
            {
                        // alert(x);
                // clear(category)
//alert("haii");
                // f1(category);
				//var b=document.getElementById("sem").value;
				//alert(b);
                                //alert(x);
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp = new XMLHttpRequest();
                } else
                {// code for IE6, IE5
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function ()
                {
                    //4=request finished and response is ready,0=request not initialized,1=server connection established,2=request received,3=processing request      status 200=ok,404=page not found
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        

                        document.getElementById("sel").innerHTML = xmlhttp.responseText;
                        // alert(xmlhttp.responseText);
                    }
                }
            xmlhttp.open("GET", "state.jsp?q="+x, true);
              
            xmlhttp.send();
            }
             </script> 
</head><!--/head-->
<script>
      function noBack(){
                window.history.forward();
            }
            noBack();
            window.onload()=noBack;
            window.onpageshow=function (evt){
                if(evt.persisted) noBack()
            }
            window.onload=function(){
                void(0)
            }
</script>

<body>
    
    <%
        String he="";
String session1=session.getAttribute("username").toString();
String a2="select name from registration where username='"+session1+"'";
ResultSet poda=connect.getData(a2);
while(poda.next())
{
     he=poda.getString(1);
    out.print(he);
}
session.setAttribute("name",he);
%>

  <!--.preloader-->
  <div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
  <!--/.preloader-->

  <header id="home">
    <div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" style="background-image: url(images/mn.jpg)">
          <div class="caption">
              <h1 class="animated fadeInLeftBig">Welcome <span><%=he%>&nbsp;&nbsp;&nbsp;</span></h1>
              <h2><text style="color: whitesmoke">Let's Get Rolling!</select></h2>
            <p class="animated fadeInRightBig">Choose from the best rides in the country!</p>
            <a data-scroll class="btn btn-start animated fadeInUpBig" href="#team">Search</a>
          </div>
        </div>
      </div>
     

      <a id="tohash" href="#services"><i class="fa fa-angle-down"></i></a>

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
          <a class="navbar-brand" href="map.jsp">
            <h1><img class="img-responsive" src="images/logo_1.png" width="50" height="50" alt="logo"></h1>
          </a>                    
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">                 
            <li class="scroll"><a href="#home">Home</a></li>
             <li class="scroll"><a href="#team">Browse</a></li>
             <li class="scroll"><a href="UserViewBook.jsp">My Rides</a></li> 
            <li class="scroll"><a href="UserCancelBook.jsp ">Cancel</a></li> 
                        
            <li class="scroll"><a href="#portfolio">Feedback</a></li>
            <li class="scroll"><a href="#about-us">Change Password</a></li>
            <li class="scroll"><a href="index.jsp">LogOut</a></li>
                  
          </ul>
       </div>
      </div>
    </div><!--/#main-nav-->
  </header><!--/#home-->

 <section id="team">

     <!--   <div id="google-map" class="wow fadeIn" data-latitude="52.365629" data-longitude="4.871331" data-wow-duration="1000ms" data-wow-delay="400ms"></div>-->
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
              <h2><text style="color: seagreen"> Book your Ride</h2>
          
          </div>
        </div>
        <div class="contact-form wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="row">
            <div class="col-sm-6">
              <form id="" name="contact-form" method="post" action="UserSearch.jsp">
                <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
 
                <div class="form-group">
                 <select name="type" onchange="seldist(this.value)" id="message" class="form-control" rows="4">
                     <%
                            String sql5="select *from vehicletype";
                            ResultSet rs5=connect.getData(sql5);
                            while(rs5.next())
                            {
                            %>       
              <option value="<%=rs5.getString("v_id")%>"><%=rs5.getString("vehicle_type")%></option>
              <%}
                    %>
                 </select>
                </div>   
                 <div class="form-group">
                      <select name="cat" class="form-control" rows="4" id="sel">
                           <option>Select</option>
                        </select>
                 </div>
                <div class="form-group">
                  <button type="submit" class="btn-submit">Search</button>
                </div>
            </div>
              </form>
          </div>
        </div>
      </div>
    </div>
    </div><!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
  
  <!--/#portfolio-->
   
<!-- <section id="services">
    <div class="container">
      <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
        <div class="row">
          <div class="text-center col-sm-8 col-sm-offset-2">
            <h2>Avilable Slots</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam</p>
          </div>
        </div> 
      </div>
      <div class="text-center our-services">
        <div class="row">
          <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="service-icon">
              <i class="fa fa-flask"></i>
            </div>
            <div class="service-info">
              <h3>Brand Identity</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
            </div>
          </div>
      
        </div>
      </div>
    </div>
  </section>/#services-->
  
  <section id="portfolio">
<!--     <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
          <h2>Our Portfolio</h2>-->
          
     <!--   <div id="google-map" class="wow fadeIn" data-latitude="52.365629" data-longitude="4.871331" data-wow-duration="1000ms" data-wow-delay="400ms"></div>-->
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
              <h2><text style="color: seagreen"> Feedback</h2>
          
          </div>
        </div>
        <div class="contact-form wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="row">
            <div class="col-sm-6">
              <form id="" name="contact-form" method="post" action="../feedback">
                <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
 
                <div class="form-group">
                  <textarea name="message" id="message" class="form-control" rows="4" placeholder="Enter your Feedback" required="required"></textarea>
                </div>                       
                <div class="form-group">
                  <button type="submit" class="btn-submit">Submit</button>
                </div>
              
            </div>
                  </form>   
            <div class="col-sm-6">
                 
            </div>
          </div>
        </div>
      </div>
    </div>

    </div><!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
  
  
   <section id="about-us">

     <!--   <div id="google-map" class="wow fadeIn" data-latitude="52.365629" data-longitude="4.871331" data-wow-duration="1000ms" data-wow-delay="400ms"></div>-->
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
              <h2><text style="color: seagreen"> Change Password</h2>
            <%
                String password="";
                 String acc=(String)session.getAttribute("username");
                 String sql="select *from login where username='"+acc+"'";
                 ResultSet rs=connect.getData(sql);
                 if(rs.next())
                 {
                     password=rs.getString("password");
                 }
                %>
          </div>
        </div>
        <div class="contact-form wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="row">
            <div class="col-sm-6">
              <form id="" name="contact-form" method="post" action="changepass.jsp">
                <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
 
                <div class="form-group">
                    <input type="text" name="message" id="message" class="form-control" rows="4" placeholder="Old Password" required="required" value="<%=password%>" >
                </div>
                    <div class="form-group">
                 <input type="password" name="message1" id="message" class="form-control" rows="4" placeholder="New Password" required="required">
                </div>
                <div class="form-group">
                  <button type="submit" class="btn-submit">Update</button>
                </div>
              
            </div>
                  
                  </form>   
            <div class="col-sm-6">
                 
            </div>
          </div>
        </div>
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
            <a href="index.html"><img class="img-responsive" src="images/logo_1.png" width="50" height="50" alt=""></a>
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
