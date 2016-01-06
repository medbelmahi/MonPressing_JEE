<%--
  Created by IntelliJ IDEA.
  User: Mohamed BELMAHI
  Date: 06/01/2016
  Time: 01:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header id="topbar" class="ph10">
  <div class="topbar-left">
    <ul class="nav nav-list nav-list-topbar pull-left">
      <li class="active">
        <a href="<c:url value="/admin/dashboard/ecommerce/home" />" >Tableau de bord</a>
      </li>
      <li>
        <a href="<c:url value="/admin/dashboard/ecommerce/product/add" />">Objets</a>
      </li>
      <li>
        <a href="ecommerce_products.html">Services</a>
      </li>
      <li>
        <a href="ecommerce_orders.html">Commandes</a>
      </li>
      <li>
        <a href="ecommerce_customers.html">Clients</a>
      </li>
      <%--<li>
        <a href="ecommerce_settings.html">Settings</a>
      </li>--%>
    </ul>
  </div>
  <div class="topbar-right">
    <a href="ecommerce_orders.html" class="btn btn-default btn-sm light fw600 ml10"><span class="fa fa-plus pr5"></span> New Order</a>
    <a href="ecommerce_products.html" class="btn btn-default btn-sm light fw600 ml10"><span class="fa fa-plus pr5"></span> Add Product</a>
    <a href="ecommerce_customers.html" class="btn btn-default btn-sm light fw600 ml10"><span class="fa fa-user pr5"></span> Add Customer</a>
  </div>
</header>