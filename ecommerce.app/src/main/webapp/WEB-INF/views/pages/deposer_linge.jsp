<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags/include" %>
<%@ taglib prefix="entry_form" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>Linge | Mon Pressing - Pressing Industriel</title>	

		

		<include:include_commen_style />

	</head>
	<body>

		<div class="body">
				<include:include_header />


			<div role="main" class="main shop">
			<section class="page-header">
			<div class="row center">
					<div class="col-md-12 appear-animation" data-appear-animation="fadeInDown" data-appear-animation-delay="200">
						<div class="owl-carousel owl-theme mb-none" data-plugin-options='{"items": 1, "animateOut": "fadeOut", "autoplay": true, "autoplayTimeout": 3000}' >
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
							<div class="featured-boxes">
								<div class="row">
									<div class="col-md-12">
										<div class="featured-box featured-box-primary align-left mt-sm">
											<div class="box-content">
												<c:url value="/goToValide" var="orderFormUrl" />
												<form:form modelAttribute="orderForm" method="post" action="${orderFormUrl}">
													<table class="shop_table cart">
														<thead>
															<tr>
																<th class="product-remove">
																	&nbsp;
																</th>
																<th class="product-thumbnail">
																	&nbsp;
																</th>
																<th class="product-name">
																	Votre linge
																</th>
																<th class="product-name">
																	Service
																</th>
																<th class="product-price">
																	Prix
																</th>
																<th class="product-quantity">
																	Quantité
																</th>
																<th class="product-subtotal">
																	Total
																</th>
															</tr>
														</thead>
														<tbody>
														<c:choose>
															<c:when test="${ empty orderForm.listLingeForm}">
															<tr class="cart_table_item" >
																<td class="product-remove">
																	<a title="Remove this item" class="remove" href="#">
																		<i class="fa fa-times"></i>
																	</a>
																</td>
																<td class="product-thumbnail">
																	<a href="shop-product-sidebar.html">
																		<img width="100" height="100" alt="" class="img-responsive" src="<c:url value="/resources/img/products/product-1.jpg" />">
																	</a>
																</td>
																<td class="product-name">
																	<!--<select data-msg-required="Faire un choix." class="form-control" name="subject" id="subject" required>
																		<option value="">...</option>
																			<option value="Linge1">Votre Linge 1</option>
																			<option value="Linge2">Votre Linge 2</option>
																			<option value="Linge3">Votre Linge 3</option>
																			<option value="Linge4">Votre Linge 4</option>
																			<option value="Linge4">Votre Linge 5</option>
																	</select>-->
																	<form:select path="listLingeForm[0].refProduct" class="form-control input-lg mb-md">
																	<form:option value="NONE" label="--- choisir une lingne ---" />
<%-- 																	<form:options items="${productsList}" /> --%>
																</form:select>
																</td>
																
																<td class="form-group">
																	
																	<!-- <select data-msg-required="Faire un choix." class="form-control" name="subject" id="subject" required>
																		<option value="">...</option>
																			<option value="Option 1">Pressing</option>
																			<option value="Option 2">Repassage</option>
																			<option value="Option 3">Teinture</option>
																			<option value="Option 4">Retoucherie</option>
																			<option value="Option 4">Tapisserie</option>
																	</select> -->
																	<form:select path="listLingeForm[0].codeService" class="form-control input-lg mb-md">
																	<form:option value="NONE" label="--- choisir une lingne ---" />
<%-- 																	<form:options items="${productsList}" /> --%>
																</form:select>
																		
																</td>
																
																<td class="product-price">
																	<span class="amount">$XXX</span>
																</td>
																<td class="product-quantity">
																	<form enctype="multipart/form-data" method="post" class="cart">
																		<div class="quantity">
																			<input type="button" class="minus" value="-">
																			<input type="text" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
																			<input type="button" class="plus" value="+">
																		</div>
																	</form>
																</td>
																<td class="product-subtotal">
																	<span class="amount">$XXX</span>
																</td>
															</tr>
															</c:when>
															<c:otherwise>
																<c:forEach items="${orderForm.listLingeForm}" var="entryForm">
																	<entry_form:entry_cart lingeForm="${entryForm}" />
																</c:forEach>
															</c:otherwise>
														</c:choose>
															<tr>
															
															<td class="actions" colspan="6">
																	<div class="actions-continue">
																		
																		<button id="addToTable" class="btn btn-primary">Ajouter une linge <i class="fa fa-plus"></i></button>	
																	</div>
																</td>
																
																
															</tr>
															
														</tbody>
													</table>
												</form:form>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="featured-boxes">
								<div class="row">
									<div class="col-sm-6">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">Ramassage / Livraison</h4>
												<form action="/" id="frmCalculateShipping" method="post">
													<div class="row">
														<div class="form-group">
															<div class="col-md-12">
																<label>Ville</label>
																<select class="form-control">
																	<option value="">selectionner votre ville</option>
																</select>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="form-group">
															<div class="col-md-6">
																<label>Mode de Ramassage.</label>
																	<select data-msg-required="Faire un choix." class="form-control" name="subject" id="subject" required>
																		<option value="">...</option>
																			<option value="Option 1">Op1</option>
																			<option value="Option 2">Op1</option>
																	</select>
																
															</div>
															<div class="col-md-6">
																<label>Mode de livraison.</label>
																	<select data-msg-required="Faire un choix." class="form-control" id="shipping_method" name="shipping_method" required>
																		<option value="">...</option>
																			<option value="Option 1">Normal 72H</option>
																			<option value="Option 2">Express 24H</option>
																	</select>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<input type="submit" value="Update Totals" class="btn btn-default pull-right mb-xl" data-loading-text="Loading...">
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="featured-box featured-box-primary align-left mt-xlg">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-md">Totals</h4>
												<table class="cart-totals">
													<tbody>
														<tr class="cart-subtotal">
															<th>
																<strong>Votre Linge</strong>
															</th>
															<td>
																<strong><span class="amount">XXX</span></strong>
															</td>
														</tr>
														<tr class="shipping">
															<th>
																Ramassage
															</th>
															<td>
																A Domicile<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
															</td>
														</tr>
														<tr class="shipping">
															<th>
																Livraison
															</th>
															<td>
																Normal 72H<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
															</td>
														</tr>
														<tr class="total">
															<th>
																<strong>Prix </strong>
															</th>
															<td>
																<strong><span class="amount">$431</span></strong>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="actions-continue">
										<button  type="submit" class="btn pull-right btn-primary btn-lg">Proceed to Checkout <i class="fa fa-angle-right ml-xs"></i></button>
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
		
		<include:include_commen_javascript />

	</body>
</html>
