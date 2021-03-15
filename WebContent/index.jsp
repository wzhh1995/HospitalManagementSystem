<!DOCTYPE html>
<html lang="en">
<head>
<title><%@include file="title.jsp"%></title>
<meta charset="utf-8">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/camera.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/camera.js"></script>
<script src="js/jquery.touchSwipe.min.js"></script>
<script>
	$(document).ready(function() {
		jQuery('.camera_wrap').camera();
	});
</script>
<script src="js/jquery.mobile.customized.min.js"></script>
</head>
<body>
	<div class="global">
		<!--header-->
		<header>
			<div>
				<div class="container">
					<div class="row">
						<article class="span12">
							<div class="navbar navbar_ clearfix">
								<div class="navbar-inner">
									<div class="clearfix">
										<div class="nav-collapse nav-collapse_">
											<ul class="nav sf-menu clearfix">
												<li class="active"><a href="index.jsp">Home</a></li>
												<li><a href="alogin.jsp">Manager</a></li>
												<li><a href="dlogin.jsp">Docter</a></li>
												<li><a href="patient.jsp">Appointment</a></li>
												<li><a href="contact.html">DoctorRegistration</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>

						</article>

						<br> <br>
						<h1 style="margin-left: 10px" class="brand">
							<a href=""></a>
						</h1>
					</div>
				</div>
			</div>
		</header>
		<section class="slider">
			<div class="camera_wrap">
				<div data-src="img/picture1.jpg">
					<div class="camera-caption fadeIn">
						<p class="title1"><%@include file="title.jsp"%>
						</p>
						<br> <a href="#">View More</a>
					</div>
				</div>
			</div>
		</section>
		<!--content-->
		
		<div hidden class="met">
			Web Development: <a class="cop" href="http://www.metamorphozis.com"></a>
		</div>
	</div>
	<img alt="" src="img/blue-1.png" width = "100%" height = "100%">
	<!--footer-->
	<footer>
		<div class="container">
			<div class="row">
				<article class="span12">
					<div class="row">
						<nav class="span6">
							<!--                                <ul>
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="abstract.jsp">Abstract</a></li>
                                    <li><a href="alogin.jsp">Manager</a></li>
                                    <li><a href="dlogin.jsp">Dev Login</a></li>
                                    <li><a href="tpalogin.jsp">TL Login</a></li>
                                    <li><a href="contact.html">Registration</a></li>
                                </ul>-->
						</nav>
						<div class="span3 offset3">
							<!--                                <p>Copyright @ Registered</p>-->
						</div>
					</div>
				</article>
			</div>
		</div>
	</footer>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>