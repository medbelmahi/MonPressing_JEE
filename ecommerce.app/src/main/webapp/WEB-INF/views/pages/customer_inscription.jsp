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
						<div class="col-md-12">
							<hr class="tall">
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="featured-boxes">
								<div class="row">
									
									<div class="col-sm-6">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">Inscription</h4>
												<spring:url value="/NouvelleInscription" var="userActionUrl" />
												<form:form action="${userActionUrl}" modelAttribute="userForm" id="frmSignUp" method="post">
													<div class="row">
													<spring:bind path="completName">
														<div class="form-group">
															<div class="col-md-12">
																<label>Nom Complet </label>
																<form:input type="text" path="completName" class="form-control input-lg" id="completName" placeholder="Nom Complet" />
																<form:errors path="completName" class="control-label" />
															</div>
														</div>
													</spring:bind>
													</div>
													<div class="row">
														<spring:bind path="email">
															<div class="form-group">
																<div class="col-md-12">
																	<label>Adresse E-mail</label>
																	<form:input path="email" class="form-control input-lg" id="email" placeholder="Email" />
																	<form:errors path="email" class="control-label" />
																</div>
															</div>
														</spring:bind>
													</div>
													<div class="row">
													
														<div class="form-group">
														<spring:bind path="password">
															<div class="col-md-6">
																<label>Mot de passe</label>
																<form:password path="password" value="" class="form-control input-lg" id="password" placeholder="Mot de passe" />
																<form:errors path="password" class="control-label" />
															</div>
														</spring:bind>
														<spring:bind path="confirmPassword">
															<div class="col-md-6">
																<label>Confirmer le Mot de passe</label>
																<form:password path="confirmPassword" class="form-control input-lg" id="password" placeholder="Mot de passe" />
																<form:errors path="confirmPassword" class="control-label" />
															</div>
														</spring:bind>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Adresse </label>
																<input type="text" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<spring:bind path="addressFrom.tel">
																<div class="col-md-6">
																	<label>Téléphone </label>
																	<form:input path="addressFrom.tel" type="text" class="form-control input-lg" id="tel" placeholder="Tel ex : 0610990909" />
																	<form:errors path="addressFrom.tel" class="control-label" />
																</div>
															</spring:bind>
															<spring:bind path="addressFrom.tel">
																<div class="col-md-6">
																	<label>Code Postal </label>
																	<form:input path="addressFrom.codePostal" type="text" class="form-control input-lg" id="codePostal" placeholder="ex : 25001" />
																	<form:errors path="addressFrom.codePostal" class="control-label" />
																</div>
															</spring:bind>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-6">
																<label>Ville</label>
																
																<form:select path="addressFrom.city" class="form-control input-lg mb-md">
																	<form:option value="NONE" label="--- Select ---" />
																	<form:options items="${cityList}" />
																</form:select>
																
															</div>
															<div class="col-md-6">
																<label>Type</label>
																<select class="form-control input-lg mb-md">
																	<option>...</option>
																	<option>Particuliers</option>
																	<option>Professionnels</option>
																</select>
															</div>
														</div>
													</div>
													
													<div class="row">
														<div class="col-md-12">
															<input type="submit" value="S'inscrire" class="btn btn-primary pull-right mb-xl" data-loading-text="Loading...">
														</div>
													</div>
												</form:form>
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
