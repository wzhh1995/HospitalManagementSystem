
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>AD</title>
<meta charset="utf-8">

<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="css/touchTouch.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script>
	$(window).load(function() {
		// Initialize the gallery
		$('.thumb-pad5 figure a').touchTouch();
	});
</script>

</head>
<body>
	<div class="global">
		<header class="margBot1 margBrand">
			<div class="bg">
				<div class="container">
					<div class="row">
						<article class="span12">
							<div class="navbar navbar_ clearfix marg">
								<div class="navbar-inner">
									<div class="clearfix">
										<div class="nav-collapse nav-collapse_">
											<ul class="nav sf-menu clearfix">
												<li class="active"><a href="ahome.jsp">Home</a></li>
												<li><a href="approve.jsp">Recruit Doctor</a></li>
												<li><a href="feature1.jsp">Distribute Task</a></li>
												<li><a href="trace.jsp">Trace History</a></li>
												<li><a href="index.jsp">Logout</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<center>
								<h1 class="brand"
									style="margin-left: -30px; color: white; font-size: 30px"><%@include
										file="title.jsp"%>
								</h1>
							</center>
						</article>
					</div>
				</div>
			</div>
		</header>
		<!--content-->
		<div class="container padBot"
			style="height: 600px; background-image: url('img/bgall2.jpg')">
			<br>
			<br>
			<div class="row" style="margin-left: 20px">
				<article class="span4" style="color: white;">
					<h5>Actions</h5>

					<ol class="list1">
						<li class="active"><a style="font-size: 20px"
							href="ahome.jsp">Home</a></li>
						<li><a style="font-size: 20px" href="approve.jsp">Recruit
								Doctor</a></li>
						<li><a style="font-size: 20px" href="feature1.jsp">Distribute Task</a></li>
						<li><a style="font-size: 20px" href="trace.jsp">Trace
								History</a></li>
						<li><a style="font-size: 20px" href="history1.jsp">PATIENT_STATUS</a></li>
						<li><a style="font-size: 20px" href="index.jsp">Logout</a></li>
					</ol>
				</article>

				<%
					String query = request.getQueryString();
					String new1 = query.replace("%20", " ");
					String am = null;
					String ar[] = new1.split(",");
					String id = ar[0];
					String sumy = ar[1];
					String domain = ar[2];
					String sql = "select * from doctor where domain='" + domain + "' and status='Activated'";
					Connection con = Dbcon.getCon();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(sql);
				%>

				<style>
					label {
						font-family: monospace;
						color: white;
						font-weight: 25px;
					}
				</style>

				<article class="span8 about-box"
					style="margin-left: 350px; margin-top: -200px">
					<h5 style="margin-left: -30px">Assign Doctor</h5>

					<form action="updatedoc" method="post">
						<fieldset>
							<div class="form-div-1">
								<label>ID</label> <input type="text" value="<%=id%>"
									name="id"> <br>
							</div>
							<div class="form-div-1">
								<label>Summary</label> <input type="text" value="<%=sumy%>"
									name="sum"> <br>
							</div>
							<div class="form-div-2">
								<label>Department</label> <input type="text" value="<%=domain%>"
									name="product"> <br>
							</div>
							<div class="form-div-3">
								<label>Assign Doctor</label> <select name="doc"
									style="margin-top: 0px;">
									<option value="-1">Assign Docter</option>
									<%
										while (rs.next()) {
										am = rs.getString("name");
									%>
									<option value="<%=am%>"><%=am%></option>
									<%
										}
									%>
								</select><br>
							</div>
						</fieldset>
						<input type="submit" value="" class="btn btn-primary btn2"
							style="margin-left: 73px; width: 95px; background-image: url('img/sub.png')" />
					</form>
				</article>
			</div>
		</div>
		<div hidden class="met">
			Web Development: <a class="cop" href="http://www.metamorphozis.com">Free
				html5 Templates</a>
		</div>
	</div>
	<!--footer-->
	<footer>
		<div class="container">
			<div class="row">
				<article class="span12">
					<div class="row">
						<nav class="span6">
							<!--                                <ul>
                                    <li><a href="thome.jsp">Home</a></li>
                                    <li class="active"><a href="affix.jsp">Affix New Bug</a></li>
                                    <li><a href="buganalyse.jsp">Analyse Bug Report</a></li>
                                    <li><a href="dred.jsp">Data Reduction FS</a></li>
                                    <li><a href="ired.jsp">Data Reduction IS</a></li>
                                    <li><a href="index.jsp">Logout</a></li>
                                </ul>-->
						</nav>
						<div class="span3 offset3">
							<!--                                <p>Company Name Here &copy; 2014 &bull; </p>-->
						</div>
					</div>
				</article>
			</div>
		</div>
	</footer>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script>
		$('.thumbnail figure a').hover(function() {
			$(this).stop().animate({
				opacity : 0.7
			}, 350, "easeOutSine");
		}, function() {
			$(this).stop().animate({
				opacity : 1
			}, 350, "easeOutSine");
		})
		$('.list1 li a').hover(function() {
			$(this).parent('li').stop().css({
				'color' : '#6b9157'
			});
			$(this).stop().css({
				'color' : '#6b9157'
			});
		}, function() {
			$(this).parent('li').stop().css({
				'color' : '#de592f'
			});
			$(this).stop().css({
				'color' : '#de592f'
			});
		})
	</script>
</body>

</html>