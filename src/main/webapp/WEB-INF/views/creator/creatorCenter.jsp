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
    <title>Dashboard 2</title>

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

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="creatorCenter.html">
                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/logo.png" alt="Class247" />
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar1">
                <div class="account2">
                    <div class="image img-cir img-120">
                        <img src="<%= request.getContextPath() %>/resources/creator/images/icon/may.jpg" alt="Meseon Han" />
                    </div>
                    <h4 class="name">Meseon Han</h4>
                    <a href="#">Logout</a>
                </div>
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">
                        <li>
                            <a href="creNotice.html">
                            <i class="far fa-bell"></i>공지사항</a>
                        </li>
                        <li>
                            <a href="#">
                            <i class="fas fas fa-user"></i>크리에이터 정보</a>
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
                                    <a href="index.html">
                                        <i class="fab fa-flickr"></i>클래스 신청</a>
                                </li>
                                <li>
                                    <a href="index2.html">
                                        <i class="fas fa-th-large"></i>클래스 관리</a>
                                </li>
                                <li>
                                    <a href="index3.html">
                                        <i class="far fa-id-card"></i>수강생 관리</a>
                                </li>
                                <li>
                                    <a href="index4.html">
                                        <i class="fas fa-tasks"></i>리뷰 및 댓글 관리</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="creChat.html">
                                <i class="fas fa-comment-alt"></i>실시간 톡</a>
                            <span class="inbox-num">3</span>
                        </li>
                        <li>
                            <a href="#">
                            <i class="fas fa-chart-bar"></i>통계</a>x
                        </li>
                        <li>
                            <a href="#">
                            <i class="fas fa-trophy"></i>MD등록</a>
                        </li>
                        <li>
                            <a href="#">
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
                                                        <img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />
                                                    </div>
                                                    <div class="content">
                                                        <h6>Michelle Moreno</h6>
                                                        <p>Have sent a photo</p>
                                                        <span class="time">3 min ago</span>
                                                    </div>
                                                </div>
                                                <div class="mess__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-04.jpg" alt="Diane Myers" />
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
                                            <i class="zmdi zmdi-email"></i>
                                            <span class="quantity">1</span>
                                            <div class="email-dropdown js-dropdown">
                                                <div class="email__title">
                                                    <p>You have 3 New Emails</p>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, 3 min ago</span>
                                                    </div>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, Yesterday</span>
                                                    </div>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, April 12,,2018</span>
                                                    </div>
                                                </div>
                                                <div class="email__footer">
                                                    <a href="#">See all emails</a>
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

            <!-- BREADCRUMB-->
            <section class="au-breadcrumb m-t-75">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="au-breadcrumb-content">
                                    <div class="au-breadcrumb-left">
                                        <span class="au-breadcrumb-span">You are here:</span>
                                        <ul class="list-unstyled list-inline au-breadcrumb__list">
                                            <li class="list-inline-item active">
                                                <a href="#">Home</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">Dashboard</li>
                                        </ul>
                                    </div>
                                    <button class="au-btn au-btn-icon au-btn--green">
                                        <i class="zmdi zmdi-plus"></i>new class</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->

            <!-- STATISTIC-->
            <section class="statistic">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <h3 class="title-3 m-b-30">
                            <i class="fas fa-bar-chart"></i>summary
                        </h3>
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">368</h2>
                                    <span class="desc">total number of 
                                        students</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-account-o"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">2</h2>
                                    <span class="desc">current class</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-book"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                        <div class="au-progress">
                                                <span class="au-progress__title"> </span>
                                                <div class="au-progress__bar">
                                                    <div class="au-progress__inner js-progressbar-simple" role="progressbar" data-transitiongoal="78">
                                                        <span class="au-progress__value js-value"></span>
                                                    </div>
                                                </div>
                                            </div>
                                    <span class="desc">rating</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-star"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">&#8361;160,386</h2>
                                    <span class="desc">total earnings</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-money"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->

            <section>
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <h3 class="title-3 m-b-30">
                            <i class="zmdi zmdi-book"></i>my class
                        </h3>
                        <div class="row">
                            <!-- <div class="col-xl-16"> -->
                                <!-- RECENT REPORT 2-->
                                <div class="col-md-4">
                                    <div class="card">
                                        <img class="card-img-top" src="<%= request.getContextPath() %>/resources/creator/images/class-sample-01.PNG" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title mb-3">라이트룸과 포토샵으로 만드는 인생 여행 사진</h4>
                                             <p class="card-text"> 강남 : 2019-10-01 <br> 수강생 : 3명</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card">
                                      <img class="card-img-top" src="<%= request.getContextPath() %>/resources/creator/images/class-sample-02.PNG" alt="Card image cap">
                                        <div class="card-body">
                                           <h4 class="card-title mb-3">포토샵으로 손그림처럼 표현하는 소녀의 설렘</h4>
                                            <p class="card-text">홍대 : 2019-10-04 ~ 2019-10-28 <br> 수강생 : 15명</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                        <div class="card">
                                          <img class="card-img-top" src="<%= request.getContextPath() %>/resources/creator/images/class-default-01.png" alt="Card image cap">
                                            <div class="card-body" style="text-align:center;">
                                               <h4 class="card-title mb-3">새로운 클래스를 추가하세요.</h4>
                                                <p class="card-text" style="text-align:center;"> 
                                                    <img class="" src="images/icon/plus.PNG" style="width:65px; height:65px;">
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                            <!-- </div> -->
                        </div>
                    </div>
                </div>
            </section>

            <section>
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <h3 class="title-3 m-b-30">
                            <i class="fas fa-user"></i>students status
                        </h3>
                        <div class="row">
                            <div class="col-md-12">
                            <!-- DATA TABLE -->
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--md">
                                        <select class="js-select2" name="property">
                                            <option selected="selected">All Properties</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <div class="rs-select2--light rs-select2--sm">
                                        <select class="js-select2" name="time">
                                            <option selected="selected">Today</option>
                                            <option value="">3 Days</option>
                                            <option value="">1 Week</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <button class="au-btn-filter">
                                        <i class="zmdi zmdi-filter-list"></i>filters</button>
                                </div>
                                <div class="table-data__tool-right">
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="zmdi zmdi-plus"></i>add item</button>
                                    <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                        <select class="js-select2" name="type">
                                            <option selected="selected">Export</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </th>
                                            <th>profile</th>
                                            <th>name </th>
                                            <th>class</th>
                                            <th>registration</th>
                                            <th>phone</th>
                                            <th>status</th>
                                            <th>level</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>
                                                <div class="image img-cir img-40">
                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-02.jpg" alt="Cynthia Harvey" />
                                                </div> 
                                            </td>
                                            <td>한미선</td>
                                            <td>
                                                <span class="block-email">포토샵으로 손그림</span>
                                            </td>
                                            <td>09/27</td>
                                            <td>01093201234</td>
                                                <td>
                                                    <span class="status--process">수강</span>
                                                </td>
                                            <td>입문자</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
                                                        <i class="zmdi zmdi-info"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td>
                                                    <div class="image img-cir img-40">
                                                        <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-01.jpg" alt="Cynthia Harvey" />
                                                    </div> 
                                                </td>
                                                <td>신진혁</td>
                                                <td>
                                                    <span class="block-email">포토샵으로 손그림</span>
                                                </td>
                                                <td>09/27</td>
                                                <td>01093201234</td>
                                                    <td>
                                                        <span class="status--process">수강</span>
                                                    </td>
                                                <td>중급</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
                                                            <i class="zmdi zmdi-info"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>
                                                <div class="image img-cir img-40">
                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                </div> 
                                            </td>
                                            <td>이승은</td>
                                            <td>
                                                <span class="block-email">포토샵으로 손그림</span>
                                            </td>
                                            <td>09/27</td>
                                            <td>01093201234</td>
                                                <td>
                                                    <span class="status--process">수강</span>
                                                </td>
                                            <td>고급</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
                                                        <i class="zmdi zmdi-info"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>
                                                <div class="image img-cir img-40">
                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                </div> 
                                            </td>
                                            <td>김상민</td>
                                            <td>
                                                <span class="block-email">포토샵으로 손그림</span>
                                            </td>
                                            <td>09/27</td>
                                            <td>01093201234</td>
                                                <td>
                                                    <span class="status--process">수강</span>
                                                </td>
                                            <td>입문자</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Information">
                                                        <i class="zmdi zmdi-info"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Memo">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                       
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>
                                                <div class="image img-cir img-40">
                                                    <img src="<%= request.getContextPath() %>/resources/creator/images/icon/avatar-03.jpg" alt="Cynthia Harvey" />
                                                </div> 
                                            </td>                                            
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span class="block-email">lyn@example.com</span>
                                            </td>
                                            <td class="desc">iPhone X 256Gb Black</td>
                                            <td>2018-09-25 19:03</td>
                                            <td>
                                                <span class="status--denied">Denied</span>
                                            </td>
                                            <td>$1199.00</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>

                                    </tbody>
                                </table>
                            </div>
                            <!-- END DATA TABLE -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

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