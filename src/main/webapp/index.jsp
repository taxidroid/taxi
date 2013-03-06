<!DOCTYPE html>
<html>
<head>
<%
	String s = request.getParameter("key");
	String s1 = request.getParameter("key1");
	String s2 = request.getParameter("key2");
	String s3 = request.getParameter("key3");
	String p1 = (String) request.getAttribute("p1");
	String p2 = (String) request.getAttribute("p2");
%>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDZ0xHhJiidQgrWuVYLUJH8aB8bE4jCyh8&sensor=false">
    </script>
<script type="text/javascript">
      function initialize() {
    	  var myMarkerImage = new google.maps.MarkerImage('images/transparent.png');
        var mapOptions = {
          center: new google.maps.LatLng(34.2568203	,-6.5518777),
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var infowindow = new google.maps.InfoWindow();
        var map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
        var myMarker = new google.maps.Marker({
        	// Coordonnées du cinéma
        	<%
        	if(s1!=null && s2!=null){
        	double sh= Double.valueOf(s1).doubleValue();
        	double sk=Double.valueOf(s2).doubleValue();
        	
         	%> 
        	position: new google.maps.LatLng(<%=sh%>,<%=sk%>),
        	map: map,
        	icon: myMarkerImage,
        	title: "Cinéma Pathé Bellecour"
        	<%}%>});
        google.maps.event.addListener(myMarker, 'click', (function(myMarker) {
            return function() {
              infowindow.setContent("client:Lat="+<%=s1%>+" "+"Long="+<%=s2%>+"");
              infowindow.open(map, myMarker);
            }
          })(myMarker));
       
       <% if (p1 != null && p2 != null) {
        	

	// Coordonnées du cinéma
				String[] tab1 = p1.split(" ");
				String[] tab2 = p2.split(" ");
				for (int h = 0; h < tab1.length; h++) {
					%>
					var myMarker = new google.maps.Marker({
						<%double a=Double.valueOf(tab1[h]).doubleValue();
						double b=Double.valueOf(tab2[h]).doubleValue();%>
				        position: new google.maps.LatLng(<%=a%>, <%=b%>),
	                    map: map,
						title: "Cinéma Pathé Bellecour"
        	});
        	
			google.maps.event.addListener(myMarker, 'click', (function(myMarker) {
				 return function() {
				infowindow.setContent("taxi:Lat="+<%=tab1[h]%>+" "+"Long="+<%=tab2[h]%>+"");
				  infowindow.open(map, myMarker);
				  <%System.out.println("hfhfh");%>
				    }
				  })(myMarker));
        	
        	<%}}%>
      }
    </script>
<title>Free HTML5 Templates</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>
<body onload="initialize()">
	<div id="main">
		<header>
			<div id="banner">
				<div id="welcome">
					<%-- 					<%if(isset($_GET['key'])) --%>
					<%-- 							out.print($_GET['key']);%> --%>
					<h2>
						<%
							String msg2 = (String) request.getAttribute("erreur2");
							if (msg2 != null)
								out.print(msg2);
						%>
						Apps_Delivery
					</h2>
				</div>
				<!--close welcome-->
			</div>
			<!--close banner-->
		</header>

		<nav>
			<div id="menubar">
				<ul id="nav">
					<li class="current"><a href="index.html">Home</a></li>
					<li><a href="ourwork.html">Our Work</a></li>
					<li><a href="testimonials.html">Testimonials</a></li>
					<li><a href="projects.html">Projects</a></li>
					<li><a href="contact.html">Contact Us</a></li>
				</ul>
			</div>
			<!--close menubar-->
		</nav>

		<div id="site_content">


			<div class="slideshow">

				<div id="map_canvas" style="width: 100%; height: 100%"></div>


				<!-- 				<ul class="slideshow"> -->
				<!-- 					<li class="show"><img width="940" height="300" -->
				<!-- 						src="images/home_1.jpg" alt="&quot;Enter your caption here&quot;" /></li> -->
				<!-- 					<li><img width="940" height="300" src="images/home_2.jpg" -->
				<!-- 						alt="&quot;Enter your caption here&quot;" /></li> -->
				<!-- 				</ul> -->


			</div>
			<!--close slideshow-->

			<div class="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_item">
						<!--             <h2>New Website</h2> -->
						<!--             <p>Welcome to our new website. Please have a look around, any feedback is much appreciated.</p> -->
					</div>
					<!--close sidebar_item-->
				</div>
				<!--close sidebar-->
				<div class="sidebar">
					<div class="sidebar_item">
						<!--             <h2>Latest Update</h2> -->
						<!--             <h3>February 2013</h3> -->
						<!--             <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>          -->
					</div>
					<!--close sidebar_item-->
				</div>
				<!--close sidebar-->
				<div class="sidebar">
					<div class="sidebar_item">
						<!--             <h3>January 2013</h3> -->
						<!--             <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>          -->
					</div>
					<!--close sidebar_item-->
				</div>
				<!--close sidebar-->
				<div class="sidebar">
					<div class="sidebar_item">
						<!--             <h2>Contact</h2> -->
						<!--             <p>Phone: +44 (0)1234 567891</p> -->
						<!--             <p>Email: <a href="mailto:info@youremail.co.uk">info@youremail.co.uk</a></p> -->
					</div>
					<!--close sidebar_item-->
				</div>
				<!--close sidebar-->
			</div>
			<!--close sidebar_container-->

			<div id="content">
				<div class="content_item">
					<!-- 		  <h1>Welcome To Your Website</h1>  -->
					<!--           <p>This standards compliant, simple, fixed width website template is released as an 'open source' design (under the Creative Commons Attribution 3.0 Licence), which means that you are free to download and use it for anything you want (including modifying and amending it). If you wish to remove the &ldquo;website template by Free HTML5 Templates&rdquo;, all I ask is for a donation of &pound;20.00 GBP. Please feel free to contact me with any questions you may have about my free HTML5 website templates or bespoke work.</p>   				   -->
					<!-- 		  <div class="content_imagetext"> -->
					<div class="content_image">
						<!-- 		      <img src="images/image1.jpg" alt="image1"/> -->
					</div>
					<!-- 		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elit sapien, tempus sit amet hendrerit volutpat, euismod vitae risus. Etiam consequat, sem et vulputate dapibus, diam enim tristique est, vitae porta eros mauris ut orci. Praesent sed velit odio. Ut massa arcu, suscipit viverra molestie at, aliquet a metus. Nullam sit amet tellus dui, ut tincidunt justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis egestas laoreet. Nunc non ipsum metus, non laoreet urna. Vestibulum quis risus quis diam mattis tempus. Vestibulum suscipit pretium tempor. </p> -->
				</div>
				<!--close content_imagetext-->
				<!-- 		  <div class="content_container"> -->
				<!-- 		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim. Aliquam facilisis neque non nunc posuere eget volutpat metus tincidunt.</p> -->
				<!-- 		  	<div class="button_small"> -->
				<%
					String[][] msg = (String[][]) request.getAttribute("erreur");
					if (msg != null) {
						for (int k = 0; k < msg.length; k++) {
							if (!(msg[k][0] == null) && !(msg[k][1] == null)
									&& !(msg[k][2] == null) && !(msg[k][3] == null)) {
				%><div class="content_container">
					<div class="button_small">
						<%
							s = msg[k][0];
										s1 = msg[k][1];
										s2 = msg[k][2];
										s3 = msg[k][3];
										String url = "traitement?key=" + s + "&key1=" + s1
												+ "&key2=" + s2 + "&key3=" + s3;
						%>
						<a href='<%=url%>'> <%
 	// 							request.setAttribute("sss", s);
 				out.print(msg[k][0]);
 %> Voir
						</a>
					</div>
				</div>

				<%
					}
						}
					}
				%>

				<!-- 		      <a href="#">Read more</a> -->
				<!-- 		    </div>close button_small -->
				<!-- 		  </div>close content_container -->

			</div>
			<!--close content_item-->
		</div>
		<!--close content-->

	</div>
	<!--close site_content-->

	<footer>
		<a href="index.html">Home</a> | <a href="ourwork.html">Our Work</a> |
		<a href="testimonials.html">Testimonials</a> | <a href="projects.html">Projects</a>
		| <a href="contact.html">Contact</a><br /> <br /> <a
			href="http://fotogrph.com">Images</a> | <a
			href="http://www.heartinternet.co.uk/web-hosting/">Web Hosting</a> |
		website template by <a href="http://www.freehtml5templates.co.uk">Free
			HTML5 Templates</a>
	</footer>

	</div>
	<!--close main-->

	<!-- javascript at the bottom for fast page loading -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/image_slide.js"></script>

</body>
</html>
