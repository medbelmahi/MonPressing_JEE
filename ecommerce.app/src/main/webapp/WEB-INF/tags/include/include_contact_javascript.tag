<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!-- Vendor -->
<!--[if lt IE 9]>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script src="<c:url value="/resources/vendor/jquery/jquery.js" />"></script>
<!--<![endif]-->
<script src="<c:url value="/resources/vendor/jquery.appear/jquery.appear.js" />"></script>
<script src="<c:url value="/resources/vendor/jquery.easing/jquery.easing.js" />"></script>
<script src="<c:url value="/resources/vendor/jquery-cookie/jquery-cookie.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/vendor/common/common.js" />"></script>
<script src="<c:url value="/resources/vendor/jquery.validation/jquery.validation.js" />"></script>
<script src="<c:url value="/resources/vendor/jquery.stellar/jquery.stellar.js" />"></script>
<script src="<c:url value="/resources/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.js" />"></script>
<script src="<c:url value="/resources/vendor/jquery.gmap/jquery.gmap.js" />"></script>
<script src="<c:url value="/resources/vendor/jquery.lazyload/jquery.lazyload.js" />"></script>
<script src="<c:url value="/resources/vendor/isotope/jquery.isotope.js" />"></script>
<script src="<c:url value="/resources/vendor/owl.carousel/owl.carousel.js" />"></script>
<script src="<c:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.js" />"></script>
<script src="<c:url value="/resources/vendor/vide/vide.js" />"></script>

<!-- Theme Base, Components and Settings -->
<script src="<c:url value="/resources/js/theme.js" />"></script>

<!-- Specific Page Vendor and Views -->
<script src="<c:url value="/resources/js/views/view.contact.js" />"></script>

<!-- Theme Custom -->
<script src="<c:url value="/resources/js/custom.js" />"></script>

<!-- Theme Initialization Files -->
<script src="<c:url value="/resources/js/theme.init.js" />"></script>

<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script>

	/*
	Map Settings

		Find the Latitude and Longitude of your address:
			- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
			- http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude/

	*/

	// Map Markers
	var mapMarkers = [{
		address: "Casablanca, Riad Oulfa",
		html: "<strong>Mon Pressing</strong><br>Riad Oulfa,18 Imm 3",
		icon: {
			image: src="<c:url value="/resources/img/pin.png" />",
			iconsize: [26, 46],
			iconanchor: [12, 46]
		},
		popup: true
	}];

	// Map Initial Location
	var initLatitude = 33.5553389;
	var initLongitude = -7.7008664;

	// Map Extended Settings
	var mapSettings = {
		controls: {
			draggable: (($.browser.mobile) ? false : true),
			panControl: true,
			zoomControl: true,
			mapTypeControl: true,
			scaleControl: true,
			streetViewControl: true,
			overviewMapControl: true
		},
		scrollwheel: false,
		markers: mapMarkers,
		latitude: initLatitude,
		longitude: initLongitude,
		zoom: 16
	};

	var map = $("#googlemaps").gMap(mapSettings);

	// Map Center At
	var mapCenterAt = function(options, e) {
		e.preventDefault();
		$("#googlemaps").gMap("centerAt", options);
	}

</script>

<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
<script type="text/javascript">

	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-12345678-1']);
	_gaq.push(['_trackPageview']);

	(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();

</script>
 -->