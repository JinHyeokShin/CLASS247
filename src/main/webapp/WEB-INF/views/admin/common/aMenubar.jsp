<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Dashboard</title>


<!-- Fontfaces CSS-->
<link href="<c:url value="/resources/admin/css/font-face.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/admin/vendor/font-awesome-4.7/css/font-awesome.min.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/admin/vendor/font-awesome-5/css/fontawesome-all.min.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/admin/vendor/mdi-font/css/material-design-iconic-font.min.css"/>"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link
	href="<c:url value="/resources/admin/vendor/bootstrap-4.1/bootstrap.min.css"/>"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link
	href="<c:url value="/resources/admin/vendor/animsition/animsition.min.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"/>"
	rel="stylesheet" media="all">
<link href="<c:url value="/resources/admin/vendor/wow/animate.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/admin/vendor/css-hamburgers/hamburgers.min.css"/>"
	rel="stylesheet" media="all">
<link href="<c:url value="/resources/admin/vendor/slick/slick.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/admin/vendor/select2/select2.min.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.css"/>"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="<c:url value="/resources/admin/css/theme.css"/>"
	rel="stylesheet" media="all">




</head>
<body>

	<aside class="menu-sidebar d-none d-lg-block">
		<div class="logo">
			 <a href="adminMain.do">
	               <img src="<%= request.getContextPath() %>/resources/creator/images/icon/class247logo.png" alt="Class247" />
             </a>
		</div>
		<div class="menu-sidebar__content js-scrollbar1">
			<nav class="navbar-sidebar">
				<ul class="list-unstyled navbar__list">
					<li class="has-sub"><a class="js-arrow" href="#"> Member
					</a>
						<ul class="list-unstyled navbar__sub-list js-sub-list">
							<li><a href="aMemberList.do">User</a></li>
							<li><a href="aCreatorList.do">Creator</a></li>
							<li><a href="aAwaitCreatorList.do">Await
									Creator</a></li>
							<li><a href="aBlackList.do">Black List</a></li>
						</ul></li>
					<li class="has-sub"><a class="js-arrow" href="#"> Class
					</a>
					<ul class="list-unstyled navbar__sub-list js-sub-list">
							<li><a href="aCourseList.do">Class</a></li>
							<li><a href="aAwaitCourseList.do">Await</a></li>
							

						</ul>
					</li>
					<li class="has-sub"><a class="js-arrow" href="#"> Board
					</a>
						<ul class="list-unstyled navbar__sub-list js-sub-list">
							<li><a href="aNoticeList.do">Notice</a></li>
							<li><a href="aFAQList.do">FAQ</a></li>
						</ul></li>

					<li><a href="adminInquriyList.do">Iquired
					</a></li>

					<li class="has-sub"><a class="js-arrow" href="#">Payment
					</a>
						<ul class="list-unstyled navbar__sub-list js-sub-list">
							<li><a href="aPayment.do">Payment</a></li>
							<li><a href="aPower.do">POWER</a></li>
							<li><a href="aDelivery.do">Delivery</a></li>
						</ul></li>
					<li class="has-sub"><a class="js-arrow" href="#"> EVENT
					</a>
						<ul class="list-unstyled navbar__sub-list js-sub-list">
							<li><a href="aCoupon.do">COUPONE</a></li>
							<!-- <li><a href="aFAQList.do">LOGO</a></li> -->
						</ul></li>
						
					<li class="has-sub"><a class="js-arrow" href="#"> STATS
					</a>
						<ul class="list-unstyled navbar__sub-list js-sub-list">
							<li><a href="aAPeceipt.do">전체 결산</a></li>
							<li><a href="aPeceipt.do">월말결산</a></li>
						</ul></li>
					
				</ul>
			</nav>
		</div>
	</aside>

	<div class="page-container">
		<!-- HEADER DESKTOP-->
		<header class="header-desktop">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="header-wrap">
						
						<div class="header-button">

										<div class="mess__item">
											<button onclick="location.href='home.do'" class="btn btn-outline-primary"><i class="fa fa-star">HOME</i></button>
											
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											
											<c:if test="${empty checkLogger }">
												<button onclick="location.href='logger.do'" class="btn btn-outline-success"><i class="fa fa-magic">업데이트</i></button>
											</c:if>
											<c:if test="${!empty checkLogger }">
												<button class="btn btn-outline-success" disabled><i class="fa fa-magic">업데이트 완료</i></button>
												
											</c:if>
										</div>
										
	
						</div>
					</div>
				</div>
			</div>
			
		</header>
		<!-- HEADER DESKTOP-->
	</div>

	<!-- PAGE CONTAINER-->








</body>
</html>