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
<style>
	.navbar-sidebar2 .navbar__list li.active > a{
		color:#555;
	}
	
		.navbar-sidebar2 .navbar__list li.active > a:hover{
		color:#007bff;
	}
</style>
</head>
<body class="animsition">

<c:if test="${ empty creator || creator.creStatus == 'N' || creator.creStatus == 'R'}">
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
	               <img src="<%= request.getContextPath() %>/resources/creator/images/icon/class247logo.png" alt="Class247" />
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar1">
                <div class="account2">
                    <div class="image img-cir img-120 creProfile">
                    <c:if test="${ !empty creator.creNum }">
	                    <img id="creProfile" class="creProfileImg" src="<%= request.getContextPath() %>/resources/creator/creatorImages/${creProfile}" alt="Class247" />
	                </c:if>
	                <c:if test="${ empty creator.creNum }">
	                	<img id="creProfile" src="<%= request.getContextPath() %>/resources/creator/creatorImages/basic.jpg">
	                </c:if>
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
                                    <i class="fas fas fa-user"></i>크리에이터 정보 수정</a>
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
                            </ul>
                        </li>
                        <li>
                            <a href="cChattingView.do">
                                <i class="fas fa-comment-alt"></i>1:1 채팅문의</a>
                            
                        </li>
                        <li>
                            <a href="editor.do">
                            <i class="fas fa-chart-bar"></i>통계</a>
                        </li>
                        <li>
                            <a href="powerLink.do">
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
                                   
                                </form>
                                <div class="header-button">
                                    <div class="noti__item js-item-menu" onclick="location.href='home.do'">
                                        <i class="fas fa-home"></i>
                                    </div>
                                    <div class="noti-wrap">
                                        <div class="noti__item js-item-menu" onclick="location.href='cChattingView.do'">
                                            <i class="zmdi zmdi-comment-more"></i>
                                        </div>
                                        <div class="noti__item" onclick="location.href='inquiryList.do'">
                                            <i class="fas fa-question-circle"></i>
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