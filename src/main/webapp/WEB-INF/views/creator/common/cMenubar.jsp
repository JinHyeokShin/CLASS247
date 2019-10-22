<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">
	
	<!-- Title Page-->
    <title>CreatorCenter Menubar</title>

    <!-- Fontfaces CSS-->
    <link href="<c:url value="/resources/creator/css/font-face.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/font-awesome-4.7/css/font-awesome.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/font-awesome-5/css/fontawesome-all.min.css"/>"  rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/mdi-font/css/material-design-iconic-font.min.css"/>" rel="stylesheet" media="all">
	
	<!-- Bootstrap CSS-->
    <link href="<c:url value="/resources/creator/vendor/bootstrap-4.1/bootstrap.min.css"/>" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<c:url value="/resources/creator/vendor/animsition/animsition.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/wow/animate.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/css-hamburgers/hamburgers.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/slick/slick.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/select2/select2.min.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/perfect-scrollbar/perfect-scrollbar.css"/>" rel="stylesheet" media="all">
    <link href="<c:url value="/resources/creator/vendor/vector-map/jqvmap.min.css"/>" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<c:url value="/resources/creator/css/theme.css"/>" rel="stylesheet" media="all">
<meta charset="UTF-8">
<title>Creator Menubar</title>
</head>
<body class="animsition">

<c:if test="${ empty creator || creator.creStatus == 'N' }">
	<script>
		$(function() {
			$(".navbar-sidebar2 li a").click(function () { alert('크리에이터 승인 후 이용가능한 서비스 입니다.'); return false;});
	
		})
	</script>
</c:if>


<script>
	function checkCre() {
		var status = '${creator.creStatus}';
		if(status == 'Y') {
			alert('이미 크리에이터 승인이 완료된 크리에이터입니다.');
		}
	}
	
</script>

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="cMainView.do">
                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/logo.png" alt="Class247" />
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar1">
                <div class="account2">
                    <div class="image img-cir img-120">
                        <img src="<%= request.getContextPath() %>/resources/creator/images/icon/may.jpg" alt="Meseon Han" />
                    </div>
                    <h4 class="name">${ loginUser.memName }</h4>
                    <a href="logout.do">Logout</a>
                </div>
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fas fa-user"></i>크리에이터 
                                <span class="arrow">
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="creatorInfo.do">
                                    <i class="fas fas fa-user"></i>크리에이터 정보</a>
                                </li>
                                <li>
                                    <a href="#" onclick="checkCre();">
                                    <i class="fas fas fa-user"></i>크리에이터 신청</a>
                                </li>
                            </ul>
                        </li>
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-th-large"></i>내 클래스
                                <span class="arrow">
                                <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="courseFormView.do">
                                        <i class="fab fa-flickr"></i>클래스 신청</a>
                                </li>
                                <li>
                                    <a href="coManageView.do">
                                        <i class="fas fa-th-large"></i>클래스 관리</a>
                                </li>
                                <li>
                                    <a href="studentManage.do">
                                        <i class="far fa-id-card"></i>수강생 관리</a>
                                </li>
                                <li>
                                    <a href="index4.html">
                                        <i class="fas fa-tasks"></i>리뷰 및 댓글 관리</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="cChattingView.do">
                                <i class="fas fa-comment-alt"></i>실시간 채팅</a>
                            <span class="inbox-num">3</span>
                        </li>
                        <li>
                            <a href="#">
                            <i class="fas fa-chart-bar"></i>통계</a>
                        </li>
                        <li>
                            <a href="#">
                            <i class="fas fa-trophy"></i>MD등록</a>
                        </li>
                        <li>
                            <a href="inquiryList.do">
                                <i class="fas fa-question-circle"></i>고객센터</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
        

	
	    <!-- PAGE CONTAINER-->
        <div class="page-container2">
        <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap">
                                <form class="form-header" action="" method="POST">
                                    <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                    <button class="au-btn--submit" type="submit">
                                        <i class="zmdi zmdi-search"></i>
                                    </button>
                                </form>
                                <div class="header-button">
                                    <div class="noti__item js-item-menu" onclick="location.href='home.do'">
                                        <i class="fas fa-home"></i>
                                    </div>
                                    <div class="noti-wrap">
                                        <div class="noti__item js-item-menu">
                                            <i class="zmdi zmdi-comment-more"></i>
                                            <span class="quantity">1</span>
                                            <div class="mess-dropdown js-dropdown">
                                                <div class="mess__title">
                                                    <p>You have 2 news message</p>
                                                </div>
                                                <div class="mess__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-06.jpg" alt="Michelle Moreno" />
                                                    </div>
                                                    <div class="content">
                                                        <h6>Michelle Moreno</h6>
                                                        <p>Have sent a photo</p>
                                                        <span class="time">3 min ago</span>
                                                    </div>
                                                </div>
                                                <div class="mess__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-04.jpg" alt="Diane Myers" />
                                                    </div>
                                                    <div class="content">
                                                        <h6>Diane Myers</h6>
                                                        <p>You are now connected on message</p>
                                                        <span class="time">Yesterday</span>
                                                    </div>
                                                </div>
                                                <div class="mess__footer">
                                                    <a href="#">View all messages</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="noti__item js-item-menu">
                                            <i class="zmdi zmdi-notifications"></i>
                                            <span class="quantity">3</span>
                                            <div class="notifi-dropdown js-dropdown">
                                                <div class="notifi__title">
                                                    <p>You have 3 Notifications</p>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c1 img-cir img-40">
                                                        <i class="zmdi zmdi-email-open"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>You got a email notification</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c2 img-cir img-40">
                                                        <i class="zmdi zmdi-account-box"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>Your account has been blocked</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c3 img-cir img-40">
                                                        <i class="zmdi zmdi-file-text"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>You got a new file</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__footer">
                                                    <a href="#">All notifications</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
            <!-- END HEADER DESKTOP-->
          
            
    <!-- Jquery JS-->
    <script src="<c:url value="/resources/creator/vendor/jquery-3.2.1.min.js"/>"></script>
    <!-- Bootstrap JS-->
    <script src="<c:url value="/resources/creator/vendor/bootstrap-4.1/popper.min.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/bootstrap-4.1/bootstrap.min.js"/>"></script>
    <!-- Vendor JS       -->
    <script src="<c:url value="/resources/creator/vendor/slick/slick.min.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/wow/wow.min.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/animsition/animsition.min.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"/>">
    </script>
    <script src="<c:url value="/resources/creator/vendor/counter-up/jquery.waypoints.min.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/counter-up/jquery.counterup.min.js"/>">
    </script>
    <script src="<c:url value="/resources/creator/vendor/circle-progress/circle-progress.min.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/perfect-scrollbar/perfect-scrollbar.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/chartjs/Chart.bundle.min.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/select2/select2.min.js"/>">
    </script>
    <script src="<c:url value="/resources/creator/vendor/vector-map/jquery.vmap.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/vector-map/jquery.vmap.min.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/vector-map/jquery.vmap.sampledata.js"/>"></script>
    <script src="<c:url value="/resources/creator/vendor/vector-map/jquery.vmap.world.js"/>"></script>

    <!-- Main JS-->
    <script src="<c:url value="/resources/creator/js/main.js"/>"></script>
</body>
</html>