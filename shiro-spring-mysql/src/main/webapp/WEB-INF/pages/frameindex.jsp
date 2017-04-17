<!DOCTYPE html>
<html lang="en">
	<!--
	#######################################
		- THE HEAD PART -
	######################################
	-->
	<head>
    	<meta charset="utf-8">
    	<title>Shiro Application</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <%@ include file="/WEB-INF/pages/include/topInc.jsp" %>
  <%@ include file="/WEB-INF/pages/include/topHead.jsp" %>

	    <!-- Bootstrap core CSS -->
	    <link href="static/simplyfly/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Font Awesome -->
		<link href="static/simplyfly/css/font-awesome.min.css" rel="stylesheet">

		<!-- ionicons -->
		<link href="static/simplyfly/css/ionicons.min.css" rel="stylesheet">
		
		<!-- Owl -->
		<link href="static/simplyfly/css/owl.carousel.min.css" rel="stylesheet">
		<link href="static/simplyfly/css/owl.theme.default.min.css" rel="stylesheet">

		<!-- Revolution Slider -->
		<link href="static/simplyfly/landing/css/style.css" rel="stylesheet">
		<link href="static/simplyfly/landing/rs-plugin/css/settings.css" rel="stylesheet">
		<link href="static/simplyfly/landing/css/extralayers.css" rel="stylesheet">

		<!-- Simplify -->
		<link href="static/simplyfly/css/simplify.css" rel="stylesheet">

	</head>

<!--
#######################################
	- THE BODY PART -
######################################
-->
	<body>
		<div class="wrapper front-end-wrapper">
			

	

			<div class="section bg-white section-padding" id="howItWorkSection">
			<div class="container">
					<div class="text-center">
						<h3 class="text-upper no-m-top">APPLICATION  <span class="text-success"> LIST</span></h3>
						<!-- <p>This web based app template give you much power to build your great application.</p> -->
					</div>

					<div class="row" style="margin-top:70px;" >
					
					<c:forEach items="${applications}" var="module">
					<a href="${contextPath}/getuserdetails/${module.id}" >
						<div class="col-md-4 text-center">
							<div class="how-it-work-list fadeInRight animation-element disabled">
								<div class="how-it-work-icon">
									<i class="fa fa-edit fa-3x"></i>
								</div>
					
				<h4 class="m-top-md text-upper"  >${module.appname}</h4>

					
							</div>
						</div></a>

		</c:forEach>
			
						
				
				
					
					</div>
				</div> 
			</div>

			
		
			<!--	<footer class="front-end-footer">
		 <div class="container">
					<div class="row">
				 	<div class="col-md-3">
							<h4>Contact Us</h4>
							<address class="m-top-md">
							  <strong>Twitter, Inc.</strong><br>
								795 Folsom Ave, Suite 600<br>
								San Francisco, CA 94107<br>
								<div class="seperator"></div>
								<strong>Phone : <span class="theme-font">(123) 456-7890</span></strong><br>
								<strong>Email : <span class="theme-font">endless.themes@gmail.com</span></strong><br>
								<strong>Website : <span class="theme-font">Your website</span></strong>
							</address>
						</div>./col
						<div class="col-md-3">
							<h4>Quick Link</h4>
							<ul class="list-unstyled m-top-md">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Term & Conditions</a></li>
								<li><a href="#">FAQS</a></li>
							</ul>
						</div>./col
						<div class="col-md-3">
							<h4>Quick Link</h4>
							<ul class="list-unstyled m-top-md">
								<li><a href="#">How it work</a></li>
								<li><a href="#">Find Work</a></li>
								<li><a href="#">Join Us</a></li>
							</ul>
						</div>./col
						<div class="col-md-3">
							<h4>Flikr Photo</h4>

							<ul class="photo-list m-top-md">
								<li>
									<a href="#"><img src="../images/gallery/gallery1.jpg" alt=""></a>
								</li>
								<li>
									<a href="#"><img src="../images/gallery/gallery2.jpg" alt=""></a>
								</li>
								<li>
									<a href="#"><img src="../images/gallery/gallery3.jpg" alt=""></a>
								</li>
								<li>
									<a href="#"><img src="../images/gallery/gallery4.jpg" alt=""></a>
								</li>
								<li>
									<a href="#"><img src="../images/gallery/gallery5.jpg" alt=""></a>
								</li>
								<li>
									<a href="#"><img src="../images/gallery/gallery6.jpg" alt=""></a>
								</li>
								<li>
									<a href="#"><img src="../images/gallery/gallery7.jpg" alt=""></a>
								</li>
								<li>
									<a href="#"><img src="../images/gallery/gallery8.jpg" alt=""></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer> -->

			<a href="#" class="scroll-to-top hidden-print"><i class="fa fa-chevron-up fa-lg"></i></a>
		</div><!-- /wrapper -->

		<!-- Jquery -->
		<script src="static/simplyfly/js/jquery-1.11.1.min.js"></script>

		<!-- Bootstrap -->
		<script src="static/simplyfly/bootstrap/js/bootstrap.min.js"></script>

		<!-- Modernizr -->
		<script src='static/simplyfly/js/modernizr.min.js'></script>

		<!-- Owl -->
		<script src='static/simplyfly/js/owl.carousel.min.js'></script>

		<!-- Waypoint -->
		<script src='static/simplyfly/js/waypoints.min.js'></script>

		<!-- ScrollTo -->
		<script src="static/simplyfly/js/jquery.scrollTo.min.js"></script>

		<!-- Local Scroll -->
		<script src="static/simplyfly/js/jquery.localScroll.min.js"></script>

		<!-- Revolution Slider -->
		<script src="static/simplyfly/landing/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script src="static/simplyfly/landing/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

		<script type="text/javascript">

		jQuery(document).ready(function() {		
			//Slider Revolution	
			jQuery('.tp-banner').show().revolution(
			{
				dottedOverlay:"none",
				delay:16000,
				startwidth:1170,
				startheight:700,
				hideThumbs:200,
				
				thumbWidth:100,
				thumbHeight:50,
				thumbAmount:5,
				
				navigationType:"bullet",
				navigationArrows:"solo",
				navigationStyle:"preview4",
				
				touchenabled:"on",
				onHoverStop:"on",
				
				swipe_velocity: 0.7,
				swipe_min_touches: 1,
				swipe_max_touches: 1,
				drag_block_vertical: false,
										
										parallax:"mouse",
				parallaxBgFreeze:"on",
				parallaxLevels:[7,4,3,2,5,4,3,2,1,0],
										
				keyboardNavigation:"off",
				
				navigationStyle: "preview2",
				navigationHAlign:"center",
				navigationVAlign:"middle",
				navigationHOffset:0,
				navigationVOffset:20,

				soloArrowLeftHalign:"left",
				soloArrowLeftValign:"center",
				soloArrowLeftHOffset:20,
				soloArrowLeftVOffset:0,

				soloArrowRightHalign:"right",
				soloArrowRightValign:"center",
				soloArrowRightHOffset:20,
				soloArrowRightVOffset:0,
						
				shadow:0,
				fullWidth:"on",
				fullScreen:"off",

				spinner:"spinner4",
				
				stopLoop:"off",
				stopAfterLoops:-1,
				stopAtSlide:-1,

				shuffle:"off",
				
				autoHeight:"off",						
				forceFullWidth:"off",						
													
				hideThumbsOnMobile:"off",
				hideNavDelayOnMobile:1500,						
				hideBulletsOnMobile:"off",
				hideArrowsOnMobile:"off",
				hideThumbsUnderResolution:0,
				
				hideSliderAtLimit:0,
				hideCaptionAtLimit:0,
				hideAllCaptionAtLilmit:0,
				startWithSlide:0,
				fullScreenOffsetContainer: ".header"	
			});		
			//End Slider Revolution

			//Section Animation
			if (Modernizr.mq('(min-width: 1349px)')) {
				$('.animation-element').waypoint(function() {
						$(this).removeClass('disabled');
				}, { offset: 700 });
			}
			else if (Modernizr.mq('(min-width: 992px)') && Modernizr.mq('(max-width: 1349px)')) {
				$('.animation-element').waypoint(function() {
						$(this).removeClass('disabled');
				}, { offset: 550 });
			}
			else	{
				$('.animation-element').removeClass('disabled');
			}

			//Testimonial carousel
			$('.owl-carousel').owlCarousel({
			    loop:true,
			    margin:10,
			    nav:false,
			    items:1,
			    autoplay:true,
			    autoplayTimeout:2500,
			    autoplayHoverPause:true,
			    smartSpeed:500
			});

			//Scrollto section
	        $('.front-end-wrapper .navbar-collapse .navbar-nav').localScroll({
	          duration:800,
	          offset: -100
	        });
		});	
		
	</script>
					
	</body>
</html>