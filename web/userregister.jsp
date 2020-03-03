
<%@page import="java.sql.ResultSet"%>
<%@page import="bike.bike"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
                       <script type="text/javascript">
     

            //$(document).ready(function(){

            //$("#submit1").hover(
            //function() {
            //$(this).animate({"opacity": "0"}, "slow");
            //},
            //function() {
            //$(this).animate({"opacity": "1"}, "slow");
            //});
            //});
 function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pwrd');
    var pass2 = document.getElementById('cpwrd');
    //alert(pass2);
    
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value === pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pwrd.style.backgroundColor = goodColor;
        cpwrd.style.color = goodColor;
       
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        cpwrd.style.backgroundColor = badColor;
        //alert("not matched");
        //pass2.vale="";
        //pass2.value="";
        //message.style.color = badColor;
        //message.innerHTML = "Passwords Do Not Match!"
    }
} 
    function seldist(x)
            {
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
            //locality
            
             function selloc(x)
            {
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
                        

                        document.getElementById("sel1").innerHTML = xmlhttp.responseText;
                        // alert(xmlhttp.responseText);
                    }
                }
            xmlhttp.open("GET", "district.jsp?q="+x, true);
              
            xmlhttp.send();
            }
            //locality
           
</script>
        
        
         <script>
            function ValidateAlpha(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         {alert("enter alphabets only");
        return false;}
            return true;
    }
	function isNumberKey(evt){  <!--Function to accept only numeric values-->
    //var e = evt || window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode
    if (charCode != 46 && charCode > 31 
	&& (charCode < 48 || charCode > 57))
        {alert("enter numbers only");
        return false;}
        return true;
	}
	function validateemail(x)
	{
		//var x = document.forms["hai"]["b"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
		x.value="";
        return false;
    }
    
	}
        
 
</script>
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li><a href="#">My Account</a></li>
							<li><a href="cart.html">Your Cart</a></li>
							<li><a href="checkout.html">Checkout</a></li>					
							<li><a href="register.html">Login</a></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu"><FONT color="red" size="10">BIKES PORTAL</FONT>
				  <nav id="menu" class="pull-right">
					  <ul>
							<li><a href="./products.html">Woman</a>					
								<ul>
									<li><a href="./products.html">Lacinia nibh</a></li>									
									<li><a href="./products.html">Eget molestie</a></li>
									<li><a href="./products.html">Varius purus</a></li>									
								</ul>
							</li>															
							<li><a href="./products.html">Man</a></li>			
							<li><a href="./products.html">Sport</a>
								<ul>									
									<li><a href="./products.html">Gifts and Tech</a></li>
									<li><a href="./products.html">Ties and Hats</a></li>
									<li><a href="./products.html">Cold Weather</a></li>
								</ul>
							</li>							
							<li><a href="./products.html">Hangbag</a></li>
							<li><a href="./products.html">Best Seller</a></li>
							<li><a href="./products.html">Top Seller</a></li>
						</ul>
					</nav>
				</div>
			</section>			
			<section class="header_text sub">
			<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
				<h4><span>Login or Regsiter</span></h4>
			</section>			
			<section class="main-content">				
				<div class="row">
				  <div class="span7">					
				    <h4 class="title"><span class="text"><strong>Register</strong> Form</span></h4>
						<form method="post" action="register"><center>
           <table>
                
                <tr>
                    <td>Name</td>
                    <td><input type="text" placeholder="First name=" name="fname" required=""><td><input type="text" name="lname" placeholder="Second name"></td>                </tr>
              
                <tr>
                    <td>Adress</td>
                    <td><textarea rows="5" col="10" name="adress" required=""></textarea></td>
                </tr>
                 <tr>
                    <td>gender</td>
                    <td><input type="radio" name="gender" value="male">male<input type="radio" name="gender" value="female">female</td>
                </tr>
                <tr>
                    <td>Blood group</td>
                    <td><input type="radio" name="group" value="A+">A+<input type="radio" name="group" value="A-">A-</td>
                </tr>
                <tr>
                    <td>state</td>
                            <td><select name="state" onchange="seldist(this.value)">
                                    <option>select</option>
                               <% 
                          String str="Select * from tbl_State";
                          ResultSet rs= bike.getData(str);  
                          while(rs.next())
                            {
                          %>      
                            
                          
                          
                          
                           <option value="<%=rs.getString("state_id")%> "> <%=rs.getString("stname")%></option>
                     
                       
          
                           <% } %>
                             </select>
                        </td>
                </tr>
                <tr>
                    <td>District</td>
                            <td><select name="district" id="sel" onchange="selloc(this.value)">
                                    <option>select</option>
                        </select></td>
                </tr>
                <tr>
                    <td>locality</td>
                            <td><select name="locality" id="sel1">
                                    <option>select</option>
                        </select></td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td><input type="text" name="email" required=""></td>
                    
                </tr>
                <tr>
                    <td>phone number</td>
                    <td><input type="text" name="phno" required=""></td>
                </tr>
               
                <tr>
                    <td>password</td>
                    <td><input type="password" name="password" id="pwrd" required=""></td>
                </tr>
                <tr>
                    <td>Re enter password</td>
                    <td><input type="password" name="repass" id="cpwrd" required="" onkeyup="checkPass()"></td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td><input type="text" placeholder="capt" name="permission" ></td>
                </tr>
                <tr>
                    <td><input type="submit" value="register" ></td>
                </tr>
                
            </table></center>
        </form>			
					</div>				
				</div>
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contac Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>		
    </body>
</html>