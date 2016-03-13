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

		<title>Tarifs | Mon Pressing - Pressing Industriel</title>	

		<include:include_nos_services_style />

		
	</head>
	<body>

		<div class="body">
			
			<include:include_header />


			<div role="main" class="main">

				<section class="page-header">
				<div class="row center">
					<div class="col-md-12 appear-animation" data-appear-animation="fadeInDown" data-appear-animation-delay="200">
						<div class="owl-carousel owl-theme mb-none" data-plugin-options='{"items": 1, "animateOut": "fadeOut", "autoplay": true, "autoplayTimeout": 3000}'>
							<div>
								<span class="img-thumbnail">
									<img alt="" class="img-responsive img-rounded" src="<c:url value="/resources/img/slides/slide-bg-3.jpg" />">
								</span>
							</div>
						</div>
					</div>
				</div>
				</section>

				<div class="container">

					<div class="row">
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<h4 class="mb-lg">Navigation</h4>

							<div class="row">
								<div class="col-md-4">
									<div class="tabs tabs-vertical tabs-left tabs-navigation">
										<ul class="nav nav-tabs col-sm-3">
											<li class="active">
												<a href="#tabsNavigation1" data-toggle="tab"><i class="fa fa-group"></i> Customer Support</a>
											</li>
											<li>
												<a href="#tabsNavigation2" data-toggle="tab"><i class="fa fa-file"></i> HTML5 / CSS3 / JS</a>
											</li>
											<li>
												<a href="#tabsNavigation3" data-toggle="tab"><i class="fa fa-google-plus"></i> 500+ Google Fonts</a>
											</li>
											<li>
												<a href="#tabsNavigation4" data-toggle="tab"><i class="fa fa-adjust"></i> Colors</a>
											</li>
											<li>
												<a href="#tabsNavigation5" data-toggle="tab"><i class="fa fa-film"></i> Sliders</a>
											</li>
											<li>
												<a href="#tabsNavigation6" data-toggle="tab"><i class="fa fa-user"></i> Icons</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="col-md-8">
									<div class="tab-pane tab-pane-navigation active" id="tabsNavigation1">
										<h4>Customer Support</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia.</p>
										<img class="pull-right" width="200" src="<c:url value="/resources/img/device.png" />" alt="">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Nullam convallis, arcu vel pellentesque sodales, nisi est varius diam, ac ultrices sem ante quis sem. Proin ultricies volutpat sapien, nec scelerisque ligula mollis lobortis.</p>
									</div>
									<div class="tab-pane tab-pane-navigation" id="tabsNavigation2">
										<h4>HTML5 / CSS3 / JS</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Nullam convallis, arcu vel pellentesque sodales, nisi est varius diam, ac ultrices sem ante quis sem. Proin ultricies volutpat sapien, nec scelerisque ligula mollis lobortis.</p>
									</div>
									<div class="tab-pane tab-pane-navigation" id="tabsNavigation3">
										<h4>500+ Google Fonts</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia.</p>
										<img class="pull-left" width="200" src="<c:url value="/resources/img/device.png" />" alt="">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Nullam convallis, arcu vel pellentesque sodales, nisi est varius diam, ac ultrices sem ante quis sem. Proin ultricies volutpat sapien, nec scelerisque ligula mollis lobortis.</p>
									</div>
									<div class="tab-pane tab-pane-navigation" id="tabsNavigation4">
										<h4>Colors</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Nullam convallis, arcu vel pellentesque sodales, nisi est varius diam, ac ultrices sem ante quis sem. Proin ultricies volutpat sapien, nec scelerisque ligula mollis lobortis.</p>
									</div>
									<div class="tab-pane tab-pane-navigation" id="tabsNavigation5">
										<h4>Sliders</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Nullam convallis, arcu vel pellentesque sodales, nisi est varius diam, ac ultrices sem ante quis sem. Proin ultricies volutpat sapien, nec scelerisque ligula mollis lobortis.</p>
									</div>
									<div class="tab-pane tab-pane-navigation" id="tabsNavigation6">
										<h4>Icons</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href="#">vehicula</a> lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Nullam convallis, arcu vel pellentesque sodales, nisi est varius diam, ac ultrices sem ante quis sem. Proin ultricies volutpat sapien, nec scelerisque ligula mollis lobortis.</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>

			<footer class="short" id="footer" >
				
				<include:include_footer />
				
			</footer>
		</div>

		<include:include_nos_service_javascript />

	</body>
</html>
