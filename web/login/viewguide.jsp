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
            <li class="scroll"><a href="userhome.jsp">Home</a></li>
           
             <li class="scroll"><a href="#team">Your Driver</a></li> 
           
                  
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
                 <center><h1><text style="color: darkgreen"> View Your Guide</h1></center>
            
     <!--   <div id="google-map" class="wow fadeIn" data-latitude="52.365629" data-longitude="4.871331" data-wow-duration="1000ms" data-wow-delay="1000ms"></div>-->
     <center>
                            <body>
        <%
            String id=request.getParameter("id");
            String sql="select *from guide_assign where bid='"+id+"'";
            ResultSet rs=connect.getData(sql);
            int f=0;
            String s="";
            String name="";
            String phone="";
            String address="";
            String photo="";
           if(rs.next())
            {
                f=1;
                s=rs.getString("gid");
                
            }
           if(f==1)
           {
               String sql3="select *from guide where guide_id='"+s+"'";
              ResultSet rs1=connect.getData(sql3);
              if(rs1.next())
              {
                  name=rs1.getString("guidename");
                  phone=rs1.getString("phoneno");
                  address=rs1.getString("address");
                  photo=rs1.getString("image");
                  
              }
              %>
              <table><th>name</th><th>address</th><th>phone</th><th>photo</th>
                  <tr><td><%=name%></td><td><%=address%></td><td><%=phone%></td><td><img src="../images/<%=photo%>" width="50" height="50"></td></tr>
              </table>
              <%
           }
           else
           {
               out.println("You have not been assigned a guide. Sorry for the inconvenience.");
           }
            %>
    </body>
         </table></center>
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
