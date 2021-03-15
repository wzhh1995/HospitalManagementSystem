<%@page import="action.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Patient Status</title>
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
												<li class="active"><a href="dhome.jsp">Home</a></li>
												<li><a href="PatientsInbox.jsp">Patients Inbox</a></li>
												<li><a href="pStatus.jsp">Patient Status</a></li>
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
			style="height: 800px; background-image: url('img/bgall2.jpg')">
			<br>
			<br>
			<div class="row">
				<article class="span4" style="color: white">
					<h5 style="color: white;">Actions</h5>
					<ol class="list1">
						<li><a style="font-size: 20px" href="dhome.jsp">Home</a></li>
						<li><a style="font-size: 20px" href="PatientsInbox.jsp">Patients Inbox</a></li>
						<li><a style="font-size: 20px" href="pStatus.jsp">Patient Status</a></li>
						<li><a style="font-size: 20px" href="index.jsp">Logout</a></li>
					</ol>
				</article>
				<article class="span8 about-box">
					<h5 style="color: white; margin-top: 10px; margin-left: -50px">Cured
						Patients</h5>
					<table style="margin-left: -210px; width: 1000px">
						<tr
							style="border: solid 1px; font-size: 20px; color: burlywood; font-family: monospace; font-weight: bold;">
							<td style="text-align: center; height: 40px">PatientId</td>
							<td style="text-align: center;">NAME</td>
							<td style="text-align: center;">AGE</td>
							<td style="text-align: center;">GENDER</td>
							<td style="text-align: center;">ASSIGNED_DATE</td>
							<td style="text-align: center;">DOCTOR</td>
							<td style="text-align: center;">CURE_DATE</td>
							<td style="text-align: center;">TREATMENT METHOD</td>
						</tr>
						<%
							String id, name, gender, doctor, adate, cdate,treatment, age = null;
							//String status = request.getParameter("status");
							HttpSession sess = request.getSession();
							String docName = sess.getAttribute("unames").toString();
							String sql = "select * from patients where status = 'Cured' and doctor='" + docName + "' ";
							Connection con = Dbcon.getCon();
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery(sql);
							while (rs.next()) {
								id = rs.getString("id");
								name = rs.getString("name");
								age = rs.getString("age");
								gender = rs.getString("gender");
								adate = rs.getString("adate");
								doctor = rs.getString("doctor");
								cdate = rs.getString("cdate");
								treatment = rs.getString("treatment");
						%>
						<tr
							style="border: solid 1px; font-size: 15px; color: white; font-family: monospace; font-weight: bold;">
							<td style="height: 20px; text-align: center"><%=id%></td>
							<td style="text-align: center" width='10%'><%=name%></td>
							<td style="text-align: center;" width='-2%'><%=age%></td>
							<td style="text-align: center;" width='-2%'><%=gender%></td>
							<td style="text-align: center;" width='12%'><%=adate%></td>
							<td style="text-align: center;" width='12%'><%=doctor%></td>
							<td style="text-align: center;" width='12%'><%=cdate%></td>
							<td style="text-align: center;" width='12%'><textarea
									readonly><%=treatment%></textarea></td>

						</tr>
						<%
							}
						%>
					</table>

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
							<!--                        <ul>
                            <li><a href="thome.jsp">Home</a></li>
                            <li><a href="affix.jsp">Affix New Bug</a></li>
                            <li><a href="buganalyse.jsp">Analyse Bug Report</a></li>
                            <li><a href="feature1.jsp">Data Reduction FS</a></li>
                            <li class="active"><a href="ired.jsp">Data Reduction IS</a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>-->
						</nav>
						<div class="span3 offset3">
							<!--                        <p>Company Name Here & copy; 2014 &bull; </p>-->
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