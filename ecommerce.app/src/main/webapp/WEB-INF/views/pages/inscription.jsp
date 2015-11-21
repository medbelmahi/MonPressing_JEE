<%@ page language="java" pageEncoding="UTF-8"%>
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
												<form action="/" id="frmSignUp" method="post">
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Nom Complet </label>
																<input type="text" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Adresse E-mail </label>
																<input type="text" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-6">
																<label>Mot de passe</label>
																<input type="password" value="" class="form-control input-lg">
															</div>
															<div class="col-md-6">
																<label>Confirmer le Mot de passe</label>
																<input type="password" value="" class="form-control input-lg">
															</div>
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
															<div class="col-md-6">
																<label>TÃ©lÃ©phone </label>
																<input type="text" value="" class="form-control input-lg">
															</div>
													
															<div class="col-md-6">
																<label>Code Postal </label>
																<input type="text" value="" class="form-control input-lg">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-6">
																<label >CivilitÃ©</label>
																<select class="form-control input-lg mb-md">
																	<option>...</option>
																	<option>M</option>
																	<option>Mme</option>
																</select>
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
