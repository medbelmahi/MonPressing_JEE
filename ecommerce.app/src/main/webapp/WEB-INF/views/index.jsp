<%@ page trimDirectiveWhitespaces="true" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags/include" %>
<!DOCTYPE html>
<html>
<head>

		<!-- Basic -->
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>Accueil | Mon Pressing - Pressing Industriel</title>	

		<include:include_home_page_style />
		
	</head>
	<body>
		<div class="body">
			
			<include:include_header />

			<div role="main" class="main">
				<div class="slider-container rev_slider_wrapper" style="height: 900px;">
					<div id="revolutionSlider" class="slider rev_slider" data-plugin-revolution-slider data-plugin-options='{"gridwidth": 800, "gridheight": 700}'>
						<ul>
							<li data-transition="fade">
								<img src="<c:url value="/resources/img/slides/landing-page-slide-1.jpg" />"   
									alt=""
									data-bgposition="center center" 
									data-bgfit="cover" 
									data-bgrepeat="no-repeat" 
									class="rev-slidebg">

								<div class="tp-caption"
									data-x="center" data-hoffset="-150"
									data-y="center" data-voffset="-45"
									data-start="1000"
									style="z-index: 5"
									data-transform_in="x:[-300%];opacity:0;s:500;"><img src="<c:url value="/resources/img/slides/slide-title-border.png" />" alt=""></div>

								<div class="tp-caption top-label"
									data-x="center" data-hoffset="0"
									data-y="center" data-voffset="-45"
									data-start="500"
									style="z-index: 5"
									data-transform_in="y:[-300%];opacity:0;s:500;">Nouvelle Service</div>

								<div class="tp-caption"
									data-x="center" data-hoffset="150"
									data-y="center" data-voffset="-45"
									data-start="1000"
									style="z-index: 5"
									data-transform_in="x:[300%];opacity:0;s:500;"><img src="<c:url value="/resources/img/slides/slide-title-border.png" />" alt=""></div>

							
								<div class="tp-caption main-label"
									data-x="center" data-hoffset="0"
									data-y="center" data-voffset="0"
									data-start="1500"
									data-whitespace="nowrap"						 
									data-transform_in="y:[100%];s:500;"
									data-transform_out="opacity:0;s:500;"
									style="z-index: 5"
									data-mask_in="x:0px;y:0px;">MON PRESSING</div>
									
								<div class="tp-caption bottom-label"
									data-x="center" data-hoffset="0"
									data-y="center" data-voffset="55"
									data-start="2000"
									style="z-index: 5"
									data-transform_in="y:[100%];opacity:0;s:500;">Check out our options and features.</div>

							</li>

							<li data-transition="fade">
								<img src="<c:url value="/resources/img/slides/Home-slide-2.jpg" />"  
									alt=""
									data-bgposition="center center" 
									
									data-bgrepeat="no-repeat" 
									class="rev-slidebg">

							</li>
						</ul>
					</div>
				</div>
				<div class="home-intro center" id="home-intro">
					<div class="container">						
							<div class="#">
								<p>
									Nous vous garantissons un travail effectué avec le plus grand soin par nos équipes de professionnels.
									</p>
								<p>
									 <em>Mon Pressing</em> <span>la meilleure solution pour vous simplifier la vie quand il est question de linge propre!</span>
								</p>							
							</div>
					</div>
				</div>
				<section class="section section-default mt-none mb-xl">
					<div class="home-concept">
						<div class="container">

							<div class="row center">
								<span class="sun"></span>
								<span class="cloud"></span>
								<div class="col-md-2 col-md-offset-1">
									<div class="process-image" data-appear-animation="bounceIn">
										<img src="<c:url value="/resources/img/landing-concept-item-1.png" />" alt="" />
										<strong class="text-color-dark mb-xs">Déposez Votre Linge</strong>
										<p class="text-color-primary mb-xl"></p>
									</div>
								</div>
								<div class="col-md-2">
									<div class="process-image" data-appear-animation="bounceIn" data-appear-animation-delay="200">
										<img src="<c:url value="/resources/img/landing-concept-item-2.png" />" alt="" />
										<strong class="text-color-dark mb-xs">Un appel Pour Confirmer Votre Dépot</strong>
										<p class="text-color-primary mb-xl"></p>
									</div>
								</div>
								<div class="col-md-2">
									<div class="process-image" data-appear-animation="bounceIn" data-appear-animation-delay="400">
										<img src="<c:url value="/resources/img/landing-concept-item-3.png" />" alt="" />
										<strong class="text-color-dark mb-xs">Ramassage</strong>
										<p class="text-color-primary mb-xl"></p>
									</div>
								</div>
								<div class="col-md-4 col-md-offset-1">
									<div class="project-image">
										<div id="fcSlideshow" class="fc-slideshow">
											<ul class="fc-slides">
												<li><img class="img-responsive" src="<c:url value="/resources/img/landing-concept-item-4.png" />" alt="" /></li>
												<li><img class="img-responsive" src="<c:url value="/resources/img/landing-concept-item-5.png" />" alt="" /></li>
												
											</ul>
										</div>
										<strong class="text-color-dark pt-xl">Livraison a Domicile</strong>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>
				<section class="call-to-action call-to-action-primary mb-none">
				
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="call-to-action-content align-left pb-md mb-xl ml-none">
									<h2 class="text-color-light mb-none mt-xl">Des Tarifs adapter a votre <strong>Besoin</strong></h2>
									<p class="lead mb-xl">Faites votre choix parmis les services proposer...</p>
								</div>
								<div class="call-to-action-btn">
									<a href="deposer-linge.html"  class="btn btn-lg btn-primary btn-primary-scale-2 mr-md">Déposez Votre Linge</a>
									<span class="mr-md text-color-light hidden-xs"> <strong>ICI</strong><span class="arrow arrow-light hlb" style="top: -88px; right: -80px;"></span></span>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--<div class="divider divider-style-4 taller appear-animation" data-appear-animation="bounceIn" data-appear-animation-delay="300">
								<i class="fa fa-chevron-down"></i>
							</div>
			<div class="container">
			
					<div class="row">
						<div class="col-md-12 center appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">					
							<h1>Services</h1>
						</div>
					</div>
				</div>
-->
				
				<ul class="image-gallery sort-destination full-width">
					<li class="isotope-item appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="200">
						<div class="image-gallery-item">
							<a href="nos-service.html">
								<span class="thumb-info thumb-info-centered-info thumb-info-no-borders">
									<span class="thumb-info-wrapper">
										<img src="<c:url value="/resources/img/projects/icon-v4.png" />" class="img-responsive" alt="">
										<span class="thumb-info-title">
											<span class="thumb-info-inner">Pressing</span>
											<span class="thumb-info-type">Lire plus...</span>
										</span>
										<span class="thumb-info-action">
											<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
										</span>
									</span>
								</span>
							</a>
						</div>
					</li>
					<li class="isotope-item appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="400">
						<div class="image-gallery-item">
							<a href="nos-service.html">
								<span class="thumb-info thumb-info-centered-info thumb-info-no-borders">
									<span class="thumb-info-wrapper">
										<img src="<c:url value="/resources/img/projects/icon-v5.png" />" class="img-responsive" alt="">
										<span class="thumb-info-title">
											<span class="thumb-info-inner">Repassage</span>
											<span class="thumb-info-type">Lire plus...</span>
										</span>
										<span class="thumb-info-action">
											<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
										</span>
									</span>
								</span>
							</a>
						</div>
					</li>
					<li class="isotope-item appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="600">
						<div class="image-gallery-item">
							<a href="nos-service.html">
								<span class="thumb-info thumb-info-centered-info thumb-info-no-borders">
									<span class="thumb-info-wrapper">
										<img src="<c:url value="/resources/img/projects/icon-v2.png" />" class="img-responsive" alt="">
										<span class="thumb-info-title">
											<span class="thumb-info-inner">Teinture</span>
											<span class="thumb-info-type">Lire plus...</span>
										</span>
										<span class="thumb-info-action">
											<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
										</span>
									</span>
								</span>
							</a>
						</div>
					</li>
					<li class="isotope-item">
						<div class="image-gallery-item appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="800">
							<a href="nos-service.html">
								<span class="thumb-info thumb-info-centered-info thumb-info-no-borders">
									<span class="thumb-info-wrapper">
										<img src="<c:url value="/resources/img/projects/icon-v3.png" />" class="img-responsive" alt="">
										<span class="thumb-info-title">
											<span class="thumb-info-inner">Retoucherie</span>
											<span class="thumb-info-type">Lire plus...</span>
										</span>
										<span class="thumb-info-action">
											<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
										</span>
									</span>
								</span>
							</a>
						</div>
					</li>
					<li class="isotope-item appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="1000">
						<div class="image-gallery-item">
							<a href="nos-service.html">
								<span class="thumb-info thumb-info-centered-info thumb-info-no-borders">
									<span class="thumb-info-wrapper">
										<img src="<c:url value="/resources/img/projects/icon-v1.png" />" class="img-responsive" alt="">
										<span class="thumb-info-title">
											<span class="thumb-info-inner">Tapisserie</span>
											<span class="thumb-info-type">Lire plus...</span>
										</span>
										<span class="thumb-info-action">
											<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
										</span>
									</span>
								</span>
							</a>
						</div>
					</li>
				</ul>			
			</div>
				<section class="section section-default section-with-mockup mb-none">
					<div class="container">
						<div class="row">
							<div class="col-md-4">
								<div class="feature-box feature-box-style-2 reverse mb-xl appear-animation" data-appear-animation="fadeInLeft" data-appear-animation-delay="300">
									<div class="feature-box-icon">
										<i class="fa fa-check-square-o"></i>
									</div>
									<div class="feature-box-info">
										<h4 class="mb-sm">Nettoyage à sec 100%</h4>
									
									</div>
								</div>
								<div class="feature-box feature-box-style-2 reverse mt-xl appear-animation" data-appear-animation="fadeInLeft" data-appear-animation-delay="600">
									<div class="feature-box-icon">
										<i class="fa fa-check-square-o"></i>
									</div>
									<div class="feature-box-info">
										<h4 class="mb-sm">Repassage de qualité</h4>
										
									</div>
								</div>
								<div class="feature-box feature-box-style-2 reverse mt-xl appear-animation" data-appear-animation="fadeInLeft" data-appear-animation-delay="600">
									<div class="feature-box-icon">
										<i class="fa fa-check-square-o"></i>
									</div>
									<div class="feature-box-info">
										<h4 class="mb-sm">Détachage</h4>
										
									</div>
								</div>
								<div class="feature-box feature-box-style-2 reverse mt-xl appear-animation" data-appear-animation="fadeInLeft" data-appear-animation-delay="600">
									<div class="feature-box-icon">
										<i class="fa fa-check-square-o"></i>
									</div>
									<div class="feature-box-info">
										<h4 class="mb-sm">Tenture</h4>
										
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<img src="<c:url value="/resources/img/mockup-porto.png" />" class="img-responsive mockup-landing-page mb-xl appear-animation" alt="Porto" data-appear-animation="fadeInDown" data-appear-animation-delay="300">
							</div>
							<div class="col-md-4">
								<div class="feature-box feature-box-style-2 mb-xl appear-animation" data-appear-animation="fadeInRight" data-appear-animation-delay="300">
									<div class="feature-box-icon">
										<i class="fa fa-check-square-o"></i>
									</div>
									<div class="feature-box-info">
										<h4 class="mb-sm">Retoucherie</h4>
										
									</div>
								</div>
								<div class="feature-box feature-box-style-2 mt-xl appear-animation" data-appear-animation="fadeInRight" data-appear-animation-delay="600">
									<div class="feature-box-icon">
										<i class="fa fa-check-square-o"></i>
									</div>
									<div class="feature-box-info">
										<h4 class="mb-sm">Traitement Daim et Cuir</h4>										
									</div>
								</div>
								<div class="feature-box feature-box-style-2 mt-xl appear-animation" data-appear-animation="fadeInRight" data-appear-animation-delay="600">
									<div class="feature-box-icon">
										<i class="fa fa-check-square-o"></i>
									</div>
									<div class="feature-box-info">
										<h4 class="mb-sm">Uniformes pros</h4>										
									</div>
								</div>
								<div class="feature-box feature-box-style-2 mt-xl appear-animation" data-appear-animation="fadeInRight" data-appear-animation-delay="600">
									<div class="feature-box-icon">
										<i class="fa fa-check-square-o"></i>
									</div>
									<div class="feature-box-info">
										<h4 class="mb-sm">Lavage de tapis</h4>										
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<li class="isotope-item appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="400">
				<div class="container">
					
					<div class="row">
						<div class="col-md-12 center mb-xl">
							<h2 class="mb-sm mt-md"><strong>Votre linge propre et repassé, livré à la maison !</strong> </h2>
							<p class="lead mb-xl">MON PRESSING est à votre écoute du <strong>lundi</strong> au <strong>samedi</strong> de 9h à 20h<br>et <strong>dimanche</strong> de 09h à 12h</p>
							<h4 class="heading-primary alternative-font mt-xl pt-xl">Mon Pressing <strong class="custom-underline">Vous simplifiez la Vie</strong></h4>
						</div>
					</div>
				</div>
		</div>
				
				

				<footer class="short" id="footer" >
					
					<include:include_footer />
					
			</footer>
		</div>
		
		<include:include_home_page_javascript />
		
	</body>
</html>