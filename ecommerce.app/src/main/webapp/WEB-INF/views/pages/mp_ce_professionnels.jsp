<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags/include/front_office" %>

<!DOCTYPE html>
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>CE / PROFESSIONNELS | Mon Pressing - Pressing Industriel</title>	

		
			<include:include_commen_style />
			
	</head>
	<body>
		<div class="body">
		
			<include:include_header />

			<div role="main" class="main">
				<section class="video section section-text-light section-video section-center mt-none" data-video-path="<c:url value="/resources/img/parallax.jpg"/>" data-plugin-video-background data-plugin-options='{"posterType": "jpg", "position": "50% 50%", "overlay": true}'>
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								
								<div class="owl-carousel owl-theme nav-bottom rounded-nav mt-lg mb-none"  data-plugin-options='{"items": 1, "animateOut": "fadeOut", "animateIn": "fadeIn", "autoplay": true, "autoplayTimeout": 6000}'>
									<div>
										<div class="col-md-12">
											<div class="testimonial testimonial-style-1 testimonial-with-quotes mb-none">
												
													<h2><strong>Vos collaborateurs n'ont pas de temps Ã  perdre !</strong></h2>
											
											</div>
											<div class="testimonial testimonial-style-6 testimonial-with-quotes mb-none">
												<p><blockquote>
													<p><strong>Leur bien Ãªtre est primordial pour qu'ils soient les plus efficaces possible.</strong></p>
												</blockquote>
											
												<div class="testimonial-author">
													<p><span>Mon Pressing</span></p>
												</div>
											</div>
										</div>
									</div>
									<div>
										<div class="col-md-12">
											<div class="testimonial testimonial-style-6 testimonial-with-quotes mb-none">
												<blockquote>
													<p><strong>Mon Pressing propose des prestaitons de qualitÃ©, Pour vous simplifiez la vie et vous faÃ®tes gagner un temps prÃ©cieux.</strong></p>
												</blockquote>
												<div class="testimonial-author">
													<p><span>Mon Pressing</span></p>
												</div>
											</div>
										</div>
									</div>
									<div>
										<div class="col-md-12">
											<div class="testimonial testimonial-style-6 testimonial-with-quotes mb-none">
												<blockquote>
													<p><strong>Pour une meilleure efficacitÃ©, nous vous proposons l'enlÃ¨vement et la livraison du linge dans vos locaux.</strong></p>
												</blockquote>
												<div class="testimonial-author">
													<p><span>Mon Pressing</span></p>
												</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</section>
				<div class="container">
					<div class="row">
						<div class="col-md-7">
							<h2>La Nouvelle service <strong>MON PRESSING</strong></h2>
							<p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat urna arcu, vel molestie nunc commodo non. Nullam vestibulum odio vitae fermentum rutrum.</p>

							<p>Mauris lobortis nulla ut aliquet interdum. Donec commodo ac elit sed placerat. Mauris rhoncus est ac sodales gravida. In eros felis, elementum aliquam nisi vel, pellentesque faucibus nulla.</p>

							<div class="row mt-xlg mb-xl">
								<div class="col-md-6">
									<div class="feature-box feature-box-style-2">
										<div class="feature-box-icon">
											<i class="fa fa-star"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-xs">12 years in business</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing <span class="alternative-font">metus.</span> elit. Quisque rutrum pellentesque imperdiet.</p>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="feature-box feature-box-style-2">
										<div class="feature-box-icon">
											<i class="fa fa-heart"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-xs">Efficace</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="col-md-5 left" align="left">
							<h4>Our <strong>Location</strong></h4>

							<!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
							<div id="googlemaps" class="google-map small"></div>

						</div>
					</div>
				</div>
			</div>
 
			<footer class="short" id="footer" >
				
				<include:include_footer />
				
			</footer>
		</div>
		
		<include:include_commen_javascript />


	</body>
</html>