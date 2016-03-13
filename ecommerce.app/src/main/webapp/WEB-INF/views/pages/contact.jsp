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

		<title>Contact | Mon Pressing - Pressing Industriel</title>	

		<include:include_contact_style />

		
	</head>
	<body>

		<div class="body">

			<include:include_header />

			<div role="main" class="main">
	
				<div class="row center">
					<div class="col-md-12 appear-animation" data-appear-animation="fadeInDown" data-appear-animation-delay="200">
						<div class="owl-carousel owl-theme mb-none" data-plugin-options='{"items": 1, "animateOut": "fadeOut", "autoplay": true, "autoplayTimeout": 3000}'>
							<div>
								<span class="img-thumbnail">
									<img alt="" class="img-responsive img-rounded" src="<c:url value="/resources/img/slides/slide-bg-1.jpg" />">
								</span>
							</div>
						</div>
					</div>
				</div>
						<div class="container">
						<div class="col-md-12 appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="700">
							
							<div class="divider divider-style-3 divider-primary taller">
								<i class="fa fa-comments-o"></i>
							</div></div>
						</div>
				<div class="container">
		
												
					<div class="row">
							
						<div class="col-md-6">
							<div class="col-md-12 appear-animation" data-appear-animation="fadeInLeft" data-appear-animation-delay="600">
							<div class="alert alert-success hidden" id="contactSuccess">
								<strong>Success!</strong> Votre message a bien été envoyé.
							</div>

							<div class="alert alert-danger hidden" id="contactError">
								<strong>Error!</strong> There was an error sending your message.
							</div>

							<h2 class="mb-sm mt-sm"><strong>Contactez</strong> - Nous</h2>
							<form id="contactForm" action="php/contact-form.php" method="POST">
								<div class="row">
									<div class="form-group">
										<div class="col-md-6">
											<label>Votre Nom Complet *</label>
											<input type="text" value="" data-msg-required="Entrez votre nom." maxlength="100" class="form-control" name="name" id="name" required>
										</div>
										<div class="col-md-6">
											<label>Votre adresse e-mail *</label>
											<input type="email" value="" data-msg-required="Entrez une adresse email." data-msg-email="Entrez une adresse email valide." maxlength="100" class="form-control" name="email" id="email" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<label>Sujet</label>
											<input type="text" value="" data-msg-required="Entrez un sujet." maxlength="100" class="form-control" name="subject" id="subject" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<label>Message *</label>
											<textarea maxlength="5000" data-msg-required="Ecrire un message." rows="8" class="form-control" name="message" id="message" required></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<input type="submit" value="Envoyez" class="btn btn-primary btn-lg mb-xlg" data-loading-text="Loading...">
									</div>
								</div>
							</form>
							</div>
						</div>
						<div class="col-md-6">
							<div class="col-md-12 appear-animation" data-appear-animation="fadeInRight" data-appear-animation-delay="600">
							<h4 class="heading-primary mt-lg"><strong>Disponibilité</strong></h4>
							<p><strong>MON PRESSING</strong> est à votre écoute:</p>
							<p><i class="fa fa-clock-o"></i> <strong>lundi</strong> <i class="fa fa-long-arrow-right"></i> <strong>samedi</strong> de <strong>09h</strong> à <strong>20h</strong></p>
							<p><i class="fa fa-clock-o"></i> <strong>Dimanche</strong> de <strong>09h</strong> à <strong>12h</strong></p>
							<hr>

							<h4 class="heading-primary">Notre <strong>Office</strong></h4>
							<ul class="list list-icons list-icons-style-3 mt-xlg">
								<li><i class="fa fa-map-marker"></i> <strong>Addresse:</strong> 18, GH31, Imm 3, Riad Oulfa, Casablanca - Maroc</li>
								<li><i class="fa fa-phone"></i> <strong>Télé:</strong> +212 540 11 82 13</li>
								<li><i class="fa fa-internet-explorer"></i> <strong>Website:</strong> www.<strong>monpressing</strong>.ma</li>
								<li><i class="fa fa-envelope"></i> <strong>Email:</strong> <a href="mailto:mail@example.com">contact@monpressing.ma</a></li>
							</ul>
						<!--
							<hr>

							<h4 class="heading-primary">Business <strong>Hours</strong></h4>
							<ul class="list list-icons list-dark mt-xlg">
								<li><i class="fa fa-clock-o"></i> Monday - Friday 9am to 5pm</li>
								<li><i class="fa fa-clock-o"></i> Saturday - 9am to 2pm</li>
								<li><i class="fa fa-clock-o"></i> Sunday - Closed</li>
							</ul>
						-->
							</div>
						</div>

					</div>

				</div>
				<!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
				<div id="googlemaps" class="google-map"></div>
							


			</div>
<!--
			<section class="call-to-action call-to-action-default with-button-arrow call-to-action-in-footer">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="call-to-action-content">
								<h3>Porto is <strong>everything</strong> you need to create an <strong>awesome</strong> website!</h3>
								<p>The <strong>#1 Selling</strong> HTML Site Template on ThemeForest</p>
							</div>
							<div class="call-to-action-btn">
								<a href="http://themeforest.net/item/porto-responsive-html5-template/4106987" target="_blank" class="btn btn-lg btn-primary">Buy Now!</a><span class="arrow hlb hidden-xs hidden-sm hidden-md" data-appear-animation="rotateInUpLeft" style="top: -12px;"></span>
							</div>
						</div>
					</div>
				</div>
			</section>
-->
			<footer class="short" id="footer" >
				
				<include:include_footer />
				
			</footer>
		</div>

		<include:include_contact_javascript />

	</body>
</html>
