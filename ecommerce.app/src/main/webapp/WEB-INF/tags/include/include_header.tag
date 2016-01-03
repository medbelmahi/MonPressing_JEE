<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


					<header id="header" class="header-narrow" data-plugin-options='{"stickyEnabled": true, "stickyEnableOnBoxed": true, "stickyEnableOnMobile": true, "stickyStartAtElement": "#header", "stickySetTop": "0", "stickyChangeLogo": false}'>
						<div class="header-body">
							<div class="header-container container">
								<div class="header-row">
									<div class="header-column">
										<div class="header-logo">
											<a href="index.html">
												<img alt="MonPressing" width="120" height="40" src="<c:url value="/resources/img/logo.png" />">
											</a>
										</div>
									</div>
									<div class="header-column">
										<div class="header-row">
											<div class="header-nav">
												<!-- <button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main">
													<i class="fa fa-bars"></i>
												</button>
												<ul class="header-social-icons social-icons hidden-xs">
													<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fa fa-facebook"></i></a></li>
													<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fa fa-twitter"></i></a></li>
													<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
												</ul> -->
												<div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse">
													<nav>
														<ul class="nav nav-pills" id="mainNav">
											
										<li>
												<a href="<c:url value="/" />">ACCUEIL</a>														
											
										</li>
										
										<li class="dropdown dropdown-mega">
											<a  href="<c:url value="/Nos_Services" />" >
												NOS SERVICES
											</a>
											<ul class="dropdown-menu">
												<li><a href="<c:url value="/mp_ce_professionnels" />" >CE / PROFESSIONNELS</a></li>
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
											
											</ul> 
										</li>
										<li class="dropdown">
										<!--  	<a class="dropdown-toggle" href="#"> -->
												<li><a href="<c:url value="/contactez-nous.html" />">Contact</a></li>
										
										<!-- End user account -->	
										<c:if test="${not empty customer}">
											<sec:authorize
												access="hasRole('ROLE_B2B_CUSTOMER') or hasRole('ROLE_B2C_CUSTOMER')">
												<li class="dropdown">
													<a class="dropdown" href="#">
														<span class="name">${customer.completName}</span>
													</a>
													
													<ul class="dropdown-menu">
														<li>
															<a role="menuitem" tabindex="-1" href="<c:url value="/Mon_Compte" />"><i class="fa fa-user"></i> My Profile</a>
														</li>
		
														<li>
															<a role="menuitem" tabindex="-1" href="<c:url value="/login?logout" />"><i class="fa fa-power-off"></i> Logout</a>
														</li>
													</ul>	
												</li>
											</sec:authorize>
										</c:if>
										<!-- End user account -->
										
										
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