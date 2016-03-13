<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags/include/admin" %>

<!DOCTYPE html>
<html>

<head>

    <title>Administration - Objets - Mon Pressing</title>

    <include:include_admin_head />

</head>

<body class="ecommerce-page">

    <!-- Start: Theme Preview Pane -->
        <include:include_admin_skin_toolbox />
    <!-- End: Theme Preview Pane -->

    <!-- Start: Main -->
    <div id="main">

        <!-- Start: Header -->
            <include:include_admin_header />
        <!-- End: Header -->

        <!-- Start: Sidebar -->
            <include:include_admin_menu />

        <!-- Start: Content-Wrapper -->
        <section id="content_wrapper">

            <!-- Start: Topbar-Dropdown -->
            <div id="topbar-dropmenu">
                <div class="topbar-menu row">
                    <div class="col-xs-4 col-sm-2">
                        <a href="#" class="metro-tile bg-success">
                            <span class="metro-icon glyphicons glyphicons-inbox"></span>
                            <p class="metro-title">Messages</p>
                        </a>
                    </div>
                    <div class="col-xs-4 col-sm-2">
                        <a href="#" class="metro-tile bg-info">
                            <span class="metro-icon glyphicons glyphicons-parents"></span>
                            <p class="metro-title">Users</p>
                        </a>
                    </div>
                    <div class="col-xs-4 col-sm-2">
                        <a href="#" class="metro-tile bg-alert">
                            <span class="metro-icon glyphicons glyphicons-headset"></span>
                            <p class="metro-title">Support</p>
                        </a>
                    </div>
                    <div class="col-xs-4 col-sm-2">
                        <a href="#" class="metro-tile bg-primary">
                            <span class="metro-icon glyphicons glyphicons-cogwheels"></span>
                            <p class="metro-title">Settings</p>
                        </a>
                    </div>
                    <div class="col-xs-4 col-sm-2">
                        <a href="#" class="metro-tile bg-warning">
                            <span class="metro-icon glyphicons glyphicons-facetime_video"></span>
                            <p class="metro-title">Videos</p>
                        </a>
                    </div>
                    <div class="col-xs-4 col-sm-2">
                        <a href="#" class="metro-tile bg-system">
                            <span class="metro-icon glyphicons glyphicons-picture"></span>
                            <p class="metro-title">Pictures</p>
                        </a>
                    </div>
                </div>
            </div>
            <!-- End: Topbar-Dropdown -->

            <!-- Start: Topbar -->
                <include:include_ecommerce_top_bar />
            <!-- End: Topbar -->

            <!-- Begin: Content -->
            <section id="content" class="table-layout animated fadeIn">

                <!-- begin: .tray-center -->
                <div class="tray tray-center p25 va-t posr">

                    <!-- create new Product panel -->
                            <include:include_admin_add_objet />
                    <!-- End create new Product panel -->

                    <!-- recent orders table -->
                    <%--
                    <div class="panel">
                        <div class="panel-menu p12 admin-form theme-primary">
                            <div class="row">
                                <div class="col-md-5">
                                    <label class="field select">
                                        <select id="filter-category" name="filter-category">
                                            <option value="0">Filter by Category</option>
                                            <option value="1">Smart Phones</option>
                                            <option value="2">Smart Watches</option>
                                            <option value="3">Notebooks</option>
                                            <option value="4">Desktops</option>
                                            <option value="5">Music Players</option>
                                        </select>
                                        <i class="arrow"></i>
                                    </label>
                                </div>
                                <div class="col-md-5">
                                    <label class="field select">
                                        <select id="filter-status" name="filter-status">
                                            <option value="0">Filter by Status</option>
                                            <option value="1">Active</option>
                                            <option value="2">Inactive</option>
                                            <option value="3">Low Stock</option>
                                            <option value="4">Out of Stock</option>
                                        </select>
                                        <i class="arrow"></i>
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label class="field select">
                                        <select id="bulk-action" name="bulk-action">
                                            <option value="0">Actions</option>
                                            <option value="1">Edit</option>
                                            <option value="2">Delete</option>
                                            <option value="3">Active</option>
                                            <option value="4">Inactive</option>
                                        </select>
                                        <i class="arrow double"></i>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body pn">
                            <table class="table admin-form theme-warning tc-checkbox-1 fs13">
                                <thead>
                                    <tr class="bg-light">
                                        <th class="text-center">Select</th>
                                        <th class="">Image</th>
                                        <th class="">Product Title</th>
                                        <th class="">SKU</th>
                                        <th class="">Price</th>
                                        <th class="">Stock</th>
                                        <th class="text-right">Status</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_1.jpg">
                                        </td>
                                        <td class="">Apple Ipod 4G - Silver</td>
                                        <td class="">#21362</td>
                                        <td class="">$215</td>
                                        <td class="">1,400</td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_2.jpg">
                                        </td>
                                        <td class="">Apple Smart Watch - 1G</td>
                                        <td class="">#15262</td>
                                        <td class="">$455</td>
                                        <td class="">2,100</td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_6.jpg">
                                        </td>
                                        <td class="">Apple Macbook 4th Gen - Silver</td>
                                        <td class="">#66362</td>
                                        <td class="">$1699</td>
                                        <td class="">6,100</td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_7.jpg">
                                        </td>
                                        <td class="">Apple Iphone 16GB - Silver</td>
                                        <td class="">#51362</td>
                                        <td class="">$1299</td>
                                        <td class="">5,200</td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_3.jpg">
                                        </td>
                                        <td class="">Apple Ipod Nano 2G - Silver</td>
                                        <td class="">#4132</td>
                                        <td class="">$995</td>
                                        <td class="">11,000</td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_4.jpg">
                                        </td>
                                        <td class="">Apple Macbook 3rd Gen - Silver</td>
                                        <td class="">#21362</td>
                                        <td class="">$1,150</td>
                                        <td class="">4,300</td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_2.jpg">
                                        </td>
                                        <td class="">Apple Smart Watch - 1G</td>
                                        <td class="">#15262</td>
                                        <td class="">$455</td>
                                        <td class="text-warning"><b>145</b>
                                        </td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-warning br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Disabled
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_5.jpg">
                                        </td>
                                        <td class="">Apple iMac 32" - Silver</td>
                                        <td class="">#21362</td>
                                        <td class="">$1299</td>
                                        <td class="text-warning"><b>180</b>
                                        </td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-warning br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Disabled
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_3.jpg">
                                        </td>
                                        <td class="">Apple Ipod Nano 2G - Silver</td>
                                        <td class="">#4132</td>
                                        <td class="">$995</td>
                                        <td class="text-danger"><b>0 - Sold Out</b>
                                        </td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-danger br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Sold Out
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_6.jpg">
                                        </td>
                                        <td class="">Apple Macbook 4th Gen - Silver</td>
                                        <td class="">#66362</td>
                                        <td class="">$1699</td>
                                        <td class="text-danger"><b>0 - Sold Out</b>
                                        </td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-danger br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Sold Out
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <label class="option block mn">
                                                <input type="checkbox" name="mobileos" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </td>
                                        <td class="w100">
                                            <img class="img-responsive mw40 ib mr10" title="user" src="assets/img/stock/products/thumb_7.jpg">
                                        </td>
                                        <td class="">Apple Iphone 16GB - Silver</td>
                                        <td class="">#51362</td>
                                        <td class="">$1299</td>
                                        <td class="text-danger"><b>0 - Sold Out</b>
                                        </td>
                                        <td class="text-right">
                                            <div class="btn-group text-right">
                                                <button type="button" class="btn btn-danger br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Sold Out
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="#">Edit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Delete</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Archive</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="#">Complete</a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="#">Pending</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Canceled</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    --%>

                    <div class="panel">
                        <include:include_admin_object_table />
                    </div>

                </div>
                <!-- end: .tray-center -->

                <!-- begin: .tray-right -->
                <%--<aside class="tray tray-right tray290 va-t pn" data-tray-height="match">

                    <!-- menu quick links -->
                    <div class="p20 admin-form">

                        <h4 class="mt5 text-muted fw500"> Filter Products</h4>

                        <hr class="short">

                        <div class="section mb15">
                            <label for="order-id" class="field prepend-icon">
                                <input type="text" name="order-id" id="order-id" class="gui-input" placeholder="Product SKU #">
                                <label for="order-id" class="field-icon"><i class="fa fa-tag"></i>
                                </label>
                            </label>
                        </div>

                        <h6 class="fw400">Price Range($)</h6>
                        <div class="section row mb15">
                            <div class="col-md-6">
                                <label for="price1" class="field prepend-icon">
                                    <input type="text" name="price1" id="price1" class="gui-input" placeholder="0">
                                    <label for="price1" class="field-icon"><i class="fa fa-usd"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="price2" class="field prepend-icon">
                                    <input type="text" name="price2" id="price2" class="gui-input" placeholder="1000">
                                    <label for="price2" class="field-icon"><i class="fa fa-usd"></i>
                                    </label>
                                </label>
                            </div>
                        </div>

                        <h6 class="fw400">Sales Date</h6>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="date1" class="field prepend-icon">
                                    <input type="text" name="date1" id="date1" class="gui-input" placeholder="01/01/15">
                                    <label for="date1" class="field-icon"><i class="fa fa-calendar"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="date2" class="field prepend-icon">
                                    <input type="text" name="date2" id="date2" class="gui-input" placeholder="01/31/15">
                                    <label for="date2" class="field-icon"><i class="fa fa-calendar"></i>
                                    </label>
                                </label>
                            </div>
                        </div>

                        <h6 class="fw400">Search Categories</h6>
                        <div class="section mb15">
                            <label class="field select">
                                <select id="filter-categories" name="filter-categories">
                                    <option value="0" selected="selected">Filter by Categories</option>
                                    <option value="1">Electronics</option>
                                    <option value="2">Software</option>
                                </select>
                                <i class="arrow double"></i>
                            </label>
                        </div>

                        <h6 class="fw400">Search Customers</h6>
                        <div class="section mb15">
                            <label class="field select">
                                <select id="filter-customers" name="filter-customers">
                                    <option value="0" selected="selected">Filter by Vendor</option>
                                    <option value="1">Michael</option>
                                    <option value="2">David</option>
                                    <option value="3">Sara</option>
                                    <option value="4">Tasha</option>
                                </select>
                                <i class="arrow double"></i>
                            </label>
                        </div>

                        <hr class="short">

                        <div class="section row">
                            <div class="col-sm-12">
                                <button class="btn btn-default btn-sm ph25" type="button">Search</button>
                                <label class="field option ml15">
                                    <input type="checkbox" name="info">
                                    <span class="checkbox"></span> <span class="text-muted">Save Search</span>
                                </label>
                            </div>
                            <div class="col-sm-7 hidden">
                                <label class="field option mt10">
                                    <input type="checkbox" name="info" checked>
                                    <span class="checkbox"></span>Save Search
                                </label>
                            </div>
                        </div>

                    </div>

                </aside>--%>
                <!-- end: .tray-right -->

            </section>
            <!-- End: Content -->

        </section>

        <!-- Start: Right Sidebar -->
        <aside id="sidebar_right" class="nano">
            <div class="sidebar_right_content nano-content">
                <div class="tab-block sidebar-block br-n">
                    <ul class="nav nav-tabs tabs-border nav-justified hidden">
                        <li class="active">
                            <a href="#sidebar-right-tab1" data-toggle="tab">Tab 1</a>
                        </li>
                        <li>
                            <a href="#sidebar-right-tab2" data-toggle="tab">Tab 2</a>
                        </li>
                        <li>
                            <a href="#sidebar-right-tab3" data-toggle="tab">Tab 3</a>
                        </li>
                    </ul>
                    <div class="tab-content br-n">
                        <div id="sidebar-right-tab1" class="tab-pane active">

                            <h5 class="title-divider text-muted mb20"> Server Statistics <span class="pull-right"> 2013 <i class="fa fa-caret-down ml5"></i> </span> </h5>
                            <div class="progress mh5">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 44%">
                                    <span class="fs11">DB Request</span>
                                </div>
                            </div>
                            <div class="progress mh5">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 84%">
                                    <span class="fs11 text-left">Server Load</span>
                                </div>
                            </div>
                            <div class="progress mh5">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 61%">
                                    <span class="fs11 text-left">Server Connections</span>
                                </div>
                            </div>

                            <h5 class="title-divider text-muted mt30 mb10">Traffic Margins</h5>
                            <div class="row">
                                <div class="col-xs-5">
                                    <h3 class="text-primary mn pl5">132</h3>
                                </div>
                                <div class="col-xs-7 text-right">
                                    <h3 class="text-success-dark mn"> <i class="fa fa-caret-up"></i> 13.2% </h3>
                                </div>
                            </div>

                            <h5 class="title-divider text-muted mt25 mb10">Database Request</h5>
                            <div class="row">
                                <div class="col-xs-5">
                                    <h3 class="text-primary mn pl5">212</h3>
                                </div>
                                <div class="col-xs-7 text-right">
                                    <h3 class="text-success-dark mn"> <i class="fa fa-caret-up"></i> 25.6% </h3>
                                </div>
                            </div>

                            <h5 class="title-divider text-muted mt25 mb10">Server Response</h5>
                            <div class="row">
                                <div class="col-xs-5">
                                    <h3 class="text-primary mn pl5">82.5</h3>
                                </div>
                                <div class="col-xs-7 text-right">
                                    <h3 class="text-danger mn"> <i class="fa fa-caret-down"></i> 17.9% </h3>
                                </div>
                            </div>

                            <h5 class="title-divider text-muted mt40 mb20"> Server Statistics <span class="pull-right text-primary fw600">USA</span> </h5>
                            <div id="sidebar-right-map" class="hide-jzoom" style="width: 100%; height: 180px;"></div>

                        </div>
                        <div id="sidebar-right-tab2" class="tab-pane"></div>
                        <div id="sidebar-right-tab3" class="tab-pane"></div>
                    </div>
                    <!-- end: .tab-content -->
                </div>
            </div>
        </aside>
        <!-- End: Right Sidebar -->

    </div>
    <!-- End: Main -->

    <!-- BEGIN: PAGE SCRIPTS -->


    <style>
        #message-table > tbody > tr.highlight > td {
            background-color: #FFFEF0;
        }
    </style>
    
    <!-- jQuery --> />" >
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/jquery/jquery-1.11.1.min.js" />" ></script>
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/jquery/jquery_ui/jquery-ui.min.js" />" ></script>

    <!-- Bootstrap -->
    <script type="text/javascript" src="<c:url value="/resources/admin/assets/js/bootstrap/bootstrap.min.js" />" ></script>

    <!-- FileUpload JS -->
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/plugins/fileupload/fileupload.js" />" ></script>
    <script type="text/javascript" src="<c:url value="/resources/admin/assets/js/bootstrap/holder.min.js" />" ></script>

    <!-- Tagmanager JS -->
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/plugins/tagsinput/tagsinput.min.js" />" ></script>

    <!-- Theme Javascript -->
    <script type="text/javascript" src="<c:url value="/resources/admin/assets/js/utility/utility.js" />" ></script>
    <script type="text/javascript" src="<c:url value="/resources/admin/assets/js/main.js" />" ></script>
    <script type="text/javascript" src="<c:url value="/resources/admin/assets/js/demo.js" />" ></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {

            "use strict";

            // Init Theme Core    
            Core.init();

            // Init Theme Core    
            Demo.init();

            // grant file-upload preview onclick functionality
            $('.fileupload-preview').on('click', function() {
                $('.btn-file > input').click();
            });

            // select dropdowns - placeholder like creation
            var selectList = $('.admin-form select');
            selectList.each(function(i, e) {
                $(e).on('change', function() {
                    if ($(e).val() == "0") $(e).addClass("empty");
                    else $(e).removeClass("empty")
                });
            });
            selectList.each(function(i, e) {
                $(e).change();
            });

            // Init tagsinput plugin
            $("input#tagsinput").tagsinput({
                tagClass: function(item) {
                    return 'label bg-primary light';
                }
            });

        });
    </script>
    <!-- END: PAGE SCRIPTS -->

    <style>

        /*demo styles*/
        body {
            min-height: 2000px;
        }
        .custom-nav-animation li {
            display: none;
        }
        .custom-nav-animation li.animated {
            display: block;
        }

        /* nav fixed settings */
        ul.tray-nav.affix {
            width: 319px;
            top: 80px;
        }
    </style>

    <!-- BEGIN: PAGE SCRIPTS -->

    <!-- Datatables -->
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/plugins/datatables/media/js/jquery.dataTables.js" />" ></script>

    <!-- Datatables Tabletools addon -->
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js" />" ></script>

    <!-- Datatables Editor addon - READ LICENSING NOT MIT  -->
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/plugins/datatables/extensions/Editor/js/dataTables.editor.js" />" ></script>

    <!-- Datatables Bootstrap Modifications  -->
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/plugins/datatables/media/js/dataTables.bootstrap.js" />" ></script>
    <script type="text/javascript" src="<c:url value="/resources/admin/vendor/plugins/datatables/extensions/Editor/js/editor.bootstrap.js" />" ></script>

    <script type="text/javascript">
        jQuery(document).ready(function() {

            "use strict";

            // Init Theme Core
            Core.init();

            // Init Theme Core
            Demo.init();

            // Init tray navigation smooth scroll
            $('.tray-nav a').smoothScroll({
                offset: -145
            });

            // Custom tray navigation animation
            setTimeout(function() {
                $('.custom-nav-animation li').each(function(i, e) {
                    var This = $(this);
                    var timer = setTimeout(function() {
                        This.addClass('animated zoomIn');
                    }, 100 * i);
                });
            }, 600);


            // Init Datatables with Tabletools Addon
            $('#datatable').dataTable({
                "aoColumnDefs": [{
                    'bSortable': false,
                    'aTargets': [-1]
                }],
                "oLanguage": {
                    "oPaginate": {
                        "sPrevious": "",
                        "sNext": ""
                    }
                },
                "iDisplayLength": 5,
                "aLengthMenu": [
                    [5, 10, 25, 50, -1],
                    [5, 10, 25, 50, "All"]
                ],
                "sDom": 't<"dt-panelfooter clearfix"ip>',
                "oTableTools": {
                    "sSwfPath": "vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
                }
            });

            $('#datatable2').dataTable({
                "aoColumnDefs": [{
                    'bSortable': false,
                    'aTargets': [-1]
                }],
                "oLanguage": {
                    "oPaginate": {
                        "sPrevious": "",
                        "sNext": ""
                    }
                },
                "iDisplayLength": 5,
                "aLengthMenu": [
                    [5, 10, 25, 50, -1],
                    [5, 10, 25, 50, "All"]
                ],
                "sDom": '<"dt-panelmenu clearfix"lfr>t<"dt-panelfooter clearfix"ip>',
                "oTableTools": {
                    "sSwfPath": "vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
                }
            });

            $('#datatable3').dataTable({
                "aoColumnDefs": [{
                    'bSortable': false,
                    'aTargets': [-1]
                }],
                "oLanguage": {
                    "oPaginate": {
                        "sPrevious": "",
                        "sNext": ""
                    }
                },
                "iDisplayLength": 5,
                "aLengthMenu": [
                    [5, 10, 25, 50, -1],
                    [5, 10, 25, 50, "All"]
                ],
                "sDom": '<"dt-panelmenu clearfix"Tfr>t<"dt-panelfooter clearfix"ip>',
                "oTableTools": {
                    "sSwfPath": "vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
                }
            });

            $('#datatable4').dataTable({
                "aoColumnDefs": [{
                    'bSortable': false,
                    'aTargets': [-1]
                }],
                "oLanguage": {
                    "oPaginate": {
                        "sPrevious": "",
                        "sNext": ""
                    }
                },
                "iDisplayLength": 5,
                "aLengthMenu": [
                    [5, 10, 25, 50, -1],
                    [5, 10, 25, 50, "All"]
                ],
                "sDom": 'T<"panel-menu dt-panelmenu"lfr><"clearfix">tip',

                "oTableTools": {
                    "sSwfPath": "vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
                }
            });

            // Multi-Column Filtering
            $('#datatable5 thead th').each(function() {
                var title = $('#datatable5 tfoot th').eq($(this).index()).text();
                $(this).html('<input type="text" class="form-control" placeholder="Search ' + title + '" />');
            });

            // DataTable
            var table5 = $('#datatable5').DataTable({
                "sDom": 't<"dt-panelfooter clearfix"ip>',
                "ordering": false
            });

            // Apply the search
            table5.columns().eq(0).each(function(colIdx) {
                $('input', table5.column(colIdx).header()).on('keyup change', function() {
                    table5
                            .column(colIdx)
                            .search(this.value)
                            .draw();
                });
            });


            // ABC FILTERING
            var table6 = $('#datatable6').DataTable({
                "sDom": 't<"dt-panelfooter clearfix"ip>',
                "ordering": false
            });

            var alphabet = $('<div class="dt-abc-filter"/>').append('<span class="abc-label">Search: </span> ');
            var columnData = table6.column(0).data();
            var bins = bin(columnData);

            $('<span class="active"/>')
                    .data('letter', '')
                    .data('match-count', columnData.length)
                    .html('None')
                    .appendTo(alphabet);

            for (var i = 0; i < 26; i++) {
                var letter = String.fromCharCode(65 + i);

                $('<span/>')
                        .data('letter', letter)
                        .data('match-count', bins[letter] || 0)
                        .addClass(!bins[letter] ? 'empty' : '')
                        .html(letter)
                        .appendTo(alphabet);
            }

            $('#datatable6').parents('.panel').find('.panel-menu').addClass('dark').html(alphabet);

            alphabet.on('click', 'span', function() {
                alphabet.find('.active').removeClass('active');
                $(this).addClass('active');

                _alphabetSearch = $(this).data('letter');
                table6.draw();
            });

            var info = $('<div class="alphabetInfo"></div>')
                    .appendTo(alphabet);

            var _alphabetSearch = '';

            $.fn.dataTable.ext.search.push(function(settings, searchData) {
                if (!_alphabetSearch) {
                    return true;
                }
                if (searchData[0].charAt(0) === _alphabetSearch) {
                    return true;
                }
                return false;
            });

            function bin(data) {
                var letter, bins = {};
                for (var i = 0, ien = data.length; i < ien; i++) {
                    letter = data[i].charAt(0).toUpperCase();

                    if (bins[letter]) {
                        bins[letter] ++;
                    } else {
                        bins[letter] = 1;
                    }
                }
                return bins;
            }

            // ROW GROUPING
            var table7 = $('#datatable7').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [2, 'asc']
                ],
                "sDom": 't<"dt-panelfooter clearfix"ip>',
                "displayLength": 25,
                "drawCallback": function(settings) {
                    var api = this.api();
                    var rows = api.rows({
                        page: 'current'
                    }).nodes();
                    var last = null;

                    api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before(
                                    '<tr class="row-label ' + group.replace(/ /g, '').toLowerCase() + '"><td colspan="5">' + group + '</td></tr>'
                            );
                            last = group;
                        }
                    });
                }
            });

            // Order by the grouping
            $('#datatable7 tbody').on('click', 'tr.row-label', function() {
                var currentOrder = table7.order()[0];
                if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                    table7.order([2, 'desc']).draw();
                } else {
                    table7.order([2, 'asc']).draw();
                }
            });


            // MISC DATATABLE HELPER FUNCTIONS

            // Add Placeholder text to datatables filter bar
            $('.dataTables_filter input').attr("placeholder", "Enter Terms...");

        });
    </script>
    <!-- END: PAGE SCRIPTS -->

</body>

</html>
