<%@ attribute name="entry" required="true" type="ma.pressing.ecommerce.facade.data.OrderEntryData" description="The entry" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<select data-msg-required="Faire un choix." class="form-control" name="subject" id="subject" required>
			<option value="">...</option>
				<option value="Linge1">Votre Linge 1</option>
				<option value="Linge2">Votre Linge 2</option>
				<option value="Linge3">Votre Linge 3</option>
				<option value="Linge4">Votre Linge 4</option>
				<option value="Linge4">Votre Linge 5</option>
		</select>
		<form:select path="listLingeForm.refProduct" class="form-control input-lg mb-md">
		<form:option value="NONE" label="--- choisir une lingne ---" />
		<form:options items="${civilityList}" />
	</form:select>
	</td>
	
	<td class="form-group">
		
		<select data-msg-required="Faire un choix." class="form-control" name="subject" id="subject" required>
			<option value="">...</option>
				<option value="Option 1">Pressing</option>
				<option value="Option 2">Repassage</option>
				<option value="Option 3">Teinture</option>
				<option value="Option 4">Retoucherie</option>
				<option value="Option 4">Tapisserie</option>
		</select>
			
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
<tr>