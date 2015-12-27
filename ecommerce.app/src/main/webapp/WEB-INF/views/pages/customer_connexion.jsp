<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
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

		<title>Inscription | Mon Pressing - Pressing Industriel</title>	

		<include:include_inscription_style />
		
		
	</head>
	<body>

		<div class="body">
			
			<include:include_header />

			<div role="main" class="main shop">

				<div class="container">

					<div class="row">
<!-- 						<div class="col-md-12"> -->
<!-- 							<hr class="tall"> -->
<!-- 						</div> -->
					</div>

					
					<div class="row">
						<div class="col-md-12 ">
							<div class="featured-boxes " >
								<div class="row">
									<div class="col-sm-6 sign-in-form" >
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">Espace Client</h4>
												<c:if test="${not empty error}">
													<div role="alert" class="alert alert-danger alert-dismissible">
														<button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true">×</span></button>
														<strong><i class="fa fa-warning"></i>Erreur!</strong> se reprodui pendant la connexion.
														<ul>
															<li>${error}</li>
														</ul>
													</div>
												</c:if>
												<c:if test="${not empty msg}">
													<div class="alert alert-success">
														<strong><i class="fa fa-thumbs-o-up"></i> </strong> ${msg}
													</div>
												</c:if>
												<form action="<c:url value='/customer/j_spring_security_check' />" id="frmSignIn" method="post">
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Adresse E-mail</label>
																<input type="email" value="" name="email" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<a class="pull-right" href="<c:url value="/myPassword" />">(Mot de passe oublié ?)</a>
																<label>Mot de passe</label>
																<input type="password" name="password" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-6">
															<!-- <span class="remember-box checkbox">
																<label for="rememberme">
																	<input type="checkbox" id="rememberme" name="rememberme">Garder ma session active.
																</label>
															</span> -->
														</div>
														<div class="col-md-6">
															<input type="submit" value="Se connecter" class="btn btn-primary pull-right mb-xl" data-loading-text="Loading...">
														</div>
														
													</div>
													<div class="row">
														<div class="col-md-6">
														<p class="sign-up-info">Non Inscrit ? <a href="<c:url value="/Inscription" />" class="p-none m-none ml-xs">Inscription</a></p>
														</div>
													</div>
													<input type="hidden" name="${_csrf.parameterName}"
															value="${_csrf.token}" />
												</form>
											</div>
										</div>
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

		<include:include_inscription_javascript />

	</body>
</html>
