<%--
  Created by IntelliJ IDEA.
  User: Mohamed BELMAHI
  Date: 11/01/2016
  Time: 00:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags/include/admin" %>

<!DOCTYPE html>
<html>

<head>

  <title>AdminDesigns - SHARED ON THEMELOCK.COM</title>

  <include:include_admin_head />

</head>

<body class="blank-page">

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
    <header id="topbar">
      <div class="topbar-left">
        <ol class="breadcrumb">
          <li class="crumb-active">
            <a href="dashboard.html">Dashboard</a>
          </li>
          <li class="crumb-icon">
            <a href="dashboard.html">
              <span class="glyphicon glyphicon-home"></span>
            </a>
          </li>
          <li class="crumb-link">
            <a href="index.html">Home</a>
          </li>
          <li class="crumb-trail">Dashboard</li>
        </ol>
      </div>
      <div class="topbar-right">
        <div class="ib topbar-dropdown">
          <label for="topbar-multiple" class="control-label pr10 fs11 text-muted">Reporting Period</label>
          <select id="topbar-multiple" class="hidden" multiple="multiple">
            <optgroup label="Filter By:">
              <option value="1-1">Last 30 Days</option>
              <option value="1-2" selected="selected">Last 60 Days</option>
              <option value="1-3">Last Year</option>
            </optgroup>
          </select>
        </div>
        <div class="ml15 ib va-m" id="toggle_sidemenu_r">
          <a href="#" class="pl5"> <i class="fa fa-sign-in fs22 text-primary"></i>
            <span class="badge badge-hero badge-danger">3</span>
          </a>
        </div>
      </div>
    </header>
    <!-- End: Topbar -->

    <!-- Begin: Content -->
    <section id="content" class="animated fadeIn">
      <div class="panel">

        <!-- Panel Heading -->
        <div class="panel-heading">

          <!-- Panel Icon -->
      <span class="panel-icon">
      <span class="fa fa-wrench"></span>
      </span>
          <!-- Panel Title -->
          <span class="panel-title">Example Title</span>

        </div>

        <!-- Panel Body -->
        <div class="panel-body">
          <p> Put all of your content here...</p>
        </div>

        <!-- Panel Footer -->
        <div class="panel-footer">
          <button class="btn btn-primary text-right"> Submit Btn </button>
        </div>

      </div>
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

<!-- jQuery -->
<script type="text/javascript" src="vendor/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="vendor/jquery/jquery_ui/jquery-ui.min.js"></script>

<!-- Bootstrap -->
<script type="text/javascript" src="assets/js/bootstrap/bootstrap.min.js"></script>

<!-- Theme Javascript -->
<script type="text/javascript" src="assets/js/utility/utility.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>
<script type="text/javascript" src="assets/js/demo.js"></script>
<script type="text/javascript">
  jQuery(document).ready(function() {

    "use strict";

    // Init Theme Core
    Core.init();

    // Init Theme Core
    Demo.init();

  });
</script>
<!-- END: PAGE SCRIPTS -->

</body>

</html>
