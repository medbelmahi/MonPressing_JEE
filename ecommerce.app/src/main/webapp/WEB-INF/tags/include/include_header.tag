<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<header id="header" class="header-mobile-nav-only" data-plugin-options='{"stickyEnabled": true, "stickyEnableOnBoxed": true, "stickyEnableOnMobile": true, "stickyStartAt": 57, "stickySetTop": "-57px", "stickyChangeLogo": true}'>
	<div class="header-body">
		<div class="header-container container">
			<div class="header-row">
				<div class="header-column">
					<div class="header-logo">
						<a href="<c:url value="/" />">
							<img alt="Porto" width="280" height="80" data-sticky-width="140" data-sticky-height="42" data-sticky-top="45" src="<c:url value="/resources/img/logo.png" />" >
						</a>
					</div>
				</div>
				<div class="header-column">
					<div class="header-row">
						<div class="header-nav header-nav-stripe">
							<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main">
								<i class="fa fa-bars"></i>
							</button>

							<div class="header-nav-main header-nav-main-square header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse">
								<nav>
									<ul class="nav nav-pills" id="mainNav">
										  <li class="dropdown off">
											<!-- <a class="dropdown-toggle" href="index.html">
											-->
												<a href="<c:url value="/" />">ACCUEIL</a>														
											
										</li>
										
										<li class="dropdown dropdown-mega">
											<a  href="<c:url value="/Nos_Services" />" >
												NOS SERVICES
											</a>
											<ul class="dropdown-menu">
												<li><a href="valider-votre-linge.html">CE / PROFESSIONNELS</a></li>
											</ul> 
									
										</li>
										<li class="dropdown">
											<a class="#" href="<c:url value="/Nos_Tarifs" />">
												 NOS TARIFS
											</a>
										</li>
										
										<li class="dropdown">
											<a class="dropdown" href="deposer_linge.html">
												Comment ça marche ?
											</a>
											<ul class="dropdown-menu">
												<li><a href="valider-votre-linge.html">Fonctionnement</a></li>
												<li><a href="connexion.html">Points relais</a></li>
												<li><a href="about-me.html">Zones de couverture</a></li>
											</ul> 
										</li>
										<li class="dropdown">
											<a class="dropdown" href="<c:url value="/deposer_linge.html" />">
												Déposez Votre Linge
											</a>
											<ul class="dropdown-menu">
												<li><a href="valider-votre-linge.html">Verifiez et Confirmez</a></li>
												<li><a href="<c:url value="/login" />">Espace Client</a></li>
												<!--<li><a href="about-me.html">About Me</a></li>-->
											</ul> 
										</li>
										<li class="dropdown">
										<!--  	<a class="dropdown-toggle" href="#"> -->
												<li><a href="<c:url value="/contactez-nous.html" />">Contact</a></li>
											
											<!-- 
										    <ul class="dropdown-menu">
												<li><a href="contact.html">Contact Us - Basic</a></li>
												<li><a href="contact-advanced.php">Contact Us - Advanced</a></li>
											
											</ul>
											-->
											<li class="dropdown">
														<a class="dropdown" href="#">
															<span class="name">User Name</span>
															
															</a>
														
															<ul class="dropdown-menu">
																
																<li>
																	<a role="menuitem" tabindex="-1" href="pages-user-profile.html"><i class="fa fa-user"></i> My Profile</a>
																</li>

																<li>
																	<a role="menuitem" tabindex="-1" href="pages-signin.html"><i class="fa fa-power-off"></i> Logout</a>
																</li>
															</ul>
														
														
													</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>