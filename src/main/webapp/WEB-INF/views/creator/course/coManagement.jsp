<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../common/cMenubar.jsp"/>

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

</body>
</html>