<%@page import="com.hcl.Boot.Model.Item ,java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
<title>Royal Recipes a Hotels and restaurants Category Flat Bootstrap responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Royal Recipes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="/css/style.css" type="text/css" media="all" />
<!--// css -->
<link rel="stylesheet" href="/css/owl.carousel.css" type="text/css" media="all">
<link href="/css/owl.theme.css" rel="stylesheet">
<!-- font-awesome icons -->
<link href="/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href='//fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!-- light-box -->
<link rel="stylesheet" href="css/lightbox.css">
<!-- //light-box -->
<script src="js/SmoothScroll.min.js"></script>
<!--search jQuery-->
<script src="js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxy/1.6.1/scripts/jquery.ajaxy.min.js"></script>
<!--//search jQuery-->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
	
	$( "select" ).change(function () {
	    var str = "";
	    $("select option:selected").each(function() {
	      str += $( this ).text() + " ";
	    });
	   alert(str);
	  }).change();
</script>

<script>
$(document).ready(function() { 
	$("#owl-demo").owlCarousel({
 
		autoPlay: 3000, //Set AutoPlay to 3 seconds
		autoPlay:true,
		items : 4,
		itemsDesktop : [640,5],
		itemsDesktopSmall : [414,4]
 
	});
	
}); 
</script>
</head>
<body>
	<div class="w3layouts-banner-top">
		
	</div>
	<!-- banner -->
	<div class="banner">
		<div class="top-banner">
			<div class="container">
				<div class="top-banner-left">
					<ul>
						<li><i class="fa fa-phone" aria-hidden="true"></i> +1 234 567 8901</li>
						<li><a href="mailto:example@email.com"><i class="fa fa-envelope" aria-hidden="true"></i> mail@example.com</a></li>
					</ul>
				</div>
				<div class="top-banner-right">
					<ul>
						<li><a class="facebook" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1>
						<a href="index.html">Royal Recipes</a>
					</h1>
				</div>
				<% 
String uname=(String)session.getAttribute("username"+session.getId()); 
out.print("Welcome "+ uname);
//session.setAttribute("sessname",uname); 
%> 
				<div class="top-nav">
					<nav class="navbar navbar-default">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">Menu						
							</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a class="active" href="index.html"><%= uname %></a></li>
								<li><a href="/myOrder">My Order</a></li>
								<li><a href="/index">Index</a>
									
								</li>								
								<li><a href="/login">Login</a></li>
								<li><a href="/signup">Signup</a></li>
								<li><a href="/logout">Logout</a></li>
							</ul>	
							<div class="clearfix"> </div>
						</div>	
					</nav>		
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="banner-slider">
			<div class="container">
				<div class="slider">
					<div class="callbacks_container">
						<ul class="rslides callbacks callbacks1" id="slider4">
							<li>
								<div class="agileits-banner-info">
									<h3>Lorem ipsum dolor sit amet</h3>
									<p>Donec tellus metus, ornare et mollis ut, maximus id nisi. Quisque scelerisque accumsan sem nec ullamcorper. Cras sed purus eget augue egestas commodo. Sed erat magna, pharetra aliquet mattis mollis, maximus eget lacus. </p>
									<a href="menu.html">Menu</a>
								</div>
							</li>
							<li>
								<div class="agileits-banner-info">
									<h3>Fusce egestas purus in nulla</h3>
									<p>Sed erat magna, pharetra aliquet mattis mollis, maximus eget lacus. Donec tellus metus, ornare et mollis ut, maximus id nisi. Quisque scelerisque accumsan sem nec ullamcorper. Cras sed purus eget augue egestas commodo. </p>
									<a href="menu.html">Menu</a>
								</div>
							</li>
							<li>
								<div class="agileits-banner-info">
									<h3>Duis faucibus dolor risus</h3>
									<p>Quisque scelerisque accumsan sem nec ullamcorper. Donec tellus metus, ornare et mollis ut, maximus id nisi. Cras sed purus eget augue egestas commodo. Sed erat magna, pharetra aliquet mattis mollis, maximus eget lacus. </p>
									<a href="menu.html">Menu</a>
								</div>
							</li>
						</ul>
					</div>
					<script src="js/responsiveslides.min.js"></script>
					<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					 </script>
					<!--banner Slider starts Here-->
				</div>
			</div>
		</div>
	</div>
	<!-- banner -->
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="services-heading">
				<h2>Order your Food</h2>
			</div>
			<div class="w3-agileits-services-grids">
				<div class="col-md-4 w3-agileits-services-left">
					<div class="services-info">
						
					</div>
				</div>
				<div class="col-md-8 w3-agileits-services-right">
					<div class="services-right-grids">
						<div class="col-sm-6 services-right-grid">
					<!-- 	<script>
						("#selectedItem").change(function(){
							var categoryId = $(this).val();
					        $.ajax({
					            type: 'POST',
					            url: "http://localhost:8081/getItem",
					            data: {"price" : price},
					            success: function(data){
					            	alert(data);
					            	console.log(data);
					                var slctSubcat=$('#price'), option="";
					                slctSubcat.empty();

					                for(var i=0; i<data.length; i++){
					                    option = option + "<option value='"+data[i].id + "'>"+data[i].getPrice() + "</option>";
					                }
					                slctSubcat.append(option);
					            },
					            error:function(){
					                alert("error");
					            }

					        });
					    });
						</script> -->
					<span style="color:red">${item.get(0).getMessage()}</span>
							<form action="/placeOrder" method="POST">
								
								<div class="input-group wow fadeInUp animated" data-wow-delay=".5s">
									<span class="input-group-addon" id="basic-addon1">@</span>
								
								�<select class="form-control" id="selectedItem"  name="oitem_id" placeholder="Select the item">
									<option value="0">Select the Item</option>
							
									<%!List<Item> item=null; %>
									
									<%
									item= (List) request.getAttribute("item");
									for(int i=0;i<item.size();i++){
										%>
									
										<option value="<%=item.get(i).getItem_id() %>"><%=item.get(i).getIname()%> : <%=item.get(i).getIprice() %></option>
										<%
									}
										%>
									
										
								
								</select>�
								<input type="hidden" name="order_by" value="<%= uname %>" />
								</div>
								<div class="input-group wow fadeInUp animated" data-wow-delay=".5s">
									<span class="input-group-addon" id="basic-addon1">*</span>
									<input type="text" class="form-control"  placeholder="Quantity" name="quantity" aria-describedby="basic-addon1">
								</div>
								<div class="input-group wow fadeInUp animated" data-wow-delay=".5s">
									<button type="submit" class="btn btn-success">Submit</button>
								</div>
							</form>
						</div>
						
						<div class="clearfix"> </div>
					</div>
					<div class="services-right-grids">
						<div class="col-sm-6 services-right-grid">
							<div class="services-icon hvr-radial-in">
								<i class="fa fa-heartbeat" aria-hidden="true"></i>
							</div>
							<div class="services-icon-info">
								<h5>Phasellus suscipit</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed orci enim, posuere sed tincidunt et, pellentesque eget mi.</p>
							</div>
						</div>
						<div class="col-sm-6 services-right-grid">
							<div class="services-icon hvr-radial-in">
								<i class="fa fa-magnet" aria-hidden="true"></i>
							</div>
							<div class="services-icon-info">
								<h5>Phasellus suscipit</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed orci enim, posuere sed tincidunt et, pellentesque eget mi.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="services-right-grids">
						<div class="col-sm-6 services-right-grid">
							<div class="services-icon hvr-radial-in">
							<i class="fa fa-thumbs-up" aria-hidden="true"></i>
							</div>
							<div class="services-icon-info">
								<h5>Phasellus suscipit</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed orci enim, posuere sed tincidunt et, pellentesque eget mi.</p>
							</div>
						</div>
						<div class="col-sm-6 services-right-grid">
							<div class="services-icon hvr-radial-in">
								<i class="fa fa-heartbeat" aria-hidden="true"></i>
							</div>
							<div class="services-icon-info">
								<h5>Phasellus suscipit</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed orci enim, posuere sed tincidunt et, pellentesque eget mi.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- offer -->
	<div class="jarallax offer">
		<div class="container">
			<div class="w3l-offer-heading">
				<h3>Today Offers</h3>
			</div>
			<div class="w3ls-offer-slider">
				<div class="slider">
					<div class="callbacks_container">
						<ul class="rslides callbacks callbacks1" id="slider3">
							<li>
								<div class="agileinfo-offer-grid">
									<h4>45<span>%</span></h4>
									<h5>Pork Vindaloo</h5>
									<p>Quisque scelerisque rutrum nunc, eget hendrerit diam porta efficitur. Duis bibendum consequat est, sed efficitur arcu. Morbi viverra, leo sit amet vestibulum dignissim, tortor est dignissim dolor, eu accumsan est urna id felis. </p>
								</div>
							</li>
							<li>
								<div class="agileinfo-offer-grid">
									<h4>50%</h4>
									<h5>Phaal Curry</h5>
									<p>Vestibulum euismod porttitor interdum. Vivamus porta consectetur nulla porttitor hendrerit. Pellentesque ultrices augue ut nibh feugiat, nec egestas orci cursus. Sed vehicula quis erat sed lobortis. Curabitur eleifend sit amet.</p>
								</div>
							</li>
							<li>
								<div class="agileinfo-offer-grid">
									<h4>64%</h4>
									<h5>Laal Maas</h5>
									<p>Aenean volutpat auctor ultrices. Aliquam ac turpis ultrices, porta enim at, interdum velit. Ut ligula justo, sodales eu nisi a, molestie dictum leo. Sed blandit porta ante, at consequat nulla fermentum a. Donec aliquet tristique.</p>
								</div>
							</li>
						</ul>
					</div>
					<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider3").responsiveSlides({
							auto: true,
							pager:false,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					 </script>
					<!--banner Slider starts Here-->
				</div>
			</div>
			<script src="js/jarallax.js"></script>
		</div>
	</div>
	<!-- //offer -->
	<!-- special -->
	<div class="special">
		<div class="container">
			<div class="wthree-special-heading">
				<h3>Today Special</h3>
			</div>
			<div class="special-grids">
				<div id="owl-demo" class="owl-carousel owl-theme">
						<div class="item">
							<div class="w3-agileits-special-grid-info">
								<img src="images/s1.jpg" alt="" />
								<div class="agile-special-grid-text"> 
									<h5>Pellentesque justo enim, tempor et tellus eu, molestie viverra ligula.</h5>
									<p><del>$20</del> $15</p>
								</div>
							</div>	
						</div>
						<div class="item">
							<div class="w3-agileits-special-grid-info">
								<img src="images/s2.jpg" alt="" />
								<div class="agile-special-grid-text"> 
									<h5>Pellentesque justo enim, tempor et tellus eu, molestie viverra ligula.</h5>
									<p><del>$25</del> $10</p>
								</div>
							</div>	
						</div>
						<div class="item">
							<div class="w3-agileits-special-grid-info">
								<img src="images/s3.jpg" alt="" />
								<div class="agile-special-grid-text"> 
									<h5>Pellentesque justo enim, tempor et tellus eu, molestie viverra ligula.</h5>
									<p><del>$16</del> $12</p>
								</div>
							</div>	
						</div>
						<div class="item">
							<div class="w3-agileits-special-grid-info">
								<img src="images/s4.jpg" alt="" />
								<div class="agile-special-grid-text"> 
									<h5>Pellentesque justo enim, tempor et tellus eu, molestie viverra ligula.</h5>
									<p><del>$32</del> $22</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="w3-agileits-special-grid-info">
								<img src="images/s1.jpg" alt="" />
								<div class="agile-special-grid-text"> 
									<h5>Pellentesque justo enim, tempor et tellus eu, molestie viverra ligula.</h5>
									<p><del>$20</del> $15</p>
								</div>
							</div>	
						</div>
						<div class="item">
							<div class="w3-agileits-special-grid-info">
								<img src="images/s2.jpg" alt="" />
								<div class="agile-special-grid-text"> 
									<h5>Pellentesque justo enim, tempor et tellus eu, molestie viverra ligula.</h5>
									<p><del>$25</del> $10</p>
								</div>
							</div>	
						</div>
						<div class="item">
							<div class="w3-agileits-special-grid-info">
								<img src="images/s3.jpg" alt="" />
								<div class="agile-special-grid-text"> 
									<h5>Pellentesque justo enim, tempor et tellus eu, molestie viverra ligula.</h5>
									<p><del>$16</del> $12</p>
								</div>
							</div>	
						</div>
						<div class="item">
							<div class="w3-agileits-special-grid-info">
								<img src="images/s4.jpg" alt="" />
								<div class="agile-special-grid-text"> 
									<h5>Pellentesque justo enim, tempor et tellus eu, molestie viverra ligula.</h5>
									<p><del>$32</del> $22</p>
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //special -->
	<!-- footer -->
	<div class="w3-agile-footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<div class="footer-grid-heading">
						<h4>Address</h4>
					</div>
					<div class="footer-grid-info">
						<p>Eiusmod Tempor inc
							<span>St Dolore Place,Kingsport 56777.</span>
						</p>
						<p class="phone">Phone : +1 123 456 789
							<span>Email : <a href="mailto:example@email.com">mail@example.com</a></span>
						</p>
					</div>
				</div>
				<div class="col-md-3 footer-grid">
					<div class="footer-grid-heading">
						<h4>Navigation</h4>
					</div>
					<div class="footer-grid-info">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="myOrder">My Order</a></li>
							<li><a href="menu.html">Menu</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 footer-grid">
					<div class="footer-grid-heading">
						<h4>Follow</h4>
					</div>
					<div class="social">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-rss"></i></a></li>
							<li><a href="#"><i class="fa fa-vk"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 footer-grid">
					<div class="footer-grid-heading">
						<h4>Newsletter</h4>
					</div>
					<div class="footer-grid-info">
						<form action="#" method="post">
							<input type="email" id="mc4wp_email" name="EMAIL" placeholder="Enter your email here" required="">
							<input type="submit" value="Subscribe">
						</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="agileits-w3layouts-copyright">
				<p>© 2017 Royal Recipes . All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts</a> </p>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<script src="js/owl.carousel.js"></script>  
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script type="text/javascript">
			/* init Jarallax */
			$('.jarallax').jarallax({
				speed: 0.5,
				imgWidth: 1366,
				imgHeight: 768
			})
		</script>
</body>	
</html>