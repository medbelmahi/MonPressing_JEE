<%@ attribute name="lingeForm" required="true" type="ma.pressing.ecommerce.web.form.data.LingeForm" description="The entry" %>
<%@ attribute name="indexValue" required="true" type="Integer" description="index" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<tr class="cart_table_item" >
	<td class="product-remove">
		<a title="Remove this item" class="remove" href="#">
			<i class="fa fa-times"></i>
		</a>
	</td>
	<td class="product-thumbnail">
		<a href="shop-product-sidebar.html">
			<img width="100" height="100" alt="" class="img-responsive" src="<c:url value="/" />">
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
		<form:select path="listLingeForm[indexValue].refProduct" class="form-control input-lg mb-md" data-msg-required="Faire un choix." required="true" >
<%-- 			<form:option value="NONE" label="--- choisir une lingne ---" /> --%>
			<c:forEach items="${productsList}" var="product">
				<c:choose>
					<c:when test="${product.productRef eq lingeForm.refProduct}">
						<form:option cssClass="selected" value="${product.productRef}">${product.label}</form:option>
					</c:when>
				</c:choose>
				<c:otherwise>
					<form:option value="${product.productRef}">${product.label}</form:option>
				</c:otherwise>
			</c:forEach>
		</form:select>
	</td>
	
	<td class="form-group">
		
		<form:select path="listLingeForm[indexValue].codeService" data-msg-required="Faire un choix." class="form-control" required="true" >
			<option value="">...</option>
				
				<!-- <option value="Option 1">Pressing</option>
				<option value="Option 2">Repassage</option>
				<option value="Option 3">Teinture</option>
				<option value="Option 4">Retoucherie</option>
				<option value="Option 4">Tapisserie</option>
				 -->
		</form:select>
			
	</td>
	
	<td class="product-price">
		<span class="amount">${lingeForm.priceUnitary}</span>
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
		<span class="amount">${lingeForm.priceTotal}</span>
	</td>
</tr>
<tr>