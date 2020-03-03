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
  <title>Online Vehicle Rental | Date</title>
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
                alert(x);
                var b=document.getElementById("sid").value;
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
            xmlhttp.open("GET", "state1.jsp?q="+x+"&&vid="+b, true);
              
            xmlhttp.send();
            }
             </script> 
  <script>
      function hai(x)
      {
          var a=parseInt(x);
          var b=document.getElementById("amn").value;
          var a1=parseInt(b);
          var c=a*a1;
          document.getElementById("total").value=c;
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
              <li class="scroll active"><a>Date >></a></li> 
              <li class="scroll"><a>Payment>></a></li> 
             <li class="scroll"><a href="userhome.jsp">Home</a></li> 
                  
                  
          </ul>
       </div>
      </div>
    </div><!--/#main-nav-->
  </header><!--/#home-->

   
  <%
    String s=(String)session.getAttribute("username");
    String id=request.getParameter("id");
    String slot=request.getParameter("sl");
    session.setAttribute("slid",id);
    session.setAttribute("amount",slot);
    %>

 <section id="team">

     <!--   <div id="google-map" class="wow fadeIn" data-latitude="52.365629" data-longitude="4.871331" data-wow-duration="1000ms" data-wow-delay="400ms"></div>-->
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
              <h2><text style="color: darkgreen">Date of Booking</h2>
          
          </div>
        </div>
        <div class="contact-form wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="row">
            <div class="col-sm-6">
              <form id="" name="contact-form" method="post" action="">
                <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
 
                <div class="form-group">
                    <input type="hidden" id="sid" value="<%=id%>" name="iid">
                when you need?: <input type="date" name="date" id="dd" class="form-control" rows="4" placeholder="place/pincode" required="required">
                </div> 
                
                <div class="form-group">
                  <button type="submit" class="btn-submit" name="save">Find</button>
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
<%
    //out.println("haiii");
    if(request.getParameter("save")!=null)
    {
    String rid=request.getParameter("iid");
    String date=request.getParameter("date");
   //out.println(state);
    String sql="select b.* from booking b where b.vid='"+rid+"' and b.booked_date='"+date+"' and b.status='1'";
    ResultSet rs=connect.getData(sql);
    int f=0;
   while(rs.next())
	{
         f=1;  
       
	}
   if(f==1)
   {
   %>
   <script>
       alert("sorry");
       </script>
   <%
    }
else
{
response.sendRedirect("seat1.jsp?date="+date);
}
}
%>