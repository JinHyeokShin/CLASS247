<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
</head>
<body class="animsition">

	<c:import url="../creator/common/cMenubar.jsp"/>
	
	<script>
		$(function() {
			console.log('${creator}');
		})
	
	</script>

<!-- 크리에이터 신청 후 승인 대기 중일 경우 -->
<c:if test="${ creator.creStatus == 'N'}">

 	<div class="page-wrapper">
	       <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                             <div class="col-md-12">
                                <div class="card" style="height:600px">
                                    <div class="card-body" align="center">
                                    	<div style="width:50%">
                                    	<br><br>
	                                    	<img src="resources/creator/images/NonCreator.jpg">
                                    	</div><br>
                                        <div class="mx-auto d-block" style="font-family:Noto Serif KR">
                                            <h1 class="text-sm-center mt-2 mb-1"> 크리에이터 센터에 오신것을 환영합니다!</h1>
                                            <h3 class="text-sm-center mt-2 mb-1"> ${ loginUser.memName}의 크리에이터 신청서는 검토 중에 있습니다. <br>
                                            										승인까지 조금만 더 기다려주세요 :) </h3>
                                        </div>
                                      	<br>
                                        <div align="center" style="font-family:Noto Serif KR">
	                                        <button type="button" class="btn btn-primary" onclick="location.href='#';">문의하기</button>
	                                        <button type="button" class="btn btn-secondary" onclick="location.href='home.do';">메인으로 돌아가기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>                       
                        </div>
                    </div>
                </div>
            </div>

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

	</c:if>
	
	
	
	<!-- 크리에이터 Status == 'Y'일 경우 -->
<c:if test="${ creator.creStatus == 'Y' }">
   <div class="page-wrapper">
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
                                                <span class="au-progress__title"></span>
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
                                                    <img class="" src="<%= request.getContextPath() %>/resources/creator/images/icon/plus.png" style="width:65px; height:65px;">
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
	</c:if>
	
</body>
</html>