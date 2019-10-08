<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CLASS 247 - 당신의 재능을 판매하세요</title>
    <link rel="icon" href="<c:url value="/resources/user/img/favicon.png"/>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/user/css/bootstrap.min.css"/>">
    <!-- animate CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/user/css/animate.css"/>">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/user/css/owl.carousel.min.css"/>">
    <!-- themify CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/user/css/themify-icons.css"/>">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/user/css/flaticon.css"/>">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/user/css/font-awesome.min.css"/>">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap" rel="stylesheet">
    <!-- <link rel="stylesheet" href="css/magnific-popup.css"> -->
    <!-- swiper CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/user/css/slick.css"/>">
    <!-- style CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/user/css/style.css"/>">
    <style>
    .button-image{
        padding-left: 0px;
    }
    </style>
</head>

<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
    <!--::header part start::-->
    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.html"> <img src="<c:url value="resources/user/img/logo.png"/>" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center" align="center">
                                <li class="nav-item" style="margin-right:-30px; width : 23%;">
                                    <input type="text" class="form-control" placeholder='무엇을 배우고 싶으세요?'>       
                                </li>
                                <li style="margin-right : 60px;">
                                    <button class="btn btn_1 primary small button-image" type="button" ><i class="ti-search"></i></button>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.html">서비스 소개</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="cource.html" margin-top="10px">인기/추천<br>강의</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  href="cource.html" margin-top="10px">카테고리</a>
        
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 강의</a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="single-blog.html">온라인 강의</a>
                                        <a class="dropdown-item" href="elements.html">오프라인 강의</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="joinForm.do">회원가입</a>
                                </li>
                                <li class="d-none d-lg-block">
                                    <a class="btn_1" href="loginForm.do">Login</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    
    <!-- jquery plugins here-->
    <!-- jquery -->
    <script src="<c:url value="/resources/user/js/jquery-1.12.1.min.js"/>"></script>
    <!-- popper js -->
    <script src="<c:url value="/resources/user/js/popper.min.js"/>"></script>
    <!-- bootstrap js -->
    <script src="<c:url value="/resources/user/js/bootstrap.min.js"/>"></script>
    <!-- easing js -->
    <script src="<c:url value="/resources/user/js/jquery.magnific-popup.js"/>"></script>
    <!-- swiper js -->
    <script src="<c:url value="/resources/user/js/swiper.min.js"/>"></script>
    <!-- swiper js -->
    <script src="<c:url value="/resources/user/js/masonry.pkgd.js"/>"></script>
    <!-- particles js -->
    <script src="<c:url value="/resources/user/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/resources/user/js/jquery.nice-select.min.js"/>"></script>
    <!-- swiper js -->
    <script src="<c:url value="/resources/user/js/slick.min.js"/>"></script>
    <script src="<c:url value="/resources/user/js/jquery.counterup.min.js"/>"></script>
    <script src="<c:url value="/resources/user/js/waypoints.min.js"/>"></script>
    <!-- custom js -->
    <script src="<c:url value="/resources/user/js/custom.js"/>"></script>
    
    </body>
    </html>